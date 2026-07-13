# Repository Manifest

Heritage Machine Series
HMS-RP-0001 Reconstruction

Version: 1.0
Date: 2026-07-12

---

## Repository Tree

heritage-machine-series/
│
├── README.md
├── LICENSE
├── CHANGELOG.md
├── ROADMAP.md
├── PROJECT.md
├── STYLE_GUIDE.md
├── RESEARCH.md
├── CONTRIBUTING.md
├── AI_PROJECT_PROMPT.md
├── CLAUDE.md
├── GEMINI.md
├── GPT.md
├── TODO.md
├── REFERENCES.bib
├── REFERENCES.md
├── VERSION
│
├── .github/
│ ├── ISSUE_TEMPLATE/
│ │ ├── correction.md
│ │ ├── chapter.md
│ │ ├── illustration.md
│ │ └── research.md
│ ├── PULL_REQUEST_TEMPLATE.md
│ └── workflows/
│ ├── build-pdf.yml
│ ├── lint.yml
│ ├── spellcheck.yml
│ ├── linkcheck.yml
│ ├── validate.yml
│ ├── database-tests.yml
│ ├── build-site.yml
│ └── release.yml
│
├── docs/
│ ├── transcript-validation.md
│ ├── decision-ledger.md
│ ├── repository-manifest.md
│ ├── repository-validation.md
│ ├── architecture/
│ │ ├── system-overview.md
│ │ ├── data-model.md
│ │ ├── graph-model.md
│ │ ├── provenance.md
│ │ └── publishing.md
│ ├── adr/
│ │ ├── README.md
│ │ ├── ADR-0001-use-postgresql.md
│ │ ├── ADR-0002-use-graph-projection.md
│ │ ├── ADR-0003-evidence-classification.md
│ │ ├── ADR-0004-versioning-strategy.md
│ │ ├── ADR-0005-asset-provenance.md
│ │ ├── ADR-0006-citation-policy.md
│ │ ├── ADR-0007-publishing-pipeline.md
│ │ ├── ADR-0008-measurement-traceability.md
│ │ ├── ADR-0009-licensing-strategy.md
│ │ └── ADR-0010-repository-organization.md
│ ├── publication/
│ ├── releases/
│ ├── drafts/
│ └── review/
│
├── GOVERNANCE/
│ ├── COPYRIGHT_POLICY.md
│ ├── TRADEMARK_POLICY.md
│ ├── ATTRIBUTION_POLICY.md
│ ├── SOURCING_POLICY.md
│ ├── IMAGE_POLICY.md
│ ├── LICENSES.md
│ ├── DISCLAIMER.md
│ ├── LEGAL_REVIEW_CHECKLIST.md
│ └── FAIR_USE_GUIDELINES.md
│
├── standards/
│ ├── terminology.md
│ ├── units.md
│ ├── evidence_levels.md
│ ├── citations.md
│ ├── illustrations.md
│ ├── measurements.md
│ ├── photography.md
│ ├── typography.md
│ ├── revision_policy.md
│ ├── ids.md
│ └── naming.md
│
├── shared/
│ ├── figures/
│ ├── icons/
│ ├── templates/
│ │ ├── chapter-template.md
│ │ ├── procedure-template.md
│ │ ├── figure-template.md
│ │ ├── measurement-template.md
│ │ ├── claim-template.md
│ │ └── adr-template.md
│ ├── tables/
│ ├── symbols/
│ └── styles/
│
├── scripts/
│ ├── build/
│ ├── validation/
│ ├── image-processing/
│ ├── bibliography/
│ └── utilities/
│
├── bibliography/
│ ├── books/
│ ├── manuals/
│ ├── standards/
│ ├── journals/
│ └── websites/
│
├── database/
│ ├── README.md
│ ├── schema/
│ │ ├── 001_extensions.sql
│ │ ├── 002_enums.sql
│ │ ├── 003_tables.sql
│ │ ├── 004_constraints.sql
│ │ ├── 005_indexes.sql
│ │ ├── 006_views.sql
│ │ ├── 007_functions.sql
│ │ ├── 008_graph.sql
│ │ └── 009_triggers.sql
│ ├── migrations/
│ ├── seeds/
│ │ ├── evidence_levels.sql
│ │ ├── licenses.sql
│ │ └── relationship_types.sql
│ ├── tests/
│ └── diagrams/
│ ├── erd.drawio
│ └── graph.drawio
│
├── series/
│ └── craftsman-113241680/
│ ├── README.md
│ ├── CHANGELOG.md
│ ├── TODO.md
│ ├── SPECIFICATIONS.md
│ ├── PARTS_DATABASE.csv
│ ├── BEARINGS.csv
│ ├── FASTENERS.csv
│ ├── LUBRICANTS.csv
│ │
│ ├── manuscript/
│ │ ├── volume-01-restoration/
│ │ │ ├── 00-frontmatter.md
│ │ │ ├── 01-history.md
│ │ │ ├── 02-identification.md
│ │ │ ├── 03-specifications.md
│ │ │ ├── 04-safety.md
│ │ │ ├── 05-tools.md
│ │ │ ├── 06-disassembly.md
│ │ │ ├── 07-cleaning.md
│ │ │ ├── 08-paint.md
│ │ │ ├── 09-motor.md
│ │ │ ├── 10-flex-drive.md
│ │ │ ├── 11-arbor.md
│ │ │ ├── 12-reassembly.md
│ │ │ ├── appendix-a.md
│ │ │ ├── appendix-b.md
│ │ │ └── index.md
│ │ ├── volume-02-calibration/
│ │ │ ├── 00-frontmatter.md
│ │ │ └── index.md
│ │ ├── volume-03-fixtures/
│ │ │ ├── 00-frontmatter.md
│ │ │ └── index.md
│ │ ├── volume-04-modernization/
│ │ │ ├── 00-frontmatter.md
│ │ │ └── index.md
│ │ └── volume-05-engineering-reference/
│ │ ├── 00-frontmatter.md
│ │ └── index.md
│ │
│ ├── engineering/
│ │ ├── tolerances/
│ │ ├── calculations/
│ │ ├── finite-element/
│ │ ├── metallurgy/
│ │ ├── tribology/
│ │ └── vibration/
│ │
│ ├── drawings/
│ │ ├── cad/
│ │ ├── svg/
│ │ ├── exploded/
│ │ ├── wiring/
│ │ ├── dimensioned/
│ │ ├── lubrication/
│ │ ├── calibration/
│ │ └── printable/
│ │
│ ├── photography/
│ │ ├── original/
│ │ ├── processed/
│ │ ├── teardown/
│ │ ├── restoration/
│ │ ├── calibration/
│ │ └── upgrades/
│ │
│ ├── measurements/
│ │ ├── inspection/
│ │ ├── alignment/
│ │ ├── runout/
│ │ ├── flatness/
│ │ └── test-data/
│ │
│ ├── templates/
│ │
│ ├── printable/
│ │ ├── maintenance-log.pdf [PLACEHOLDER — not yet generated]
│ │ ├── inspection-sheet.pdf [PLACEHOLDER — not yet generated]
│ │ ├── lubrication-chart.pdf [PLACEHOLDER — not yet generated]
│ │ └── calibration-sheet.pdf [PLACEHOLDER — not yet generated]
│ │
│ └── releases/
│ ├── v0.1/
│ ├── v0.2/
│ └── v1.0/
│
└── archive/

