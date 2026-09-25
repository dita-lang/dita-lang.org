---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Handling resource name conflicts caused by branch filtering

It is possible to construct a root map where the branch filtering mechanism results in resource name conflicts.

It is an error if `<ditavalref>`-driven branch cloning results in multiple copies of a topic that have the same resolved name. Processors SHOULD report an error in such cases. Processors MAY recover by using an alternate naming scheme for the conflicting topics.

In rare cases, a single topic might appear in different branches that set different conditions, yet still produce the same result. exampleFor example, a topic might appear in both the admin and novice copies of a branch but not contain content that is tailored to either audience; in that case, the filtered copies would match. A processor MAY consider this form of equivalence when determining if two references to the same resource should be reported as an error.

**Parent topic:**[Branch filtering: Impact on resource and key names](../../archSpec/base/branch-filtering-resource-names.md)

