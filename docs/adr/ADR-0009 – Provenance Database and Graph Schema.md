# ADR-0009 – Provenance Database and Graph Schema  
  
## Title  

Define the PostgreSQL and Apache AGE schemas for the Heritage Machine Series provenance system.  
  
## Context  

The project charter specifies a formal provenance system inspired by PLM/CM/DAM practices, with entities such as contributors, sources, assets, measurements, procedures, claims, and chapters, plus typed relationships (supports, refutes, derived_from, validates, illustrates, calibrates, etc.). It also calls for a canonical database in PostgreSQL with a graph projection (via Apache AGE or similar) for relationship queries.  
  
## Decision  

We will implement a single canonical data model in PostgreSQL, and expose a property-graph view of the same data using Apache AGE. The relational schema is authoritative; the graph schema is a projection optimized for traversals and impact analysis.  
  
### PostgreSQL Relational Schema (Core Tables)  
  
**machines**  

- id (UUID, PK)  
- key (TEXT, unique, e.g. `craftsman-113241680`)  
- manufacturer (TEXT)  
- model_number (TEXT)  
- description (TEXT)  
- created_at (TIMESTAMPTZ)  
- updated_at (TIMESTAMPTZ)  
  
**contributors**  

- id (UUID, PK)  
- name (TEXT)  
- affiliation (TEXT)  
- contact (TEXT)  
- role (TEXT)  
- created_at (TIMESTAMPTZ)  
  
**sources**  

- id (UUID, PK)  
- type (ENUM: `manual`, `parts_list`, `standard`, `catalog`, `publication`, `forum`, `other`)  
- title (TEXT)  
- publisher (TEXT)  
- publication_date (DATE)  
- url (TEXT)  
- source_priority (INT)  -- aligns with ADR-0002 hierarchy  
- notes (TEXT)  
- created_at (TIMESTAMPTZ)  
  
**assets**  (files, figures, CAD, photos, etc.)  

- id (UUID, PK)  
- machine_id (UUID, FK -> machines)  
- type (ENUM: `photo`, `cad`, `drawing`, `measurement_file`, `diagram`, `template`, `text_fragment`)  
- path (TEXT)  -- repository path  
- hash (TEXT)  -- content hash for integrity  
- source_id (UUID, FK -> sources, nullable)  
- created_by (UUID, FK -> contributors)  
- created_at (TIMESTAMPTZ)  
- evidence_level (ENUM: `A`, `B`, `C`, `D`, `E`)  
- notes (TEXT)  
  
**chapters**  

- id (UUID, PK)  
- machine_id (UUID, FK -> machines)  
- volume (INT)  
- chapter_number (INT)  
- slug (TEXT)  
- title (TEXT)  
- status (ENUM: `draft`, `review`, `published`)  
- created_at (TIMESTAMPTZ)  
- updated_at (TIMESTAMPTZ)  
  
**claims**  

- id (UUID, PK)  
- machine_id (UUID, FK -> machines)  
- chapter_id (UUID, FK -> chapters)  
- text (TEXT)  
- evidence_level (ENUM: `A`, `B`, `C`, `D`, `E`)  
- confidence (REAL)  
- status (ENUM: `proposed`, `verified`, `conflicted`, `deprecated`)  
- created_by (UUID, FK -> contributors)  
- created_at (TIMESTAMPTZ)  
- updated_at (TIMESTAMPTZ)  
  
**instruments**  

- id (UUID, PK)  
- type (TEXT)  -- e.g. `micrometer`, `dial_indicator`  
- manufacturer (TEXT)  
- model (TEXT)  
- serial_number (TEXT)  
- calibration_status (ENUM: `in_date`, `expired`)  
- last_calibrated_at (DATE)  
- notes (TEXT)  
  
**procedures**  

