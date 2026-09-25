---
author: OASIS DITA Technical Committee
---

# Configuration and specialization

The extension facilities of DITA allow document-type shells, vocabulary modules, and element-configuration modules \(constraint and expansion\) to be combined to create specific DITA document types.

-   **[Overview of DITA extension facilities](../../archSpec/base/ditaspecialization.md)**  
DITA provides three extension facilities: Document-type configuration, specialization, and element-type configuration.
-   **[Document-type configuration](../../archSpec/base/configuration.md)**  
Document-type configuration enables the definition of DITA document types that include only the vocabulary modules that are required for a given set of documents. There is no need to modify the vocabulary modules. Document-type configurations are implemented using document-type shells.
-   **[Specialization](../../archSpec/base/specialization.md)**  
 The specialization feature of DITA allows for the creation of new element types and attributes that are explicitly and formally derived from existing types. This facilitates interchange of conforming DITA content and ensures a minimum level of common processing for all DITA content. It also allows specialization-aware processors to add specialization-specific processing to existing base processing.
-   **[Generalization](../../archSpec/base/generalization.md)**  
Generalization is the process of reversing a specialization. It converts specialized elements or attributes into the original types from which they were derived.
-   **[Constraints](../../archSpec/base/constraints.md)**  
Constraint modules restrict content models or attribute lists for specific element types, remove certain extension elements from an integrated domain module, or replace base element types with domain-provided, extension element types.
-   **[Expansion modules](../../archSpec/base/expansion-modules.md)**  
Expansion modules enable the extension of content models and attribute lists for individual elements. Expansion modules are the opposite of constraints. They add elements and attributes to specific content models and attribute lists, rather than removing them.

