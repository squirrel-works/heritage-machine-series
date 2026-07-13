# Decision Ledger

Heritage Machine Series
HMS-DEC Series

Version: 1.0
Status: Authoritative

---

## HMS-DEC-0001

**Decision ID:** HMS-DEC-0001

**Decision Statement:**
The project is named "The Heritage Machine Series."

**Transcript Evidence:**
"name it The Heritage Machine Series" — User instruction.
ChatGPT confirmed: "I like that direction. 'The Heritage Machine Series'
establishes a recognizable identity while leaving room for future volumes."

**Dependencies:** None

**Affected Files:**
- README.md
- PROJECT.md
- All manuscript frontmatter

**Related Decisions:** HMS-DEC-0002, HMS-DEC-0003

**Status:** Accepted

**Transcript Location:** Section — "name it The Heritage Machine Series,
modify for an engineering reference, and generate the folder/file structure"

---

## HMS-DEC-0002

**Decision ID:** HMS-DEC-0002

**Decision Statement:**
The series subtitle is "Engineering Reference Library for Classic Machinery."

**Transcript Evidence:**
"'The Heritage Machine Series' — Engineering Reference Library for
Classic Machinery — This makes it clear that the series is intended as
a technical reference, not just a collection of restoration guides."

**Dependencies:** HMS-DEC-0001

**Affected Files:**
- README.md
- All cover pages

**Related Decisions:** HMS-DEC-0001, HMS-DEC-0010

**Status:** Accepted

**Transcript Location:** Section — Repository Structure generation response.

---

## HMS-DEC-0003

**Decision ID:** HMS-DEC-0003

**Decision Statement:**
The project is an engineering reference, NOT an owner's manual and NOT
a restoration blog.

**Transcript Evidence:**
"Rather than writing a book, I think we should write an engineering
reference. Those are different. A book is read. A reference is consulted."
Also: "Do not build a replacement owner's manual. Build an engineering
reference."

**Dependencies:** HMS-DEC-0001

**Affected Files:**
- PROJECT.md
- STYLE_GUIDE.md
- AI_PROJECT_PROMPT.md
- All manuscript volumes

**Related Decisions:** HMS-DEC-0001, HMS-DEC-0002, HMS-DEC-0011

**Status:** Accepted

**Transcript Location:** Multiple — "I would also add one thing we have
not discussed" section and legal guidance section.

---

## HMS-DEC-0004

**Decision ID:** HMS-DEC-0004

**Decision Statement:**
PostgreSQL is the canonical database for the provenance and knowledge
system.

**Transcript Evidence:**
"I would recommend PostgreSQL 18. Why PostgreSQL? ACID compliant,
Excellent JSON support, Full text search, UUID support, Recursive
queries..."
Also confirmed in revised architecture: "PostgreSQL — Canonical Database"

**Dependencies:** None

**Affected Files:**
- database/schema/
- database/migrations/
- docs/architecture/
- All ADRs relating to data

**Related Decisions:** HMS-DEC-0005, HMS-DEC-0006

**Status:** Accepted

**Transcript Location:** Section — "now I need you to generate a
provenance system using an appropriate SQL database"

---

## HMS-DEC-0005

**Decision ID:** HMS-DEC-0005

**Decision Statement:**
The knowledge graph is implemented as a graph projection layered over
PostgreSQL using Apache AGE, NOT as a separate graph database.

**Transcript Evidence:**
"I would implement this using PostgreSQL + Apache AGE rather than
PostgreSQL alone. Apache AGE is a graph extension for PostgreSQL...
You do not need a separate graph database such as Neo4j, and you avoid
synchronizing two different data stores."

**Dependencies:** HMS-DEC-0004

**Affected Files:**
- database/schema/008_graph.sql
- docs/architecture/graph-model.md

**Related Decisions:** HMS-DEC-0004, HMS-DEC-0006

**Status:** Accepted

**Transcript Location:** Section — "Why This Is Better" in knowledge
graph discussion.

---

## HMS-DEC-0006

**Decision ID:** HMS-DEC-0006

**Decision Statement:**
PostgreSQL is the System of Record. The graph is a projection over it,
never the authoritative data store.

**Transcript Evidence:**
"The database hierarchy should be: PostgreSQL → Canonical Data →
Graph Projection → API → Website → PDF"
"The graph should never become the authoritative data store."

