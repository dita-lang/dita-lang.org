# `@id` attribute

The `@id` attribute assigns an identifier to DITA elements so that the elements can be referenced.

The `@id` attribute is available for most elements. An element must have a valid value for the `@id` attribute before it can be referenced using a fragment identifier. The requirements for the `@id` attribute differ depending on whether it is used on a topic element, a map element, or an element within a topic or map.

All values for the `@id` attribute must be XML name tokens.

The `@id` attributes for `<topic>` and `<map>` elements are declared as XML attribute type ID; therefore, they must be unique with respect to other XML IDs within the XML document that contains the topic or map element. The `@id` attribute for most other elements within topics and maps is not declared to be XML ID; this means that XML parsers do not require that the values of those `@id` attributes be unique. However, the DITA specification requires that all IDs be unique within the context of a topic. For this reason, tools might provide an additional layer of validation to flag violations of this rule.

Within documents that contain multiple topics, identifiers are scoped to the individual topic, excluding child topics. The values of the `@id` attribute for all non-topic elements only need to be unique within that topic. For example, within one document a section can have the same `@id` as another section as long as the two are in different topics. This is true even if one of those topics is nested within the other; the scope is determined by the closest topic element within the document hierarchy.

Within a map document, the values of the `@id` attributes for all elements SHOULD be unique. When two elements within a map have the same value for the `@id` attribute, processors MUST resolve references to that ID to the first element with the given ID value in document order.

|Element|XML attribute type for `@id`|Must be unique within|Required?|
|-------|----------------------------|---------------------|---------|
|`<map>`|ID|document|No|
|`<topic>`|ID|document|Yes|
|sub-map \(elements nested within a map\)|NMTOKEN|document|Usually no, with some exceptions|
|sub-topic \(elements nested within a topic\)|NMTOKEN|individual topic|Usually no, with some exceptions|

**Note:** For tools that automatically assign `@id` attributes to elements, it is important to recognize that the presence or absence of an `@id` attribute on the `<fn>` element will affect how the element is processed. For most other elements, the presence of a value for the `@id` attribute has no impact on processing.

