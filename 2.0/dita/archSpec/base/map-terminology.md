---
author: OASIS DITA Technical Committee
---

# Map terminology

Certain terminology is used for DITA maps.

-   **root map**

    The DITA map that is provided as input for a processor.

-   **submap**

    A DITA map that is referenced with a `@scope` attribute that evaluates as "local". The value of the scope attribute might be explicitly set, be defaulted, or cascade from another element.

-   **peer map**

    A DITA map that is referenced with a `@scope` attribute that evaluates as "peer". The value of the scope attribute might be explicitly set, be defaulted, or cascade from another element.

-   **map branch**

    A `<topicref>` element or a specialization of `<topicref>`, along with any child elements and all resources that are referenced by the original element or its children.


**Parent topic:**[DITA terminology, notation, and conventions](../../archSpec/base/dita-terminology.md)

