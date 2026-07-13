# System Overview

## Purpose

Describe the high-level architecture of The Heritage Machine Series.

## Scope

This document covers the shared repository structure, the PostgreSQL-backed
knowledge base, the graph projection layer, and the publishing pipeline.
It does not define table-level SQL or chapter content in detail.

## Body

The project is organized as an engineering reference library with a shared
repository root, governance documents, standards, machine-specific series
content, a PostgreSQL canonical store, and a publication pipeline.

The transcript established that the project should treat governance as a
first-class concern, use Markdown as the source format, and generate PDF,
HTML, and EPUB outputs from that source. The transcript also established a
four-part repository vision for long-term scale: a governance repository,
a machine-specific repository, a database repository, and a publishing
repository.

At the system level, the authoritative data lives in PostgreSQL. A graph
projection layer sits on top of that data for provenance and relationship
traversal. The manuscript, figures, and reference data are authored in
Markdown, CSV, SQL, and SVG, then built into published outputs.

## References

- Transcript discussion of repository organization.
- Transcript discussion of PostgreSQL as the canonical store.
- Transcript discussion of graph projection over PostgreSQL.

## Related Decisions

HMS-DEC-0003, HMS-DEC-0004, HMS-DEC-0005, HMS-DEC-0006, HMS-DEC-0009,
HMS-DEC-0010, HMS-DEC-0020, HMS-DEC-0021

## Revision History

| Version | Date | Notes |
| --------- | ------ | ------- |
| 1.0 | 2026-07-12 | Reconstructed from transcript |