- id (UUID, PK)  
- machine_id (UUID, FK -> machines)  
- name (TEXT)  
- slug (TEXT)  
- description (TEXT)  
- chapter_id (UUID, FK -> chapters, nullable)  
- evidence_level (ENUM: `A`, `B`, `C`, `D`, `E`)  
- status (ENUM: `draft`, `verified`, `deprecated`)  
- created_at (TIMESTAMPTZ)  
  
**measurements**  

- id (UUID, PK)  
- machine_id (UUID, FK -> machines)  
- asset_id (UUID, FK -> assets, nullable)  
- procedure_id (UUID, FK -> procedures, nullable)  
- instrument_id (UUID, FK -> instruments)  
- quantity (TEXT)  -- e.g. `arbor_runout`  
- value (DOUBLE PRECISION)  
- unit (TEXT)      -- e.g. `inch`  
- uncertainty (DOUBLE PRECISION)  
- taken_at (TIMESTAMPTZ)  
- taken_by (UUID, FK -> contributors)  
  
**relationships**  

- id (UUID, PK)  
- from_type (ENUM: `machine`, `chapter`, `claim`, `measurement`, `procedure`, `asset`, `source`, `instrument`)  
- from_id (UUID)  
- to_type (ENUM: same as from_type)  
- to_id (UUID)  
- relation_type (ENUM: `supports`, `refutes`, `derived_from`, `validates`, `illustrates`, `calibrates`, `contains`, `uses`, `measures`)  
- strength (REAL, nullable)  
- source_id (UUID, FK -> sources, nullable)  
- created_at (TIMESTAMPTZ)  
  
This schema is intentionally normalized around machines and chapters, with claims as the atomic technical statements, and measurements/procedures providing empirical and procedural backing, all tied together via typed relationships.  
  
### Apache AGE Graph Schema (Vertices and Edges)  
  
We will define a single AGE graph (e.g., `heritage_graph`) with vertex labels corresponding to the core entities and edge labels corresponding to the relationship types.  
  
**Vertex labels**  

- `Machine`      (from machines)  
- `Contributor`  (from contributors)  
- `Source`       (from sources)  
- `Asset`        (from assets)  
- `Chapter`      (from chapters)  
- `Claim`        (from claims)  
- `Instrument`   (from instruments)  
- `Procedure`    (from procedures)  
- `Measurement`  (from measurements)  
  
Each vertex will carry a subset of the relational columns as properties (e.g., `key`, `manufacturer` on Machine; `title`, `type`, `publication_date` on Source; `evidence_level`, `confidence` on Claim).  
  
**Edge labels** (mapped from relationships.relation_type)  

- `SUPPORTS`      – Source/Measurement/Asset/Procedure/Claim -> Claim  
- `REFUTES`       – Source/Measurement/Claim -> Claim  
- `DERIVED_FROM`  – Claim -> Claim/Measurement/Source  
- `VALIDATES`     – Measurement -> Claim  
- `ILLUSTRATES`   – Asset -> Claim/Procedure/Chapter  
- `CALIBRATES`    – Instrument -> Measurement  
- `CONTAINS`      – Chapter -> Claim/Procedure/Measurement/Asset  
- `USES`          – Procedure -> Instrument/Asset  
- `MEASURES`      – Measurement -> Machine/Asset  
  
Edges will be generated from the `relationships` table by casting `from_type`/`to_type` into vertex labels and `relation_type` into edge labels. This keeps the relational model as the single source of truth while enabling graph queries for impact analysis, provenance tracing, and “what supports this claim?” traversals.  
  
## Consequences  

- The PostgreSQL schema cleanly represents machines, chapters, claims, sources, measurements, procedures, instruments, and relationships, which aligns directly with the provenance model described in the project text.  
- Apache AGE provides a graph view over the same data, enabling complex provenance and dependency queries (e.g., “find all measurements that validate claims in Chapter 11 that depend on Source X”).  
- Complexity is higher than a simple document-only repo, but auditability, traceability, and the ability to reason about the impact of changing or invalidating sources are significantly improved.  
- The schema is extensible to additional machines and future volumes without structural changes, supporting the series-wide scope of the Heritage Machine Series.
