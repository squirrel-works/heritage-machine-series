# Data Model

## Purpose

Describe the relational core of The Heritage Machine Series.

## Scope

This document covers the canonical PostgreSQL schema, the primary entity
types, and the relationship between artifacts, sources, measurements,
claims, revisions, and chapters.

## Body

The transcript describes PostgreSQL as the canonical database and the system
of record. The schema stores contributors, licenses, sources, evidence
levels, assets, measurements, procedures, chapters, citations, revisions,
and relationships as first-class entities.

The data model separates identity from versioning. Each object has a stable
identifier and a version history. Claims and measurements are modeled as
explicit records rather than as free-form notes so they can be validated,
traced, and reused across chapters and figures.

The relational model is the authoritative source for metadata, provenance,
and publication inputs. Graph traversal is layered above it for dependency
analysis and traceability, but the underlying data remains relational.

## References

- Transcript discussion of PostgreSQL as the canonical database.
- Transcript discussion of contributors, licenses, sources, assets,
  measurements, procedures, chapters, citations, and revisions.
- Transcript discussion of claims as first-class objects.

## Related Decisions

HMS-DEC-0004, HMS-DEC-0006, HMS-DEC-0016, HMS-DEC-0017, HMS-DEC-0018,
HMS-DEC-0019, HMS-DEC-0024, HMS-DEC-0025

## Revision History

| Version | Date | Notes |
| --------- | ------ | ------- |
| 1.0 | 2026-07-12 | Reconstructed from transcript |
