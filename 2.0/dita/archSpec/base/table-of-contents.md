---
author: OASIS DITA Technical Committee
---

# Table of contents

Processors can generate a table of contents \(TOC\) based on the hierarchy of the elements in a DITA map. By default, each `<topicref>` element in a map represents a node in the TOC. These topic references define a navigation tree.

When a map contains a topic reference to a map \(often called a map reference\), processors integrate the navigation tree of the referenced map with the navigation tree of the referencing map at the point of reference. In this way, a deliverable can be compiled from multiple DITA maps.

**Note:** If a `<topicref>` element that references a map contains child `<topicref>` elements, the processing behavior regarding the child `<topicref>` elements is undefined.

The effective navigation title is used for the value of the TOC node. A TOC node is generated for every `<topicref>` element that references a topic or specifies a navigation title, except in the following cases:

-   The `@processing-role` attribute that is specified on the `<topicref>` element or an ancestor element is set to "resource-only".
-   Conditional processing is used to filter out the node or an ancestor node.
-   There is no information from which a TOC entry can be constructed; there is no referenced resource or navigation title.
-   The node is a `<topicgroup>` element, even if it specifies a navigation title.

To suppress a `<topicref>` element from appearing in the TOC, set the `@toc` attribute to "no". The value of the `@toc` attribute cascades to child `<topicref>` elements, so if `@toc` is set to "no" on a particular `<topicref>`, all children of the `<topicref>` element are also excluded from the TOC. If a child `<topicref>` overrides the cascading operation by specifying `toc="yes"`, then the node that specifies `toc="yes"` appears in the TOC \(minus the intermediate nodes that set `@toc` to "no"\).

**Parent topic:**[Navigation](../../archSpec/base/navigation.md)

**Related information**  


[How topicref elements establish hierarchies in a map](../../archSpec/base/topicref-creating-hierarchies.md)

