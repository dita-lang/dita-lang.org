---
author: OASIS DITA Technical Committee
---

# Specialized convenience elements in the map group domain

DITA specialization can be used to create convenience elements that simplify authoring while preserving the processing behavior of existing base elements. Most of the elements in the map group domain are created for this purpose.

A convenience element is a specialization that adds clearer intent, default behavior, or simpler markup for common authoring patterns. Because the element is specialized from an existing base type, processors can continue to use the architectural semantics of the base element.

Convenience specializations in maps can reduce repetitive attribute authoring, make map structures easier to read, and improve consistency across large information sets. They also enable information architects to express intent directly in markup, rather than relying on implicit conventions.

The map group domain illustrates this pattern. Every element in this domain is a specialization of `<topicref>` created to support common authoring pattern. The same functions can be accomplished with `<topicref>`, but the elements are designed to make authoring easier and less error-prone.

exampleFor example, the `<topichead>` and `<topicgroup>` elements each provide a way to group other topics without directly referencing another resource. Each of these elements removes `@href` and `@keyref` while keeping most other attributes from the base `<topicref>` element. By also placing restrictions on the use of titles, the `<topicgroup>` element also provides a clearer way to group topic references without impacting the navigation hierarchy of the map.

exampleSimilarly, any key definition created with `<keydef>` can also be created with `<topicref>`, but the `<keydef>` element improves the authoring experience by requiring `@keys` and setting a default value for `@processing-role` to treat the referenced resource as resource-only.

**Parent topic:**[DITA maps and their usage](../../archSpec/base/dita-maps-and-their-usage.md)