---

## Artifact Registry

### Governance Documents

| File | Status |
| ------ | -------- |
| GOVERNANCE/COPYRIGHT_POLICY.md | Recoverable — full content in transcript |
| GOVERNANCE/TRADEMARK_POLICY.md | Recoverable — full content in transcript |
| GOVERNANCE/ATTRIBUTION_POLICY.md | Recoverable — full content in transcript |
| GOVERNANCE/SOURCING_POLICY.md | Recoverable — full content in transcript |
| GOVERNANCE/IMAGE_POLICY.md | Recoverable — full content in transcript |
| GOVERNANCE/LICENSES.md | Recoverable — content in transcript |
| GOVERNANCE/DISCLAIMER.md | Recoverable — full text in transcript |
| GOVERNANCE/LEGAL_REVIEW_CHECKLIST.md | Recoverable — checklist in transcript |
| GOVERNANCE/FAIR_USE_GUIDELINES.md | Recoverable — guidelines in transcript |

### Architecture Documents

| File | Status |
| ------ | -------- |
| docs/architecture/system-overview.md | Recoverable from transcript diagrams |
| docs/architecture/data-model.md | Recoverable from SQL schema discussion |
| docs/architecture/graph-model.md | Recoverable from graph discussion |
| docs/architecture/provenance.md | Recoverable from provenance discussion |
| docs/architecture/publishing.md | Recoverable — pipeline described in transcript |

