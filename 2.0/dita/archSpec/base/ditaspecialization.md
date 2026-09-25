---
author: OASIS DITA Technical Committee
---

# Overview of DITA extension facilities

DITA provides three extension facilities: Document-type configuration, specialization, and element-type configuration.

-   **Document-type configuration**

    Document-type configuration enables the definition of DITA document types that include only the vocabulary modules that are required for a given set of documents. There is no need to modify the vocabulary modules. Document-type configurations are implemented as document-type shells.

-   **Specialization**

    Specialization enables the creation of new element types in a way that preserves the ability to interchange those new element types with conforming DITA applications. Specializations are implemented as vocabulary modules, which are integrated into document-type shells.

    Specialization modules declare the elements and entities that are unique to a specialization. The separation of the vocabulary and its declarations into modules makes it easy to extend existing modules, because new modules can be added without affecting existing document types. It also makes it easy to assemble elements from different sources into a single document-type shell and to reuse specific parts of the specialization hierarchy in more than one document-type shell.

    DITA content that uses specializations can be treated as, or converted to, unspecialized markup through the process of generalization. The information about the original specialized form can be retained.

-   **Element-type configuration**

    Element-type configuration enables DITA architects to modify the content models and attribute lists for individual elements, without modifying the vocabulary modules in which the elements are defined.

    There are two types of element configuration: Constraint and expansion. Both constraint and expansion are implemented as modules that are integrated into document-type shells:

    -   **Constraint**

        Constraint modules enable the restriction of content models and attribute lists for individual elements.

    -   **Expansion**

        Expansion modules enable the expansion of content models and attribute lists for individual elements.


**Parent topic:**[Configuration and specialization](../../archSpec/base/configuration-specialization-and-constraints.md)

