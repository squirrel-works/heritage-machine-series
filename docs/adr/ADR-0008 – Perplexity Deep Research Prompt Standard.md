# ADR-0008 – Perplexity Deep Research Prompt Standard  
  
## Title  

Standardize a Perplexity AI research prompt for authoritative-source discovery and section structure.  
  
## Context  

The project text includes a long, AI-agnostic research prompt specifically tailored to Perplexity Deep Research, with source priorities, topics, and section requirements (Summary, Primary Sources, Supporting Sources, Known Unknowns, Conflicting Information, Recommended Future Research).  
  
## Decision  

- Research runs using Perplexity (or similar tools) will start from a defined prompt that:  
  - Enforces source priority and forbids speculation.  
  - Requires explicit treatment of unknowns and conflicts.  
- Output from these runs is expected in structured Markdown, matching the project’s section headings.  
  
## Consequences  

- External research is more consistent and easier to integrate into chapters and reference sections.  
- Tool misuse (e.g., pulling from weak SEO content) is less likely, though still requires review.  
- The research prompt itself becomes a versioned artifact and may evolve as new standards or better sources become available.  
