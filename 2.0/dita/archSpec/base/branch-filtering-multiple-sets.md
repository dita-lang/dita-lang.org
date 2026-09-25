---
author: OASIS DITA Technical Committee
---

# Branch filtering: Multiple referenced DITAVAL documents for a branch

Using multiple `<ditavalref>` elements as the children of a map or map branch indicates that the map or map branch will be independently filtered using the rules that are specified in each referenced DITAVAL document.

When multiple `<ditavalref>` elements occur as children of the same element, the rules in the referenced DITAVAL documents are processed independently. This effectively requires a processor to maintain one copy of the branch for each `<ditavalref>`, so that each copy can be filtered using different conditions.

**Note:** In most cases, it is possible to create a valid, fully-resolved view of a map with branches copied to reflect the different `<ditavalref>` conditions. However, this might not be the case when multiple `<ditavalref>` elements occur as direct children of a root map. In this case, it is possible that the map could be filtered in a manner that results in two or more distinct versions of the `<title>` or metadata. How this is handled is processor dependent. exampleFor example, when a root map has three `<ditavalref>` elements as children of `<map>`, a conversion to EPUB could produce an EPUB with three versions of the content, or it could produce three distinct EPUB documents.

When a processor maintains multiple copies of a branch for different condition sets, it has to manage situations where a single resource with a single key name results in two distinct resources. Key names must be modified in order to allow references to a specific filtered copy of the resource; without renaming, key references could only be used to refer to a single filtered copy of the resource, chosen by the processor. See [Branch filtering: Impact on resource and key names](branch-filtering-resource-names.md) for details on how to manage resource names and key names.

**Parent topic:**[Branch filtering](../../archSpec/base/branch-filtering.md)

