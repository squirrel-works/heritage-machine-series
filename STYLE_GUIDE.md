# Style Guide

Heritage Machine Series

Version: 0.1.0

---

## Purpose

This document defines the editorial standards for all content in
The Heritage Machine Series. It governs terminology, units, formatting,
illustration conventions, and document structure.

Every contributor — human or AI — must follow this guide.

---

## Scope

Applies to all Markdown documents, captions, table entries, SQL
comments, and any text that appears in published output.

---

## Editorial Philosophy

Write as if producing a professional service manual, not a blog post.
Do not write conversationally. Avoid filler. Avoid repetition.

Every statement must either:

- Cite evidence
- Explain engineering reasoning
- Identify uncertainty

Never invent specifications. Never fabricate measurements. When
information is uncertain, explicitly state: "Not verified."

---

## Document Structure

Each chapter follows this structure:

1. Purpose
2. Background
3. Required Tools
4. Required Materials
5. Applicable Models
6. Procedure
7. Inspection Criteria
8. Failure Modes
9. Troubleshooting
10. Verification
11. References
12. Revision Notes

---

## Evidence Levels

Every technical recommendation includes an evidence rating.

| Level | Label | Description |
| ------- | -------------- | --------------------------------------------------------------- |
| A | Factory | Factory documentation or manufacturer specification. |
| B | Engineering | Engineering analysis or industry standards. |
| C | Measurement | Verified through hands-on testing or instrumented measurement |
| D | Community | Community consensus with multiple independent sources |
| E | Experimental | Author opinion or experimental technique |

Example usage:

> Lubricate trunnion pivots with light machine oil.
> **Evidence: A** (factory guidance), **B** (tribology principles)

---

## Terminology

Use the preferred term consistently. Do not alternate between synonyms.

| Preferred | Avoid |
| ---------------------- | -------------------- |
| Arbor assembly | Shaft |
| Rip fence | Fence rail |
| Trunnion | Bracket |
| Miter slot | Groove |
| Elevation screw | Lift screw |
| Tilt mechanism | Bevel adjustment |
| Flex Drive shaft | Drive cable. |

---

## Units

| Measurement Type | Primary Unit | Secondary |
| --------------------- | ---------------- | ------------ |
| Linear | inch | millimeter |
| Angular | degrees | — |
| Torque | in·lbf. | ft·lbf |
| Alignment precision | 0.001 in | — |
| Runout precision | 0.0001 in | — |
| Angular precision | 0.01° | — |
| Bearing dimensions | ISO convention | — |
| Thread sizes | UNC/UNF | — |

Do not round silently. Keep units explicit in every value.

---

## Illustration Types

Recommended illustration types, with their purpose:

| Type | Purpose |
| ----------------------- | -------------------------------------- |
| Exploded view | Assembly identification and sequence |
| Cutaway diagram | Internal construction |
| Engineering drawing | Dimensioned specifications |
| Lubrication map | Service points |
| Wiring diagram | Electrical circuits |
| Calibration diagram | Alignment procedures |
| Cross section | Internal geometry |
| Flowchart | Decision trees and processes |
| Maintenance schedule | Time-based service intervals |
| Inspection checklist | Pre/post procedure verification |

Whenever an illustration would better explain a concept than text,
create one.

---

## Safety Sections

Each chapter includes three safety sub-sections:

1. Original Manufacturer Guidance
2. Modern Best Practice
3. Known Failure Modes

---

## Writing Style

- Neutral engineering register
- Active voice preferred
- Concise technical language
- Assume reader is an experienced hobbyist or professional woodworker
- No marketing language
- No unnecessary adjectives
- Explain why each procedure exists, not just how

---

## Headings

- H1: Document title only
- H2: Major sections
- H3: Subsections
- H4: Procedures and sub-procedures
- Do not skip heading levels

---

## Tables

Use tables for:

- Specifications with multiple dimensions
- Tolerance comparisons
- Parts lists
- Tool lists
- Evidence summaries

---

## Code and Measurements

Inline measurements use backticks: `0.001 in`
Multi-line data uses fenced code blocks or tables.

---

## Uncertainty

When information is unverified, use one of:

- "Not verified."
- "Requires confirmation against factory documentation."
- "Community consensus — independent verification needed."

Do not present uncertain information as confirmed fact.

---

## Related Decisions

HMS-DEC-0007, HMS-DEC-0008, HMS-DEC-0011, HMS-DEC-0027, HMS-DEC-0029

---

## Revision History

| Version | Date | Notes |
| --------- | ------------ | ---------------------------------------- |
| 0.1.0 | 2026-07-12 | Initial reconstruction from transcript |
