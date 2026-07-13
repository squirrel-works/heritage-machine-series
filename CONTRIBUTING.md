# Contributing

Heritage Machine Series

Version: 0.1.0

---

## Purpose

This document defines standards for contributing to The Heritage Machine
Series, whether as a human contributor or as an AI assistant.

---

## Scope

Applies to all manuscript content, database entries, CAD drawings,
photographs, measurements, and code contributions.

---

## Core Rules

1. No scanned manuals.
2. No copied OEM artwork.
3. No reproduced factory illustrations — redraw everything from measurement.
4. No fabricated specifications.
5. No fabricated measurements.
6. No unattributed claims.
7. Every asset must have provenance.

---

## What You May Contribute

- Original writing
- Original photographs (taken by you of a physical machine)
- Original CAD drawings (created from direct measurement)
- Original SVG diagrams
- Measurements taken with identified, calibrated instruments
- Engineering analysis
- Historical summaries written in your own words
- Verified cross-references and part numbers
- Translations

---

## What You May Not Contribute

- Scanned manual pages
- Factory illustrations (even traced)
- OEM photographs
- Copy/pasted web content
- AI reproductions of copyrighted artwork
- Unverified "common knowledge" presented as fact

---

## Workflow

Draft content
│
▼
Technical review
│
▼
Fact verification (source must be identified)
│
▼
Illustration review (provenance verified)
│
▼
Copy edit
│
▼
PDF / HTML / EPUB generation
│
▼
Tagged release

---

## For AI Contributors

When using an AI model to assist with this project:

1. Load AI_PROJECT_PROMPT.md or the model-specific file (CLAUDE.md,
 GPT.md, GEMINI.md) at the start of every session.
2. Never allow the AI to fabricate specifications or measurements.
3. When the AI flags uncertainty, record it in TODO.md.
4. Review all AI-generated content against source hierarchy before
 committing.

---

## Measurement Contributions

Every measurement record must include:

- Value and unit
- Instrument name and model
- Calibration status
- Ambient temperature
- Relative humidity
- Operator name
- Date
- Notes

---

## Photography Contributions

Every photograph must include:

- Subject description
- Machine model and serial number (if applicable)
- Date taken
- Camera and lens
- License (CC BY-SA 4.0 for original work)
- Author

---

## CAD Contributions

Every CAD drawing must include:

- Source: "Original — derived from direct measurement"
- Measurement reference (MEAS- ID)
- Date
- Author
- Revision

---

## Related Decisions

HMS-DEC-0013, HMS-DEC-0014, HMS-DEC-0015, HMS-DEC-0016

---

## Revision History

| Version | Date | Notes |
| --------- | ------------ | ---------------------------------------- |
| 0.1.0 | 2026-07-12 | Initial reconstruction from transcript |
