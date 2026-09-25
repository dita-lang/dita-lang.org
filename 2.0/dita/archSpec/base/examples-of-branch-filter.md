---
author: OASIS DITA Technical Committee
---

# Examples of branch filtering

The branch filtering examples illustrate the processing expectations for various scenarios that involve `<ditavalref>` elements. Processing examples use either before and after sample markup or expanded syntax that shows the equivalent markup without the `<ditavalref>` elements.

-   **[Example: Single ditavalref on a branch](../../archSpec/base/example-single-ditavalref-on-branch.md)**  
In this scenario, a single `<ditavalref>` element is used to supply filtering conditions for a branch.
-   **[Example: Multiple ditavalref elements on a branch](../../archSpec/base/example-multiple-ditavalref.md)**  
In this scenario, multiple `<ditavalref>` elements are used on a single map branch to create multiple distinct copies of the branch.
-   **[Example: Single ditavalref as a child of map](../../archSpec/base/example-ditavalref-as-child-of-map.md)**  
In this scenario, a `<ditavalref>` element is a direct child of the `<map>` element, which is equivalent to setting global filtering conditions for the map.
-   **[Example: Single ditavalref in a reference to a map](../../archSpec/base/example-ditavalref-with-mapref.md)**  
In this scenario, a `<ditavalref>` element is used when referencing a map. This is equivalent to setting filtering conditions for the referenced map.
-   **[Example: Multiple ditavalref elements as children of map in a root map](../../archSpec/base/example-multiple-ditavalref-as-child-of-map.md)**  
In this scenario, multiple instances of the `<ditavalref>` element are specified as direct children of the `<map>` element in a root map. This is equivalent to setting multiple sets of global filtering conditions for the root map.
-   **[Example: Multiple ditavalref elements in a reference to a map](../../archSpec/base/example-multiple-ditavalref-with-mapref.md)**  
In this scenario, multiple instances of the `<ditavalref>` element are specified in a reference to a map. This is equivalent to referencing that map multiple times, with each reference nesting one of the `<ditavalref>` elements.
-   **[Example: ditavalref within a branch that already uses ditavalref](../../archSpec/base/example-ditavalref-in-filtered-branch.md)**  
In this scenario, a branch is filtered because a `<ditavalref>` element is present, and another `<ditavalref>` deeper within that branch supplies additional conditions for a subset of the branch.
-   **[Example: ditavalref error conditions](../../archSpec/base/example-ditavalref-error-conditions.md)**  
In this scenario, multiple, non-equivalent copies of the same resource name are created as a result of branch filtering. In addition, the process results in duplicate key names, making it impossible to reliably reference individual result topics.

**Parent topic:**[Branch filtering](../../archSpec/base/branch-filtering.md)

