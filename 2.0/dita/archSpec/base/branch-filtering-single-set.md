---
author: OASIS DITA Technical Committee
---

# Branch filtering: Single referenced DITAVAL document for a branch

Using a single `<ditavalref>` element as a child of a map or map branch indicates that the map or map branch is filtered using the rules specified in the referenced DITAVAL document.

The following rules outline how the filtering conditions that are specified in a DITAVAL document are applied:

-   **`<ditavalref>` element as a direct child of a map**

    The filtering conditions are applied to the entire map.

-   **`<ditavalref>` element within a map branch**

    The filtering conditions are used to process the entire branch, including the parent element that contains the `<ditavalref>` element.

-   **`<ditavalref>` element within a `<topicref>` reference to a local map**

    The filtering conditions are applied to the submap.

-   **`<ditavalref>` element within a `<topicref>` reference to peer map**

    The reference conditions are **not** applied to the peer map.

-   **`<ditavalref>` element with no `@href` attribute**

    If a `<ditavalref>` element does not specify `@href`, it contributes no additional filtering conditions. The element is otherwise processed normally, including any resource- or key-scope-renaming metadata.


**Parent topic:**[Branch filtering](../../archSpec/base/branch-filtering.md)