**Dependencies:** HMS-DEC-0004, HMS-DEC-0005

**Affected Files:**
- database/schema/
- docs/architecture/data-model.md
- docs/architecture/graph-model.md

**Related Decisions:** HMS-DEC-0004, HMS-DEC-0005

**Status:** Accepted

**Transcript Location:** Section — "What I Would Change" (double-check pass).

---

## HMS-DEC-0007

**Decision ID:** HMS-DEC-0007

**Decision Statement:**
Evidence is classified into five levels: A (Factory), B (Engineering),
C (Measurement), D (Community), E (Experimental).

**Transcript Evidence:**
Evidence table appears twice: first in editorial principles section,
then in AI project prompt. Both state:
"A — Factory documentation or manufacturer specification
B — Supported by engineering analysis or industry standards
C — Verified through hands-on testing
D — Community consensus with multiple independent sources
E — Author opinion or experimental technique"

**Dependencies:** None

**Affected Files:**
- standards/evidence_levels.md
- STYLE_GUIDE.md
- AI_PROJECT_PROMPT.md
- All manuscript chapters

**Related Decisions:** HMS-DEC-0011

**Status:** Accepted

**Transcript Location:** Section — "Evidence Classification" in Project
Charter and AI Project Prompt.

---

## HMS-DEC-0008

**Decision ID:** HMS-DEC-0008

**Decision Statement:**
Primary linear unit is inch. Secondary equivalent is millimeter.
Angles in degrees. Torque in in·lbf and ft·lbf. Alignment precision
0.001 in. Runout precision 0.0001 in. Angular precision 0.01°.

**Transcript Evidence:**
"Primary linear unit: inch. Secondary metric equivalent: millimeter.
Angles: degrees. Torque: in·lbf and ft·lbf."
"Precision values will use: 0.001 in for alignment, 0.0001 in for
runout, 0.01° for angular measurements."

**Dependencies:** None

**Affected Files:**
- standards/units.md
- STYLE_GUIDE.md
- AI_PROJECT_PROMPT.md
- All measurement records

**Related Decisions:** HMS-DEC-0007

**Status:** Accepted

**Transcript Location:** Section — "Units and Conventions" in Project Charter.

---

## HMS-DEC-0009

**Decision ID:** HMS-DEC-0009

**Decision Statement:**
Documentation is authored in Markdown. Output formats are PDF, HTML,
and EPUB (DOCX optional). Source artwork in SVG.

**Transcript Evidence:**
"Open source workflow. Keep everything in Markdown with source artwork
in SVG so the manual can be regenerated into PDF, HTML, or EPUB without
losing fidelity."
AI Project Prompt: "Output formats: Markdown, PDF, HTML, DOCX (optional)"

**Dependencies:** None

**Affected Files:**
- scripts/build/
- .github/workflows/build-pdf.yml
- All manuscript files

**Related Decisions:** HMS-DEC-0020

**Status:** Accepted

**Transcript Location:** Section — "First Milestone" and AI Project Prompt.

---

## HMS-DEC-0010

**Decision ID:** HMS-DEC-0010

**Decision Statement:**
The repository structure uses a top-level series/ directory containing
machine-specific subdirectories (e.g., series/craftsman-113241680/).
Shared assets, standards, governance, bibliography, scripts, and docs
live at the repository root level.

**Transcript Evidence:**
Full repository tree provided:
"heritage-machine-series/
├── README.md ... ├── series/
│   └── craftsman-113241680/ ..."

**Dependencies:** HMS-DEC-0001

**Affected Files:**
- All repository folders and files

**Related Decisions:** HMS-DEC-0001, HMS-DEC-0021

**Status:** Accepted

**Transcript Location:** Section — "Repository Structure" in naming/structure
response.

---

## HMS-DEC-0011

**Decision ID:** HMS-DEC-0011

**Decision Statement:**
The work is organized as an engineering reference with self-contained
sections, not as a narrative book. Each topic section must contain:
Purpose, Background, Specifications, Analysis, Procedure, Inspection
Criteria, Failure Modes, Verification, Evidence Level, References,
Revision Notes.

**Transcript Evidence:**
"Each topic should be independently useful and answer a specific technical
question. Every section should include: Purpose, Background, Specifications,
Analysis, Procedure, Inspection Criteria, Failure Modes, Verification,
Evidence Level, References, Revision Notes."

