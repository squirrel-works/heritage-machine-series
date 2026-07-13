# Repository Validation Report

Heritage Machine Series
HMS-RP-0001 Phase 3

Date: 2026-07-12

---

## Duplicate Files

NONE DETECTED

## Duplicate Decisions

NONE DETECTED

## Contradictory Decisions

NONE DETECTED

## Missing References

The following are described in the transcript but cannot be generated
as binary files:

- database/diagrams/erd.drawio
- database/diagrams/graph.drawio
- series/craftsman-113241680/printable/*.pdf (4 files)

These are recorded as placeholders in the manifest.

## Broken Dependencies

NONE DETECTED in recoverable content.

## Circular References

NONE DETECTED

## Incomplete ADRs

All 10 ADRs are recoverable from transcript evidence and are generated
as full documents.

## Incomplete Policies

All 9 governance documents are recoverable and generated.

---

## Repository Statistics

| Category | Count |
| ---------- | ------- |
| Total Files (Markdown) | 87 |
| Total Files (SQL) | 9 |
| Total ADRs | 10 |
| Governance Documents | 9 |
| Standards Documents | 11 |
| Architecture Documents | 5 |
| AI Prompt Files | 4 |
| Manuscript Volume Folders | 5 |
| Manuscript Chapter Files (V1) | 16 |
| Manuscript Chapter Files (stub) | 4 |
| Templates | 6 |
| GitHub Workflow Files | 8 |
| GitHub Issue Templates | 4 |
| Decisions in Ledger | 30 |
| Volumes | 5 |
| Database Tables (defined) | 15 |
| Database Views | Placeholder |
| Database Triggers | Placeholder |
| Database Functions | Placeholder |
| Indexes | Placeholder |
| Seed Files | 3 |
| Bibliography Directories | 5 |
| Engineering Subdirectories | 6 |
| Drawing Subdirectories | 8 |
| Photography Subdirectories | 6 |
| Measurement Subdirectories | 5 |

---

## Inconsistencies Found

### Minor

1. The transcript references "PostgreSQL 18" in one location but does
   not confirm this version throughout. Flagged in ADR-0001 and 001_extensions.sql.

2. Volume 5 is referred to as both "Parts Catalog & Maintenance" and
   "Engineering Reference" in different sections. Both usages are
   preserved; the manuscript frontmatter for V5 notes both names.

3. The transcript mentions a "Volume 6" folder in the repository tree
   (volume-06-parts-catalog) that does not appear in the volume table.
   The folder is included per the tree; the discrepancy is noted.

### No Action Taken

Per HMS-RP-0001 protocol, inconsistencies are reported but not resolved.
