# Publishing Architecture

## Purpose

Describe how source content is transformed into published artifacts for The
Heritage Machine Series.

## Scope

This document covers the Markdown-first workflow, build tooling, CI
automation, release organization, and how the publishing pipeline interacts
with the provenance database and repository structure.

## Overview

The series uses a documentation pipeline rather than one-off exports. Source
material is authored in Markdown, SVG, CSV, and SQL inside a version
controlled repository. Published outputs (PDF, HTML, EPUB, and static site
content) are generated reproducibly from this source using scripted tools and
GitHub Actions.

Publishing is separated from manuscript authoring and database maintenance.
The canonical text, figures, and measurements live in the repository and
PostgreSQL. Publishing jobs read that source, apply templates and rendering
rules, and emit release artifacts without manual layout work.

## Source Formats

- Manuscript chapters: Markdown organized by volume and chapter.
- Figures and illustrations: SVG and other vector formats with IDs that
  participate in the provenance system.
- Measurements and specifications: CSV and SQL linked to the database
  schema.
- Governance, standards, and ADRs: Markdown in `docs/` and `GOVERNANCE/`.

Markdown is the primary authoring format because it is durable, diffable,
compatible with multiple toolchains, and easy to transform into PDF, HTML,
and EPUB.

## Build Tooling

The initial pipeline uses Pandoc plus a LaTeX engine to generate PDF, and
simple static transformations for HTML and site output. The `.github/workflows`
files define baseline automation:

- `build-pdf.yml` — checks out the repository, installs Pandoc and LaTeX
  packages, and renders a PDF from Markdown into `output/`.
- `build-site.yml` — builds a simple static site from Markdown (initially
  using `README.md` as `index.md`).
- `spellcheck.yml`, `lint.yml`, and `linkcheck.yml` — enforce basic quality
  checks on source documents.
- `validate.yml` — confirms required files exist and lists the Markdown
  tree for inspection.
- `release.yml` — creates a release manifest and uploadable artifacts.

Over time, the pipeline can be extended to:

- Build multi-volume PDFs with front matter, indices, and cross references.
- Generate EPUB from the same source tree.
- Produce a richer static documentation site.

## CI and Quality Gates

Publishing runs behind quality gates:

- Markdown must pass linting and spell checking.
- Links must pass link checking.
- Database schema migrations must apply cleanly in CI.
- Required governance and architecture documents must exist.

Release workflows should depend on these gates so that broken documents or
invalid schemas cannot be published inadvertently.

## Relationship to Provenance

The provenance system and PostgreSQL database remain the canonical store for
measurements, claims, assets, and relationships. Publishing jobs read from
that store and from the manuscript tree but do not modify the underlying
records.

When publishing figures, tables, and claims, the pipeline should:

- Use stable identifiers (e.g., `FIG-000001`, `MEAS-000001`, `CLM-000001`).
- Preserve provenance metadata when emitting captions or appendices.
- Avoid embedding local-only paths or transient information in outputs.

This ensures that published artifacts can be traced back to internal records
for verification and revision.

## Releases and Versioning

Release artifacts are organized under `series/<machine>/releases/` with
versioned directories (`v0.1`, `v0.2`, `v1.0`, etc.). CI jobs should place
built PDFs, site bundles, and manifests into these locations or attach them
as release assets on the hosting platform.

Each release should record:

- Version number and date.
- Scope (which volumes and chapters are included).
- Known limitations or open issues.
- A summary of major changes since the prior release.

## Future Enhancements

The publishing architecture is designed to be incremental. Future work may
include:

- Template sets for different output formats (shop manual, engineering
  reference, quick-start guide).
- Automated index and glossary generation from structured metadata.
- QR code embedding for provenance lookups and measurement records.
- Integration with the knowledge graph layer for dynamic views.

These enhancements should remain compatible with the core principle: the
repository and database are the canonical sources, and publishing is a
repeatable transformation, not a manual layout step.

## Revision History

| Version | Date | Notes |
| --------- | ------ | ------- |
| 1.0 | 2026-07-12 | Expanded from initial stub |