**Dependencies:** HMS-DEC-0003

**Affected Files:**
- STYLE_GUIDE.md
- standards/
- All manuscript chapters

**Related Decisions:** HMS-DEC-0003, HMS-DEC-0007

**Status:** Accepted

**Transcript Location:** Section — "Engineering Reference Philosophy."

---

## HMS-DEC-0012

**Decision ID:** HMS-DEC-0012

**Decision Statement:**
The project includes an Engineering Data Package (EDP) for each machine
volume containing: complete machine specifications, bearing cross-reference
tables, fastener inventory, material specifications, paint color matches,
lubricant compatibility tables, electrical schematics, CAD models,
dimensioned drawings, inspection reports, calibration records, and
revision history.

**Transcript Evidence:**
"I would add an Engineering Data Package (EDP) to each machine volume.
This would contain: Complete machine specifications. Bearing cross-reference
tables. Fastener inventory. Material specifications (where known)..."

**Dependencies:** HMS-DEC-0010

**Affected Files:**
- series/craftsman-113241680/SPECIFICATIONS.md
- series/craftsman-113241680/BEARINGS.csv
- series/craftsman-113241680/FASTENERS.csv
- series/craftsman-113241680/LUBRICANTS.csv
- series/craftsman-113241680/engineering/

**Related Decisions:** HMS-DEC-0010, HMS-DEC-0004

**Status:** Accepted

**Transcript Location:** Section — "One Structural Addition" in Engineering
Reference Philosophy.

---

## HMS-DEC-0013

**Decision ID:** HMS-DEC-0013

**Decision Statement:**
Governance is a first-class project requirement. A dedicated GOVERNANCE/
directory contains copyright, trademark, attribution, sourcing, image,
licensing, disclaimer, legal review checklist, and fair use policies.

**Transcript Evidence:**
"The key is to treat legal compliance as a first-class engineering
requirement, not as an afterthought. I would create a dedicated governance
section in the repository."
Full GOVERNANCE/ directory listed.

**Dependencies:** None

**Affected Files:**
- GOVERNANCE/COPYRIGHT_POLICY.md
- GOVERNANCE/TRADEMARK_POLICY.md
- GOVERNANCE/ATTRIBUTION_POLICY.md
- GOVERNANCE/SOURCING_POLICY.md
- GOVERNANCE/IMAGE_POLICY.md
- GOVERNANCE/LICENSES.md
- GOVERNANCE/DISCLAIMER.md
- GOVERNANCE/LEGAL_REVIEW_CHECKLIST.md
- GOVERNANCE/FAIR_USE_GUIDELINES.md

**Related Decisions:** HMS-DEC-0014, HMS-DEC-0015, HMS-DEC-0016

**Status:** Accepted

**Transcript Location:** Section — "how do we incorporate these into the
project?"

---

## HMS-DEC-0014

**Decision ID:** HMS-DEC-0014

**Decision Statement:**
No scanned manuals, no copied OEM artwork, no factory illustrations
reproduced without redrawing. All figures must be original works.

**Transcript Evidence:**
"Prohibited: Scanned manuals, Factory illustrations, OEM photographs,
Copy/pasted web articles, AI reproductions of copyrighted artwork."
Also: "Reproducing factory illustrations — High [risk] — Avoid;
redraw them instead."

**Dependencies:** HMS-DEC-0013

**Affected Files:**
- GOVERNANCE/COPYRIGHT_POLICY.md
- GOVERNANCE/IMAGE_POLICY.md
- GOVERNANCE/LEGAL_REVIEW_CHECKLIST.md

**Related Decisions:** HMS-DEC-0013, HMS-DEC-0015

**Status:** Accepted

**Transcript Location:** Sections — COPYRIGHT_POLICY and legal risk table.

---

## HMS-DEC-0015

**Decision ID:** HMS-DEC-0015

**Decision Statement:**
Original content is licensed CC BY-SA 4.0. Source code is licensed MIT.

**Transcript Evidence:**
"Original text: CC BY-SA 4.0
Original CAD: CC BY-SA 4.0
Original photos: CC BY-SA 4.0
Source code: MIT"

**Dependencies:** HMS-DEC-0013

**Affected Files:**
- LICENSE
- GOVERNANCE/LICENSES.md
- GOVERNANCE/ATTRIBUTION_POLICY.md

**Related Decisions:** HMS-DEC-0013, HMS-DEC-0014

