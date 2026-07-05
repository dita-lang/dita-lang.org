---
layout: site.njk
title: 'Colophon'
---

Specifications are generated from DITA source pulled from GitHub. DITA source is combined with
generated content that is based on DITA RelaxNG schemas.

## Profiling

Specification content can be viewed using different profiles. The profile is selected from a
drop-down menu in the site header. Supported profiles are:

- Default — intended for end-users. It contains generated content models in prose format and
  highlights non-normative sections.
- Implementer — intended for implementers. It contains generated content models in terse syntax
  format and highlights non-normative sections. Attribute lists are inlined for easier access.
- Source — intended for DITA source reviewers. It only contains content from DITA source.
- Review — indended to DITA source reviewers. It only contains content from DITA source, including draft comments.
- Debug — intended for debugging site publishing issues. It contains all generated content even
  when the information is duplicated.
