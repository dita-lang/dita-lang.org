---
author: OASIS DITA Technical Committee
---

# Generalization

Generalization is the process of reversing a specialization. It converts specialized elements or attributes into the original types from which they were derived.

-   **[Overview of generalization](../../archSpec/base/generalization-overview.md)**  
Specialized content can be generalized to any ancestor type. The generalization process can preserve information about the former level of specialization to allow round-tripping between specialized and unspecialized forms of the same content.
-   **[Element generalization](../../archSpec/base/generalization-elements.md)**  
Elements are generalized by examining the `@class` attribute. When a generalization process detects that an element belongs to one of the modules that is being generalized, the element is renamed to a more general form.
-   **[Processor expectations when generalizing elements](../../archSpec/base/generalization-processor-expectations.md)**  
Generalization processors convert elements from one or more modules into their less specialized form. The list of modules can be supplied to a generalization processor, or it can be inferred based on knowledge of a target document-type shell.
-   **[Attribute generalization](../../archSpec/base/generalization-attributes.md)**  
DITA provides a syntax to generalize attributes that have been specialized from the `@props` or `@base` attribute.
-   **[Generalization with cross-specialization dependencies](../../archSpec/base/generalization-w-cross-specialization-dependencies.md)**  
Dependencies across specializations limit generalization targets to those that either preserve the dependency or eliminate them. Some generalization targets will not be valid and need to be detected before generalization occurs.

**Parent topic:**[Configuration and specialization](../../archSpec/base/configuration-specialization-and-constraints.md)