**Status:** Accepted

**Transcript Location:** Section — "The One Thing I Would Change" in
legal guidance.

---

## HMS-DEC-0016

**Decision ID:** HMS-DEC-0016

**Decision Statement:**
Every asset has a unique provenance record including: who created it,
when, from what source, using what methodology, under what license,
what evidence supports it, what revisions it has undergone, which
manual sections depend on it, and whether it is reproducible.

**Transcript Evidence:**
"The provenance system should answer, for every artifact in the project:
Who created it? When? From what source? Using what methodology? Under
what license? What evidence supports it? What revisions has it undergone?
Which manual sections depend on it? Can it be reproduced?"

**Dependencies:** HMS-DEC-0004, HMS-DEC-0013

**Affected Files:**
- database/schema/003_tables.sql
- docs/architecture/provenance.md
- standards/

**Related Decisions:** HMS-DEC-0004, HMS-DEC-0017

**Status:** Accepted

**Transcript Location:** Section — "now I need you to generate a provenance
system using an appropriate SQL database."

---

## HMS-DEC-0017

**Decision ID:** HMS-DEC-0017

**Decision Statement:**
Every object has three IDs: UUID (internal PK, immutable), human-friendly
canonical ID (e.g., FIG-00017), and a permanent reference URI/DOI.
IDs are never recycled.

**Transcript Evidence:**
"Instead of FIG-00017 Use: UUID (Internal PK), FIG-00017 (Human
Friendly), DOI/URI (Permanent Reference). The UUID never changes."
"Never recycle IDs. Ever."

**Dependencies:** HMS-DEC-0016

**Affected Files:**
- database/schema/003_tables.sql
- standards/ids.md

**Related Decisions:** HMS-DEC-0016, HMS-DEC-0018

**Status:** Accepted

**Transcript Location:** Section — "Every Object Needs Three IDs" in
double-check revision.

---

## HMS-DEC-0018

**Decision ID:** HMS-DEC-0018

**Decision Statement:**
Asset number prefixes are fixed: FIG-, PHOTO-, CAD-, MEAS-, PROC-,
SRC-, CH-, PART-, TEST-. Zero-padded to six digits.

**Transcript Evidence:**
"FIG-000001, PHOTO-000001, CAD-000001, MEAS-000001, PROC-000001,
SRC-000001, CH-000001, PART-000001, TEST-000001"

**Dependencies:** HMS-DEC-0017

**Affected Files:**
- standards/ids.md
- database/schema/003_tables.sql

**Related Decisions:** HMS-DEC-0017

**Status:** Accepted

**Transcript Location:** Section — "Asset Numbering."

---

## HMS-DEC-0019

**Decision ID:** HMS-DEC-0019

**Decision Statement:**
The database uses typed relationships as first-class objects (edges).
Defined relationship types include: supports, refutes, measures,
illustrates, documents, requires, derived_from, supersedes, contains,
part_of, references, validated_by, created_by, reviewed_by,
calibrated_with, tested_using, applies_to, affects, updates,
duplicates, contradicts, verified_by, observed_in, originated_from.

**Transcript Evidence:**
"These become first-class citizens. [full list of relationship verbs]"
"edges table: from_node UUID, relationship TEXT, to_node UUID,
confidence NUMERIC, evidence_level CHAR(1)..."

**Dependencies:** HMS-DEC-0005, HMS-DEC-0004

**Affected Files:**
- database/schema/003_tables.sql
- database/schema/008_graph.sql
- docs/architecture/graph-model.md

**Related Decisions:** HMS-DEC-0005, HMS-DEC-0016

**Status:** Accepted

**Transcript Location:** Section — "Relationship Types" in knowledge
graph implementation.

---

## HMS-DEC-0020

**Decision ID:** HMS-DEC-0020

**Decision Statement:**
An Architecture Decision Record (ADR) process is used from day one.
ADRs are stored in docs/adr/. Every significant design decision is
captured in an ADR.

**Transcript Evidence:**
"I would adopt an explicit Architecture Decision Record (ADR) process
from day one. Create: docs/adr/ ADR-0001-use-postgresql.md,
ADR-0002-use-graph-projection.md..."

**Dependencies:** None

**Affected Files:**
- docs/adr/

**Related Decisions:** HMS-DEC-0004, HMS-DEC-0005

**Status:** Accepted

