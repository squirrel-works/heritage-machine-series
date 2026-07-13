# ADR-0007 – Provenance and Evidence Tracking System  
  
## Title  

Implement a formal provenance system for all assets, measurements, claims, and chapters using a database-backed model.  
  
## Context  

The project text defines a provenance system inspired by PLM/CM/DAM practices, with contributors, sources, assets, measurements, procedures, claims, chapters, and typed relationships (supports, derived_from, validates, illustrates, etc.).  
  
## Decision  

- All technical objects (claims, measurements, figures, CAD, procedures, chapters) will have:  
  - Stable IDs (human-friendly plus UUID).  
  - Recorded evidence level and source(s).  
  - Relationships expressing how they support or depend on each other.  
- Provenance is handled by a canonical database plus a graph projection for relationship queries; Git tracks files, the DB tracks engineering objects.  
  
## Consequences  

- Every published spec or figure can be traced back to measurements, instruments, calibration, and sources.  
- Release tooling can detect missing provenance, claims without evidence, or measurements taken with expired calibration.  
- Complexity is higher than a doc-only project, but maintainability and auditability are significantly improved.  
  