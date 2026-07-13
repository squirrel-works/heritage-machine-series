# ADR-0010: Repository Organization

## Status

Accepted

## Context

The Heritage Machine Series is intended to grow beyond a single manual into
multiple machine volumes, shared governance documents, standards, database
schema, and publishing tooling. The transcript explicitly proposed a
repository layout that separates machine-specific content from shared
project infrastructure.

## Decision

Organize the project into a shared root repository named
`heritage-machine-series` with the following major areas:

- `README.md`, `LICENSE`, `CHANGELOG.md`, `ROADMAP.md`, `PROJECT.md`,
  `STYLE_GUIDE.md`, `RESEARCH.md`, `CONTRIBUTING.md`, AI prompt files,
  `TODO.md`, `REFERENCES.bib`, `REFERENCES.md`, and `VERSION` at the root.
- `.github/` for issue templates and workflows.
- `docs/` for architecture documents, ADRs, validation reports, and
  transcript validation.
- `GOVERNANCE/` for copyright, trademark, attribution, sourcing, image,
  license, disclaimer, legal review, and fair use policies.
- `standards/` for terminology, units, evidence levels, citations,
  illustrations, measurements, photography, typography, revision policy,
  IDs, and naming.
- `shared/` for figures, icons, templates, tables, symbols, and styles.
- `scripts/` for build, validation, image processing, bibliography, and
  utility scripts.
- `bibliography/` for books, manuals, standards, journals, and websites.
- `database/` for PostgreSQL schema, migrations, seeds, tests, and diagrams.
- `series/craftsman-113241680/` for the first machine-specific volume,
  including manuscript, engineering data, drawings, photography,
  measurements, templates, printable assets, and releases.
- `archive/` for preserved legacy or superseded materials.

The transcript also proposed a future split into four repositories:

1. `heritage-machine-series` for governance, standards, ADRs, and shared
   assets.
2. `hms-113241680` for machine-specific content.
3. `hms-database` for schema, migrations, API, and graph projection.
4. `hms-publisher` for PDF, HTML, and EPUB generation.

That split is recorded as a future-scale architecture option, but the current
repository layout remains the shared-root structure above.

## Alternatives Considered

- A monolithic single-folder manual project.
- A separate repository per volume from the start.
- A four-repository split immediately.

## Consequences

- Shared governance and standards stay centralized.
- Machine-specific content can grow independently under `series/`.
- Database and publishing infrastructure remain reusable.
- The project can later split into multiple repositories without changing the
  underlying content model.

## Related Decisions

HMS-DEC-0001, HMS-DEC-0002, HMS-DEC-0010, HMS-DEC-0021, HMS-DEC-0022,
HMS-DEC-0023

## Revision History

| Version | Date | Notes |
| --------- | ------------ | ---------------------------------------- |
| 0.1.0 | 2026-07-12 | Initial reconstruction from transcript |