**Transcript Location:** Section — "The One Thing I Would Add" in
artifact list discussion.

---

## HMS-DEC-0021

**Decision ID:** HMS-DEC-0021

**Decision Statement:**
The project is divided into four logical repositories for long-term
scalability: (1) heritage-machine-series (governance/standards/ADRs),
(2) hms-[machine-id] (machine-specific content), (3) hms-database
(schema/migrations/API), (4) hms-publisher (PDF/HTML/EPUB pipeline).

**Transcript Evidence:**
"I would build four repositories that work together:
1. heritage-machine-series — Governance, standards, ADRs, shared assets,
   and publication tooling.
2. hms-113241680 — The machine-specific engineering reference, CAD,
   photographs, and manuscript.
3. hms-database — PostgreSQL schema, migrations, provenance model, API,
   and graph projection.
4. hms-publisher — PDF/HTML/EPUB generation pipeline, templates, and
   build automation."

**Dependencies:** HMS-DEC-0010

**Affected Files:**
- ROADMAP.md
- PROJECT.md

**Related Decisions:** HMS-DEC-0010

**Status:** Accepted

**Transcript Location:** Section — "My Recommendation for the Next Phase"
at conversation end.

---

## HMS-DEC-0022

**Decision ID:** HMS-DEC-0022

**Decision Statement:**
The first machine documented is the Craftsman Model 113.241680 table saw.

**Transcript Evidence:**
"the table saw in question is a model 113.241680"
"The first volume documents the Craftsman Model 113.241680 table saw."

**Dependencies:** HMS-DEC-0001

**Affected Files:**
- series/craftsman-113241680/

**Related Decisions:** HMS-DEC-0001, HMS-DEC-0010

**Status:** Accepted

**Transcript Location:** Early in transcript — model number identification.

---

## HMS-DEC-0023

**Decision ID:** HMS-DEC-0023

**Decision Statement:**
The manuscript is organized into five volumes: Volume 1 (Restoration &
Service), Volume 2 (Calibration & Precision Tuning), Volume 3 (Shop
Fixtures & Jigs), Volume 4 (Modernization & Upgrades), Volume 5
(Engineering Reference / Parts Catalog).

**Transcript Evidence:**
Full volume table:
"Volume 1 — Restoration & Service (80–100 pages)
Volume 2 — Calibration & Precision Tuning (50–70 pages)
Volume 3 — Shop Fixtures & Jigs (75–100 pages)
Volume 4 — Upgrades & Modernization (60–80 pages)
Volume 5 — Parts Catalog & Maintenance (50–75 pages)"

**Dependencies:** HMS-DEC-0022

**Affected Files:**
- series/craftsman-113241680/manuscript/volume-01-restoration/
- series/craftsman-113241680/manuscript/volume-02-calibration/
- series/craftsman-113241680/manuscript/volume-03-fixtures/
- series/craftsman-113241680/manuscript/volume-04-modernization/
- series/craftsman-113241680/manuscript/volume-05-engineering-reference/

**Related Decisions:** HMS-DEC-0022, HMS-DEC-0011

**Status:** Accepted

**Transcript Location:** Volume table in project scope discussion.

---

## HMS-DEC-0024

**Decision ID:** HMS-DEC-0024

**Decision Statement:**
Claims are first-class database objects with: statement text, evidence
level, status (Verified/Unverified/Contested), and confidence value.

**Transcript Evidence:**
"Claims Become First-Class Objects. Store it:
CLAIM-00172
Statement: 'The arbor runout should be less than 0.001 inches.'
Evidence: A
Status: Verified
Confidence: 0.99"

**Dependencies:** HMS-DEC-0004, HMS-DEC-0016

**Affected Files:**
- database/schema/003_tables.sql

**Related Decisions:** HMS-DEC-0004, HMS-DEC-0019

**Status:** Accepted

**Transcript Location:** Section — "Claims Become First-Class Objects."

---

## HMS-DEC-0025

**Decision ID:** HMS-DEC-0025

**Decision Statement:**
An immutable event store records every significant action (Measurement
Taken, CAD Updated, Claim Approved, Figure Published, Chapter Released,
PDF Generated, Review Completed). Nothing is overwritten; versioning
tracks object history.

**Transcript Evidence:**
"Add Immutable Events. Everything important should generate an event.
[list of event types]. This is event sourcing. It makes provenance
dramatically stronger."
"Never overwrite anything. Ever."
"Git tracks files. The database tracks engineering objects."

