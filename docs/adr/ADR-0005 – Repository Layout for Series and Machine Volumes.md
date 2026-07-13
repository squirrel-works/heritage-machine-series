# ADR-0005 – Repository Layout for Series and Machine Volumes  
  
## Title  

Adopt a series-level repo with per-machine subtrees and standardized directories.  
  
## Context  

The project text describes an overall Heritage Machine Series repository and a `series/craftsman-113241680/` subtree with manuscript, engineering, drawings, photography, measurements, templates, and releases directories.  
  
## Decision  

- The top-level repo will contain:  
  - Governance docs (`PROJECT.md`, `STYLE_GUIDE.md`, `RESEARCH.md`, `CONTRIBUTING.md`, `REFERENCES.bib`, etc.).  
  - Standards (`terminology.md`, `units.md`, `evidence_levels.md`, `citations.md`, etc.).  
  - Shared assets and scripts.  
- Each machine lives under `series/<machine-id>/` with:  
  - `README.md` and machine-level specs CSVs.  
  - `manuscript/volume-XX-…/` chapters.  
  - `engineering/`, `drawings/`, `measurements/`, `photography/`, `templates/`, `releases/` subtrees.  
  
## Consequences  

- New machines can reuse the same structure, standards, and tooling with minimal friction.  
- CI/publishing pipelines can treat each machine’s subtree as an independent documentation target.  
- Tooling (scripts, database integration) must understand both series-level and machine-level paths.  
