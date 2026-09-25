---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Branch filtering

The branch filtering mechanism enables map authors to set filtering conditions for specific branches of a map. This makes it possible for multiple conditional-processing profiles to be applied within a single publication.

Conditional processing profiles are most often used for an entire root map, with rules applied to all content in that root map. The branch filtering mechanism uses the `<ditavalref>` element to apply rules from a single DITAVAL document against a subset of content.

The location of the `<ditavalref>` element determines the content to which filtering conditions are applied. The filtering conditions then are used to filter the map branch itself \(that is, the map elements used to create the branch\). In addition, it is used to filter local maps and topics that are referenced by that branch.

When working with `<ditavalref>`, a map branch includes the parent element that contains the `<ditavalref>` element, any child elements, and all resources that are referenced by the parent element or its children. While there is no technical restriction that forces `<ditavalref>` to appear before peer topic references, placing them first is considered a best practice and all examples in the specification will use this convention.

The `<ditavalref>` element also provides the ability to process a single branch of content multiple times, applying unique conditions to each instance of the branch.

-   **[Overview of branch filtering](../../archSpec/base/branch-filtering-overview.md)**  
Maps or map branches can be filtered by adding a `<ditavalref>` element that specifies the DITAVAL document to use for that map or map branch.
-   **[How filtering rules interact](../../archSpec/base/branch-filtering-interactions.md)**  
With branch filtering, it is possible to set include or exclude rules globally, within a map, and within an already filtered map branch. The general rule for conflicts is that once specified, "exclude" conditions are in effect for the entire map or branch.
-   **[Branch filtering: Single referenced DITAVAL document for a branch](../../archSpec/base/branch-filtering-single-set.md)**  
Using a single `<ditavalref>` element as a child of a map or map branch indicates that the map or map branch is filtered using the rules specified in the referenced DITAVAL document.
-   **[Branch filtering: Multiple referenced DITAVAL documents for a branch](../../archSpec/base/branch-filtering-multiple-sets.md)**  
Using multiple `<ditavalref>` elements as the children of a map or map branch indicates that the map or map branch will be independently filtered using the rules that are specified in each referenced DITAVAL document.
-   **[Branch filtering: Impact on resource and key names](../../archSpec/base/branch-filtering-resource-names.md)**  
When map branches are cloned by a processor in order to support multiple condition sets, processors must manage conflicting resource and key names. The DITAVALref domain includes metadata elements that authors can use to specify how resource and key names are renamed.
-   **[Branch filtering: Implications of processing order](../../archSpec/base/branch-filtering-implications-of-processing-order.md)**  
The branch filtering mechanism can result in changes to the global key space for a root map. As a result, processors are required to evaluate branch filtering in order to construct the key space.
-   **[Examples of branch filtering](../../archSpec/base/examples-of-branch-filter.md)**  
The branch filtering examples illustrate the processing expectations for various scenarios that involve `<ditavalref>` elements. Processing examples use either before and after sample markup or expanded syntax that shows the equivalent markup without the `<ditavalref>` elements.

**Parent topic:**[DITA processing](../../archSpec/base/ditaprocessing.md)

