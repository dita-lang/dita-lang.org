---
author: OASIS DITA Technical Committee
---

# Basic map elements

DITA maps are built from a few core elements that are used for referencing and organizing topics. In addition, the `<topicmeta>` element can be used to specify metadata for the map, individual topics, or groups of topics.

-   **[keytext](../../langRef/base/keytext.md)**  
Key text is variable or link text that is used when resolving key references. It also specifies alternate text for images that are referenced by keys.
-   **[map](../../langRef/base/map.md)**  
A DITA map is the mechanism for aggregating topic references and defining a context for those references. It contains references to topics, maps, and other resources.These references are organized into hierarchies, groups, and tables.
-   **[navref](../../langRef/base/navref.md)**  
A navigation reference is a reference to another map that is preserved as a transcluding link in the result deliverable, rather than resolved when the deliverable is produced. Output formats that support such linking can integrate the referenced resource when displaying the referencing map to an end user.
-   **[relcell](../../langRef/base/relcell.md)**  
A cell in a relationship table is a group of one or more topic references that are related to the topic references in other cells of the same row.
-   **[relcolspec](../../langRef/base/relcolspec.md)**  
A column specification in a relationship table column that provides default attribute values for the references in that column of a relationship table.
-   **[relheader](../../langRef/base/relheader.md)**  
A header row in a relationship table is a group of column definitions for a relationship table.
-   **[relrow](../../langRef/base/relrow.md)**  
A row in a relationship table creates a relationship between the cells in that row, which is often expressed in output as links between the topics or resources that are referenced in those cells.
-   **[reltable](../../langRef/base/reltable.md)**  
A relationship table is a mechanism that creates relationships among topics, based on the familiar table model of rows, columns, and cells.
-   **[topicref](../../langRef/base/topicref.md)**  
A topic reference is the mechanism for referencing a topic \(or another resource\) from a DITA map. It can nest, which enables the expression of navigation and table-of-content hierarchies, as well as containment hierarchies and parent-child relationships.
-   **[topicmeta](../../langRef/base/topicmeta.md)**  
Topic metadata is metadata that applies to a topic based on its context in a map.
-   **[ux-window](../../langRef/base/ux-window.md)**  
A UX window specification is a collection of metadata for a window or viewport in which a user assistance topic or web page can be displayed. The window or viewport can be referenced by the `<resourceid>` element that is associated with a topic or `<topicref>` element.

**Parent topic:**[Map elements](../../langRef/containers/map-elements.md)

