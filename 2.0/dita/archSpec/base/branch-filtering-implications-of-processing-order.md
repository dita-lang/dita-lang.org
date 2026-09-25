---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Branch filtering: Implications of processing order

The branch filtering mechanism can result in changes to the global key space for a root map. As a result, processors are required to evaluate branch filtering in order to construct the key space.

The full effects of the branch filtering process MUST be calculated by processors before they construct the effective map and key scope structure. This requirement comes from the fact that the branch filtering process can result in new or renamed keys, key scopes, or URIs that make up the key space.

**Note:** The `@keyref` attribute is explicitly disallowed on `<ditavalref>`. This prevents any confusion resulting from a `@keyref` that resolves to additional key- or resource-renaming metadata.

In general, the DITA specification refrains from mandating a processing order; thus publication results can vary slightly depending on the order in which processes are run. With branch filtering, processors are not required to apply filter conditions specified outside of the map and filter conditions specified with `<ditavalref>` at the same time in a publishing process.

example

For example, a processor might use the following processing order:

1.  Apply externally-specified filter conditions to maps
2.  Apply filtering based on `<ditavalref>` elements

Because externally-specified "exclude" conditions always take precedence over branch-specific conditions, content excluded based on external conditions will always be removed, regardless of the order in which processors evaluate conditions.

Processors should consider the following points when determining a processing order:

-   If links are generated based on the map hierarchy, those links should be created using the renamed keys and URIs that result from evaluating the `<ditavalref>` filter conditions, to ensure that the links are consistent within the modified branches. For example, sequential links based on a map hierarchy should remain within the appropriate modified branch.
-   If URI-based content references are resolved in topics before the `<ditavalref>` filtering conditions are evaluated, content that applies to multiple audiences can be brought in and \(later in the process\) selectively filtered by branch. exampleFor example, if a set of installation steps is pulled in with conref \(from outside the branch\), it might contain information that is later filtered by platform based on `<ditavalref>`. This results in copies of the steps that are specific to each operating system. If conref is processed after the `<ditavalref>`, content might be pulled in that has not been appropriately filtered for the new context.
-   The same scenario applies to conref values that push content into the branch.
    -   Pushing content into a branch before resolving the `<ditavalref>` conditions allows content for multiple conditions to be pushed and then filtered by branch based on the `<ditavalref>` conditions.
    -   If the branch using `<ditavalref>` pushes content elsewhere, resolving `<ditavalref>` first could result in multiple copies of the content to be pushed \(one for each branch\), resulting in multiple potentially conflicting copies pushed to the new destination.

**Parent topic:**[Branch filtering](../../archSpec/base/branch-filtering.md)