**Dependencies:** HMS-DEC-0004

**Affected Files:**
- database/schema/003_tables.sql (events, revisions tables)

**Related Decisions:** HMS-DEC-0004, HMS-DEC-0016, HMS-DEC-0017

**Status:** Accepted

**Transcript Location:** Section — "Add Immutable Events" in double-check.

---

## HMS-DEC-0026

**Decision ID:** HMS-DEC-0026

**Decision Statement:**
The project targets 300–500+ pages total across all volumes. Quality
and completeness take precedence over speed of delivery.

**Transcript Evidence:**
"Target length: 300–500+ pages"
"I would rather deliver a repository where every document is complete
and publishable than a large archive filled with placeholders."

**Dependencies:** HMS-DEC-0023

**Affected Files:**
- PROJECT.md

**Related Decisions:** HMS-DEC-0023

**Status:** Accepted

**Transcript Location:** AI Project Prompt and final milestone discussion.

---

## HMS-DEC-0027

**Decision ID:** HMS-DEC-0027

**Decision Statement:**
Consistent chapter document structure: Purpose, Background, Required
Tools, Required Materials, Applicable Models, Procedure, Inspection,
Troubleshooting, Verification, References, Revision Notes.

**Transcript Evidence:**
"Each chapter should contain: Purpose, Background, Required tools,
Required materials, Applicable models, Procedure, Inspection,
Troubleshooting, Verification, References, Revision notes"

**Dependencies:** HMS-DEC-0011

**Affected Files:**
- STYLE_GUIDE.md
- templates/

**Related Decisions:** HMS-DEC-0011

**Status:** Accepted

**Transcript Location:** AI Project Prompt — "Document Structure" section.

---

## HMS-DEC-0028

**Decision ID:** HMS-DEC-0028

**Decision Statement:**
The GitHub repository description is: "The Heritage Machine Series is
an open engineering reference library preserving classic machinery
through original research, measured data, CAD, technical documentation,
restoration, calibration, modernization, and evidence-based engineering."

**Transcript Evidence:**
ChatGPT's preferred final version from repository description discussion.

**Dependencies:** HMS-DEC-0001

**Affected Files:**
- README.md

**Related Decisions:** HMS-DEC-0001

**Status:** Accepted

**Transcript Location:** Section — "give me a 350 character max description."

---

## HMS-DEC-0029

**Decision ID:** HMS-DEC-0029

**Decision Statement:**
No internet folklore is repeated without verification. Every technical
claim is traced to: factory documentation, engineering analysis,
instrumented measurement, or independent verification from multiple
experienced restorers.

**Transcript Evidence:**
"We will not repeat internet folklore without verification. For every
technical claim, we will trace it back to one of four sources:
1. Factory documentation.
2. Engineering analysis.
3. Instrumented measurement.
4. Independent verification from multiple experienced restorers."

**Dependencies:** HMS-DEC-0007

**Affected Files:**
- RESEARCH.md
- STYLE_GUIDE.md
- AI_PROJECT_PROMPT.md

**Related Decisions:** HMS-DEC-0007, HMS-DEC-0016

**Status:** Accepted

**Transcript Location:** Section — "Research Standards" in Project Charter.

---

## HMS-DEC-0030

**Decision ID:** HMS-DEC-0030

**Decision Statement:**
The Craftsman 113.241680 is identified as an Emerson Electric-built
10-inch Flex Drive table saw from the mid-1980s, with a cast-iron
main table, stamped steel extension wings, and a 1 HP motor.

**Transcript Evidence:**
"The Craftsman 113.241680 is one of the last 113-series Emerson-built
10-inch Flex Drive saws from the mid-1980s. It has a cast-iron main
table with stamped steel extension wings, a 1 HP motor, and the
distinctive flexible drive shaft..."

**Dependencies:** HMS-DEC-0022

**Affected Files:**

- series/craftsman-113241680/SPECIFICATIONS.md
- series/craftsman-113241680/manuscript/volume-01-restoration/02-identification.md

**Related Decisions:** HMS-DEC-0022

**Status:** Accepted (source: ChatGPT response — to be verified against
factory documentation per HMS-DEC-0029)

**Transcript Location:** Section — "That is a good one. The Craftsman
113.241680..."