# Roadmap

Heritage Machine Series

---

## Phase 1 — Foundation (Current)

- [x] Repository structure
- [x] Governance documents
- [x] Standards documents
- [x] PostgreSQL schema
- [x] ADR framework
- [x] AI project prompts
- [x] Manuscript structure

## Phase 2 — Database Implementation

- [ ] Complete PostgreSQL schema (all tables, constraints, indexes)
- [ ] Views for common provenance queries
- [ ] Stored procedures for asset registration
- [ ] Triggers for immutable event log
- [ ] Apache AGE graph setup
- [ ] Migration scripts
- [ ] Seed data
- [ ] Database tests
- [ ] ERD diagrams

## Phase 3 — Publishing Pipeline

- [ ] Pandoc build pipeline (Markdown → PDF)
- [ ] HTML generation
- [ ] EPUB generation
- [ ] Automatic bibliography
- [ ] Automatic figure numbering
- [ ] Automatic glossary
- [ ] Automatic index
- [ ] Cross-reference resolution
- [ ] GitHub Actions integration

## Phase 4 — Volume 1 Content (Craftsman 113.241680)

- [ ] Chapter 1: History and Identification
- [ ] Chapter 2: Machine Identification
- [ ] Chapter 3: Specifications (requires physical measurement)
- [ ] Chapter 4: Safety
- [ ] Chapter 5: Required Tools
- [ ] Chapter 6: Complete Disassembly
- [ ] Chapter 7: Cleaning
- [ ] Chapter 8: Paint
- [ ] Chapter 9: Motor
- [ ] Chapter 10: Flex Drive
- [ ] Chapter 11: Arbor Assembly
- [ ] Chapter 12: Reassembly
- [ ] Appendices

## Phase 5 — Subsequent Volumes

- [ ] Volume 2: Calibration & Precision Tuning
- [ ] Volume 3: Shop Fixtures & Jigs
- [ ] Volume 4: Modernization & Upgrades
- [ ] Volume 5: Engineering Reference / Parts Catalog

## Phase 6 — Additional Machines

Future volumes may include:

- Other 113-series Craftsman saws
- Craftsman jointers
- Craftsman drill presses
- Vintage Delta machinery
- Vintage Walker-Turner equipment
- Atlas/Craftsman lathes

## Four-Repository Expansion

Per HMS-DEC-0021, the long-term architecture separates into:

1. heritage-machine-series — Governance, standards, ADRs
2. hms-113241680 — Machine-specific content
3. hms-database — Schema, migrations, API, graph
4. hms-publisher — PDF/HTML/EPUB generation pipeline
