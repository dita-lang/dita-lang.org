---
author: OASIS DITA Technical Committee
---

# Reconciling topic and map metadata elements

The `<topicmeta>` element in maps can contain numerous metadata elements. These metadata elements can have an effect on the parent `<topicref>` element, any child `<topicref>` elements, and – if a direct child of the `<map>` element – on the .

For each element that can be contained in the `<topicmeta>` element, the following table addresses the following questions:

-   **How does it apply to the topic?**

    This column describes how the metadata specified within the `<topicmeta>` element interacts with the metadata specified in the referenced topic. In most cases, the properties are additive. For example, when a topic reference in a map contains `<category>installation</category>`, `<category>installation</category>` is added during processing to any metadata that is specified in the topic prolog.

-   **Does it cascade to other topics in the map?**

    This column indicates whether the specified metadata element cascades to nested `<topicref>` elements. For example, when a topic reference in a map contains `<author>Jane Doe</author>`, `<author>Jane Doe</author>` is added during processing to the metadata for all child topic references. Some elements do not cascade.

-   **What is the purpose when specified on the `<map>` element?**

    The map element permits metadata to be specified for the map. This column describes the effect that an element has when specified at this level.

-   **When set on the `<map>` element, does it apply to all topics referenced in the map?**

    When specified on the `<map>` element element, some metadata elements then apply to all the topics that are referenced in the map.


|Element|How does it apply to the topic?|Does it cascade to child `<topicref>` elements?|What is the purpose when set on the `<map>` element?|When set on the `<map>` element, does it apply to all topics referenced in the map?|
|-------|-------------------------------|-----------------------------------------------|----------------------------------------------------|-----------------------------------------------------------------------------------|
|`<audience>`|Add to the topic|Yes|Specify an audience for the map|Yes|
|`<author>`|Add to the topic|Yes|Specify an author for the map|Yes|
|`<category>`|Add to the topic|Yes|Specify a category for the map|Yes|
|`<copyright>`|Add to the topic|Yes|Specify a copyright for the map|Yes|
|`<critdates>`|Add to the topic|Yes|Specify critical dates for the map|Yes|
|`<data>`|Add to the topic|No, unless specialized for a purpose that cascades|No stated purpose|No|
|`<foreign>`|Add to the topic|No, unless specialized for a purpose that cascades|No stated purpose|No|
|`<keytext>`|Not added to the topic|No|No stated purpose|No|
|`<keywords>`|Add to the topic|No|No stated purpose|No|
|`<metadata>`|Add to the topic|Yes|Specify metadata for the map|Yes|
|`<othermeta>`|Add to the topic|No|Define metadata for the map|Yes|
|`<permissions>`|Add to the topic|Yes|Specify permissions for the map|Yes|
|`<prodinfo>`|Add to the topic|Yes|Specify product info for the map|Yes|
|`<publisher>`|Add to the topic|Yes|Specify a publisher for the map|No|
|`<resourceid>`|Add to the topic|No|Specify a resource ID for the map itself|No|
|`<shortdesc>`|Applies only to links created based on this occurrence in the map|No|Provide a description of the map|No|
|`<source>`|Add to the topic|No|Specify a source for the map|No|
|`<titlealt>`|Add to the topic before its `<titlealt>` elements|No|Specify an alternative title for the map|No|
|`<ux-window>`|Not added to the topic|No|Definitions are global, so setting at map level is equivalent to setting anywhere else.|No|

**Parent topic:**[Metadata cascading](../../archSpec/base/map-cascading.md)

**Related information**  


[topicmeta](../../langRef/base/topicmeta.md)

