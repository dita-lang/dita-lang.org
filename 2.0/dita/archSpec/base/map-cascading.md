---
author: OASIS DITA Technical Committee
---

# Metadata cascading

Metadata cascading is the process by which metadata elements and attributes specified for a map or for a topic reference cascade to nested references. This allows metadata properties to be set once and apply to an entire map or branch of a map.

-   **[Cascading of metadata attributes in a DITA map](../../archSpec/base/cascading-in-a-ditamap.md)**  
Certain attributes cascade throughout a map, which facilitates attribute and metadata management. When attributes cascade, they apply to the elements that are children of the element where the attributes were specified. Cascading applies to a containment hierarchy, as opposed to a specialization hierarchy.
-   **[Reconciling topic and map metadata elements](../../archSpec/base/reconciling-topic-and-map-metadata.md)**  
The `<topicmeta>` element in maps can contain numerous metadata elements. These metadata elements can have an effect on the parent `<topicref>` element, any child `<topicref>` elements, and – if a direct child of the `<map>` element – on the .
-   **[Map-to-map cascading behaviors](../../archSpec/base/map-to-map-cascading-of-metadata.md)**  
When a DITA map or map branch is referenced by another DITA map, by default certain rules apply. These rules pertain to the cascading behaviors of attributes, metadata elements, and the roles that are assigned to content , for example, the role of "Chapter" that is assigned by a `<chapter>` element. Attributes and elements that cascade within a map generally follow the same rules when cascading from one map to another map, but there are some exceptions and additional rules that apply.
-   **[Examples of metadata cascading](../../archSpec/base/examples-of-cascading.md)**  
These examples illustrate the processing expectations for cascading metadata. The processing examples use either before and after sample markup or expanded syntax that shows the equivalent markup withough cascading.

**Parent topic:**[DITA processing](../../archSpec/base/ditaprocessing.md)