### ADRs

| File | Status |
| ------ | -------- |
| docs/adr/ADR-0001-use-postgresql.md | Recoverable — decision explicit in transcript |
| docs/adr/ADR-0002-use-graph-projection.md | Recoverable — Apache AGE decision explicit |
| docs/adr/ADR-0003-evidence-classification.md | Recoverable — full table in transcript |
| docs/adr/ADR-0004-versioning-strategy.md | Recoverable — versioning discussed |
| docs/adr/ADR-0005-asset-provenance.md | Recoverable — provenance system defined |
| docs/adr/ADR-0006-citation-policy.md | Recoverable — sourcing hierarchy defined |
| docs/adr/ADR-0007-publishing-pipeline.md | Recoverable — pipeline diagram in transcript |
| docs/adr/ADR-0008-measurement-traceability.md | Recoverable — calibration cert chain defined |
| docs/adr/ADR-0009-licensing-strategy.md | Recoverable — explicit in transcript |
| docs/adr/ADR-0010-repository-organization.md | Recoverable — full tree in transcript |

### SQL Files

| File | Status |
| ------ | -------- |
| database/schema/001_extensions.sql | Recoverable — AGE, UUID mentioned |
| database/schema/002_enums.sql | Recoverable — evidence levels, node types, relationships |
| database/schema/003_tables.sql | Recoverable — full schema in transcript |
| database/schema/004_constraints.sql | Partially recoverable — FK constraints implied |
| database/schema/005_indexes.sql | Placeholder — index strategy not specified |
| database/schema/006_views.sql | Placeholder — views not detailed |
| database/schema/007_functions.sql | Placeholder — functions not specified |
| database/schema/008_graph.sql | Recoverable — AGE graph setup discussed |
| database/schema/009_triggers.sql | Placeholder — triggers not specified |

### Standards Documents

| File | Status |
| ------ | -------- |
| standards/terminology.md | Recoverable — full terminology table in transcript |
| standards/units.md | Recoverable — full units table in transcript |
| standards/evidence_levels.md | Recoverable — full table in transcript |
| standards/citations.md | Recoverable — sourcing hierarchy defined |
| standards/illustrations.md | Recoverable — illustration types listed |
| standards/measurements.md | Recoverable — measurement fields defined |
| standards/photography.md | Recoverable — photo metadata fields defined |
| standards/typography.md | Placeholder — typography not specified beyond Markdown |
| standards/revision_policy.md | Recoverable — versioning policy discussed |
| standards/ids.md | Recoverable — ID system fully defined |
| standards/naming.md | Recoverable — naming conventions derivable |

### AI Prompt Files

| File | Status |
| ------ | -------- |
| AI_PROJECT_PROMPT.md | Recoverable — full prompt text in transcript |
| CLAUDE.md | Recoverable — described; same base as AI_PROJECT_PROMPT.md |
| GPT.md | Recoverable — same base |
| GEMINI.md | Recoverable — same base |

### Manuscript Files

| File | Status |
| ------ | -------- |
| series/craftsman-113241680/manuscript/volume-01-restoration/01-history.md | Outline recoverable; chapter outline fully specified |
| series/craftsman-113241680/manuscript/volume-01-restoration/02-identification.md | Outline recoverable |
| series/craftsman-113241680/manuscript/volume-01-restoration/03-specifications.md | Placeholder — measurements not yet taken |
| series/craftsman-113241680/SPECIFICATIONS.md | Partial — some specs in transcript (cast iron table, 1 HP, stamped steel wings) |

### Perplexity Research Prompt

| File | Status |
| ------ | -------- |
| docs/PERPLEXITY_RESEARCH_PROMPT.md | Recoverable — full text in transcript |

### Printable PDFs

| File | Status |
| ------ | -------- |
| series/craftsman-113241680/printable/*.pdf | Placeholder — binary outputs not generatable from transcript |

### Database Diagrams

| File | Status |
| ------ | -------- |
| database/diagrams/erd.drawio | Placeholder — diagram described, not recoverable as binary |
| database/diagrams/graph.drawio | Placeholder — diagram described, not recoverable as binary |
