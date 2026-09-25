---
author: OASIS DITA Technical Committee
---

# Subject scheme elements

Subject scheme elements are used to define sets of controlled values and taxonomic subjects, bind controlled values to attributes as enumerations, and specify relationships among taxonomic subjects.

-   **[attributedef](../../langRef/base/attributedef.md)**  
The `<attributedef>` element specifies an attribute that is bound to a set of controlled values. This binding restricts the permissible values for the attribute to the set of controlled values.
-   **[defaultSubject](../../langRef/base/defaultSubject.md)**  
The `<defaultSubject>` element specifies the default value for the attribute in cases where no value is specified. The default value must be one of the controlled values that are bound to the attribute.
-   **[elementdef](../../langRef/base/elementdef.md)**  
The `<elementdef>` element specifies an element to which an attribute and set of controlled values are bound.
-   **[enumerationdef](../../langRef/base/enumerationdef.md)**  
An enumeration definition is a binding of an attribute to a set of controlled values. The set of controlled values can be limited to a specific element or it could be empty.
-   **[schemeref](../../langRef/base/schemeref.md)**  
A scheme reference is the mechanism for referencing a subject scheme map.
-   **[subjectdef](../../langRef/base/subjectdef.md)**  
The `<subjectdef>` element defines a subject. A subject can be used to define a controlled value or a taxonomic classification.
-   **[subjectHead](../../langRef/base/subjectHead.md)**  
The `<subjectHead>` element provides a heading for a group of subjects, for use if the subject scheme is rendered and displayed.
-   **[subjectHeadMeta](../../langRef/base/subjectHeadMeta.md)**  
The `<subjectHeadMeta>` element enables a navigation title and short description to be associated with a subject heading, for use if the subject scheme is rendered and displayed.
-   **[subjectScheme](../../langRef/base/subjectScheme.md)**  
The `<subjectScheme>` element defines controlled values and taxonomic subjects.

**Parent topic:**[Map elements](../../langRef/containers/map-elements.md)

