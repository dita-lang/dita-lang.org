---
author: OASIS DITA Technical Committee
---

# Specialization

The specialization feature of DITA allows for the creation of new element types and attributes that are explicitly and formally derived from existing types. This facilitates interchange of conforming DITA content and ensures a minimum level of common processing for all DITA content. It also allows specialization-aware processors to add specialization-specific processing to existing base processing.

-   **[Overview of specialization](../../archSpec/base/specialization-overview.md)**  
Specialization allows information architects to define new kinds of information \(new structural types or new domains of information\), while reusing as much of existing design and code as possible, and minimizing or eliminating the costs of interchange, migration, and maintenance.
-   **[Modularization](../../archSpec/base/specialization-modularization.md)**  
Modularization is at the core of DITA design and implementation. It enables reuse and extension of the DITA specialization hierarchy.
-   **[Vocabulary modules](../../archSpec/base/specialization-vocabulary-modules.md)**  
A DITA element type or attribute is declared in exactly one vocabulary module.
-   **[Specialization rules for element types](../../archSpec/base/specialization-rules-elements.md)**  
There are certain rules that apply to element type specializations.
-   **[Specialization rules for attributes](../../archSpec/base/specialization-rules-attributes.md)**  
There are certain rules that apply to attribute specializations.
-   **[The class attribute rules and syntax](../../archSpec/base/specialization-class-attribute.md)**  
The specialization hierarchy of each DITA element is declared as the value of the `@class` attribute. The `@class` attribute provides a mapping from the current name of the element to its more general equivalents.The `@class` attribute also can provide a mapping from the current name to more specialized equivalents. All specialization-aware processing can be defined in terms of `@class` attribute values.
-   **[The specializations attribute rules and syntax](../../archSpec/base/specialization-specializations-attribute.md)**  
The `@specializations` attribute enables processors to determine what attribute specializations are available in a document. The attribute is declared on the root element for each topic or map type. Each attribute domain defines a token to declare the extension. Theeffective value of the `@specializations` attribute is composed of these tokens.
-   **[Specializing to include non-DITA content](../../archSpec/base/specialization-including-non-dita-content.md)**  
You can extend DITA to incorporate standard vocabularies for non-textual content, such as MathML and SVG, as markup within DITA documents. This is done by specializing the `<foreign>` element.
-   **[Sharing elements across specializations](../../archSpec/base/specialization-sharing-elements-across-modules.md)**  
Specialization enables reuse of elements from ancestor specializations. However, it is also possible to reuse elements from non-ancestor specializations.

**Parent topic:**[Configuration and specialization](../../archSpec/base/configuration-specialization-and-constraints.md)

