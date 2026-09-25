---
author: OASIS DITA Technical Committee
---

# Basic DITA terminology

Certain terminology is used for basic DITA components.

-   **DITA document**

    An XML document that conforms to the requirements of this specification.

    A DITA document MUST have as its root element one of the following elements:

    -   `<map>` or a specialization of the `<map>` element
    -   `<topic>` or a specialization of the `<topic>` element
    -   `<dita>`, which cannot be specialized, but which allows for a DITA document with multiple root-level sibling topics
-   **DITA document type**

    A unique set of structural modules, domain modules, and constraint modules that taken together provide the XML element and attribute declarations that define the structure of DITA documents.

-   **DITA document-type shell**

    A set of DTD or RELAX NG declarations that implement a DITA document type by using the rules and design patterns that are included in the DITA specification. A DITA document-type shell includes and configures one or more structural modules, zero or more domain modules, and zero or more constraint modules. With the exception of the optional declarations for the `<dita>` element and its attributes, DITA document-type shells do not declare any element or attribute types directly.

-   **DITA element**

    An XML element instance whose type is a DITA element type.

-   **DITA element type**

    An element type that is either one of the base element types that are defined by the DITA specification, or a specialization of one of the base element types.

-   **DITA processor**

    A tool that implements one or more features of the DITA specification while conforming to the rules for each implemented feature.

-   **map instance**

    An occurrence of a map type in a DITA document.

-   **map type**

    A map or a specialization of map that defines a set of relationships among topic instances.

-   **structural type instance**

    An occurrence of a topic type or a map type in a DITA document.

-   **topic instance**

    An occurrence of a topic type in a DITA document.

-   **topic type**

    A topic or a specialization of topic that defines a complete unit of content.


**Parent topic:**[DITA terminology, notation, and conventions](../../archSpec/base/dita-terminology.md)

