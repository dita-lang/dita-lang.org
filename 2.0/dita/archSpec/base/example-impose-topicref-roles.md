---
author: OASIS DITA Technical Committee
---

# Example: How `<topicref>` roles are imposed on referenced maps

In this scenario, a specialized `<topicref>` element references content in another map.

Consider the scenario of a `<chapter>` element from the Bookmap specialization that references a DITA map. This scenario could take several forms:

-   **Referenced map contains a single top-level `<topicref>` element**

    The entire branch functions as if it were included in the bookmap. The "chapter" role is imposed on the branch, with the result that the top-level `<topicref>` element is processed as if it were the `<chapter>` element.

-   **Referenced map contains multiple top-level `<topicref>` elements**

    The "chapter" role is imposed on each top-level element in the referenced map. Each top-level `<topicref>` element is processed as if it were a `<chapter>` element.

-   **Referenced map contains a single `<appendix>` element**

    The "chapter" role is imposed on the `<appendix>` element, which is processed as it were a `<chapter>` element.

-   **Referenced map contains a single `<part>` element, with nested `<chapter>` elements**

    The "chapter" role is imposed on the `<part>` element, which is processed as it were a `<chapter>` element. Nested `<chapter>` elements might not be understandable by processors, which can treat this as an error or recover as they are able.

-   **`<chapter>` element references a single `<topicref>` element rather than a map**

    The "chapter" role is imposed on the referenced `<topicref>` element, which is processed as if it were a `<chapter>` element.


**Parent topic:**[Imposing roles when referencing a map](../../archSpec/base/impose-topicref-role.md)

