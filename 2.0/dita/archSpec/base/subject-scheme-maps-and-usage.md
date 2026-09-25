---
author: OASIS DITA Technical Committee
---

# Subject scheme maps and their usage

Subject scheme maps can be used to define controlled values and subject definitions. The controlled values can be bound to attributes, as well as element and attribute pairs. The subject definitions can contain metadata and provide links to more detailed information; they can be used to classify content and provide semantics that can be used in taxonomies and ontologies.

A DITA map can reference a subject scheme map by using a `<mapref>` element. Processors also MAY provide parameters by which subject scheme maps are referenced.

-   **[Subject scheme maps](../../archSpec/base/subjectSchema.md)**  
Subject scheme maps use key definitions to define collections of controlled values and subject definitions.
-   **[Defining controlled values for attributes](../../archSpec/base/controlled-values-for-attributes.md)**  
Subject scheme maps can define controlled values for DITA attributes without having to define specializations or constraints. The list of available values can be modified quickly to adapt to new situations.
-   **[Binding controlled values to an attribute](../../archSpec/base/binding-controlled-values-to-attribute.md)**  
 The controlled values defined in a subject scheme map can be bound to an attribute or an element and attribute pair. This affects the expected behavior for processors and authoring tools.
-   **[Processing controlled attribute values](../../archSpec/base/processing-controlled-attribute-values.md)**  
An enumeration of controlled values can be defined with hierarchical levels by nesting subject definitions. This affects how processors perform filtering and flagging.
-   **[The subjectrefs attribute](../../archSpec/base/subjectrefs-attribute.md)**  
The `@subjectrefs` attribute specifies one or more keys that are defined by a subject definition in a subject scheme map. Multiple values are separated by white space.
-   **[Examples of subject scheme maps](../../archSpec/base/examples-subjectScheme-maps.md)**  
This section contains examples and scenarios that illustrate the use of subject scheme maps.

**Parent topic:**[DITA maps](../../archSpec/base/dita-maps.md)

