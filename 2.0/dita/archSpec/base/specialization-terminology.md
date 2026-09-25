---
author: OASIS DITA Technical Committee
---

# Specialization terminology

Certain terminology is used to discuss DITA specialization.

-   **base type**

    An element or attribute type that is not a specialization. All base types are defined by the DITA specification.

-   **extension element**

    Within a vocabulary module, an element type that can be extended, replaced, or constrained for use in a DITA document type.

-   **generalization**

    The process by which a specialized element is transformed into a less-specialized ancestor element or a specialized attribute is transformed into a less-specialized ancestor attribute. The original specialization-hierarchy information can be preserved in the generalized instance; this allows the original specialized type to be recreated from the generalized instance.

-   **specialization**

    \(1\) The act of defining new element or attribute types as a semantic refinement of existing element or attribute types

    \(2\) An element or attribute type that is a specialization of a base type

    \(3\) A process by which a generalized element is transformed into one of its more specialized element types or a generalized attribute is transformed into a more specialized attribute.

-   **specialization hierarchy**

    The sequence of element or attribute types, from the most general to most specialized, from which a given element or attribute type is specialized. The specialization hierarchy for a DITA element is formally declared through its `@class` attribute.

-   **structural type**

    A topic type or map type.


**Parent topic:**[DITA terminology, notation, and conventions](../../archSpec/base/dita-terminology.md)

