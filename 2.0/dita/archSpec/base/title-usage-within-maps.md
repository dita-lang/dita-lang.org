---
author: OASIS DITA Technical Committee
---

# Using titles in maps and submaps

Titles in DITA maps can serve different roles depending on where they are located. The `<titlealt>` element and the alternative-title domain also provide the ability to include a variety of different titles for additional purposes. This topic serves as a guide for how implementations generally treat titles when publishing DITA content.

Map authors use titles to label maps and map structures. Some of these titles are expected to appear in any published version of the map, while others might serve as metadata or might be ignored entirely by a processor. In most cases, a processor can choose what titles to display and which to treat as metadata. While this topic is intended to lay out some common expectations, the specification does lay out some

-   **`<title>` in the root map**

    The title of the root map generally represents the title of the publication.

-   **`<title>` in a nested map**

    In most cases, processors will assemble a navigation tree for a document made up of the root map and all submaps. There is no default expectation that the title of a submap becomes part of the navigation hierarchy. However, a processor can make use of the title of a nested map if that is useful for a given publication format.

-   **`<titlealt>` within the `<topicmeta>` element**

    Alternative titles can appear inside of `<topicmeta>` for both `<map>`, `<topicref>`, and some relationship table elements. The behavior of alternative titles is governed by the rules laid out in [titlealt](../../langRef/base/titlealt.md).

-   **`<title>` within `<reltable>`**

    See [reltable](../../langRef/base/reltable.md) for information about titles inside of relationship tables.


**Parent topic:**[DITA maps and their usage](../../archSpec/base/dita-maps-and-their-usage.md)

**Related information**  


[Alternative titles](../../archSpec/base/alternative-titles.md)

