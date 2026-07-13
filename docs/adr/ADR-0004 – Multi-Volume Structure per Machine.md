# ADR-0004 – Multi-Volume Structure per Machine  
  
## Title  

Organize each machine’s documentation into multiple volumes (Restoration, Calibration, Jigs, Modernization, Engineering Reference, Parts Catalog).  
  
## Context  

The project text lays out a multi-volume plan for the 113.241680: restoration/service, calibration/accuracy, jigs/fixtures, modernization, parts catalog, and an overarching engineering reference.  
  
## Decision  

- Each machine in the Heritage Machine Series will be documented across multiple volumes:  
  - Volume 1: Restoration & Service  
  - Volume 2: Calibration & Precision Tuning  
  - Volume 3: Jigs & Fixtures  
  - Volume 4: Upgrades & Modernization  
  - Volume 5: Parts Catalog / Engineering Reference (EDP-style).  
- Volumes share standards, evidence model, and provenance system but can be developed incrementally.  
  
## Consequences  

- The project can ship useful subsets (e.g., Volume 1 + 2) before the entire catalog is complete.  
- Cross-volume references (e.g., parts tables vs. procedures) require a stable ID and provenance scheme.  
- The size and scope of the project are large by design (hundreds of pages per machine), which demands strong governance and versioning.  
  