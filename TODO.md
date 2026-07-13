# TODO

Heritage Machine Series

Last Updated: 2026-07-12

---

## Open Research Questions

### Machine Specifications (Require Factory Documentation)

- [ ] Verify arbor diameter (5/8" — not verified against factory docs)
- [ ] Verify motor HP (1 HP stated in transcript — confirm against nameplate)
- [ ] Verify table dimensions
- [ ] Verify arbor thread specification
- [ ] Verify elevation screw pitch
- [ ] Verify tilt mechanism range
- [ ] Verify arbor bearing part numbers
- [ ] Verify motor bearing part numbers
- [ ] Identify factory torque values for all fasteners
- [ ] Identify factory lubricant specifications
- [ ] Identify factory paint color codes and modern equivalents
- [ ] Determine exact production year range for 113.241680

### Flex Drive

- [ ] Identify Flex Drive shaft dimensions
- [ ] Identify Flex Drive shaft material specification
- [ ] Identify factory-recommended lubricant for Flex Drive
- [ ] Document known failure modes with sources
- [ ] Determine current replacement shaft availability (transcript states
      "essentially unavailable" — verify)

### Bearings

- [ ] Identify arbor bearing part numbers
- [ ] Cross-reference to modern equivalents (SKF, NSK, NTN, Timken)
- [ ] Identify motor bearing part numbers
- [ ] Cross-reference to modern equivalents

### Electrical

- [ ] Identify capacitor specification (if present)
- [ ] Identify original switch model
- [ ] Document wiring diagram

### Alignment Tolerances

Transcript specifies the following targets (source: ChatGPT — verify
against factory or authoritative engineering sources):

- [ ] Arbor runout < 0.001" — verify
- [ ] Blade alignment < 0.002" — verify
- [ ] Fence: +0.003" toe out — verify
- [ ] 90° stop: ±0.05° — verify

---

## Open Development Tasks

### Database

- [ ] Complete 004_constraints.sql (FK constraints)
- [ ] Complete 005_indexes.sql
- [ ] Complete 006_views.sql
- [ ] Complete 007_functions.sql
- [ ] Complete 009_triggers.sql
- [ ] Create ERD in database/diagrams/erd.drawio
- [ ] Create graph diagram in database/diagrams/graph.drawio
- [ ] Write database migration tests
- [ ] Implement event sourcing (events table triggers)

### Publishing Pipeline

- [ ] Design Pandoc pipeline (Markdown → PDF)
- [ ] Design HTML generation workflow
- [ ] Design EPUB generation workflow
- [ ] Implement automatic bibliography
- [ ] Implement automatic figure numbering
- [ ] Implement automatic cross-reference resolution

### Manuscript

- [ ] Begin Volume 1, Chapter 1: History of the Emerson 113 Series
      (outline exists in transcript — flesh out with verified sources)
- [ ] Commission or create first illustrations
- [ ] Establish chapter templates from shared/templates/

### Governance

- [ ] Legal review of DISCLAIMER.md by attorney
- [ ] Confirm nominative fair use approach with legal counsel

---

## Unresolved Inconsistencies

(Per HMS-RP-0001 — reported, not resolved)

1. "PostgreSQL 18" referenced once but not confirmed as pinned version.
2. Volume 5 named inconsistently ("Parts Catalog & Maintenance" vs.
   "Engineering Reference").
3. "Volume 6 parts-catalog" folder appears in repository tree but not
   in volume table.

---

## Revision History

| Version | Date | Notes |
| --------- | ------------ | ---------------------------------------- |
| 0.1.0 | 2026-07-12 | Initial reconstruction from transcript |
