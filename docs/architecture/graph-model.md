# Graph Model

## Purpose

Describe the graph projection used for provenance and dependency analysis.

## Scope

This document covers typed relationships, graph traversal, and the role of
the graph as a projection over PostgreSQL rather than as the system of
record.

## Body

The transcript proposes using PostgreSQL with Apache AGE for graph queries.
The graph layer exists to answer dependency questions that are awkward in
pure relational form, such as which chapters depend on which figures,
which figures depend on which measurements, and which claims are supported
by which sources.

The graph is explicitly not authoritative. It mirrors selected relational
records as typed edges and nodes. The canonical record remains in PostgreSQL.
This avoids dual-write synchronization problems and keeps backups,
validation, and migrations centered on one database system.

Typed edges include relationships such as illustrates, supports, derived_from,
requires, references, validates, contains, and appears_in. These edges can
be traversed to determine impact, lineage, and reuse across the project.

## References

- Transcript discussion of PostgreSQL plus Apache AGE.
- Transcript discussion of typed relationship verbs.
- Transcript discussion of the graph never becoming authoritative.

## Related Decisions

HMS-DEC-0005, HMS-DEC-0006, HMS-DEC-0019, HMS-DEC-0020

## Revision History

| Version | Date | Notes |
| --------- | ------ | ------- |
| 1.0 | 2026-07-12 | Reconstructed from transcript |
