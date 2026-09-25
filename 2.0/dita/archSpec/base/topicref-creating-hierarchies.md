---
author: OASIS DITA Technical Committee
---

# How `<topicref>` elements establish hierarchies in a map

In a DITA map, `<topicref>` elements establish hierarchical relationships among referenced topics and can define ordered sequences that processors can use to derive navigation.

Map authors can use `<topicref>` elements to define the structural organization of a publication. The nesting and order of `<topicref>` elements provide the primary basis for parent/child context and for sequential navigation in rendered output. Processors can use this organization to infer several relationships, while authors can use attributes such as `@collection-type` to make some of those relationships explicit.

-   **Parent/child relationships**

    A `<topicref>` element that contains other `<topicref>` elements establishes a hierarchical relationship in which the containing `<topicref>` is the parent and each nested `<topicref>` is a child.

    Processors use this hierarchy to determine structural context, for example, when generating navigation trees and breadcrumb paths. This allows for automated hierarchical relationships and linking based on map structure, rather than relying on links authored in the topic content.

-   **Next/previous relationships**

    Within a given branch of the map hierarchy, sibling `<topicref>` elements are ordered by document order. While these relationships are considered undered by default, processors can use this order in some contexts to determine effective next/previous relationships. Authors can also use `@collection-type` to make the next/previous ordering explicit.


Hierarchy and sequence are complementary. Nesting establishes containment and context, while ordering establishes progression.

When processors derive navigation from a map, they use both the hierarchical position and the relative order of `<topicref>` elements. The `<related-links>` element in a topic provides markup that can reflect these hierarchical links within the topic; processors might choose to merge map-based hierarchical links directly into any `<related-links>` section for rendering purposes. Processors might also choose to render different sets of links based on a selected output format. exampleFor example, a processor that generates next and previous links when rendering a map as HTML might choose to skip those links when rendering a map as PDF.

**Parent topic:**[DITA maps and their usage](../../archSpec/base/dita-maps-and-their-usage.md)

**Related information**  


[Table of contents](../../archSpec/base/table-of-contents.md)

[related-links](../../langRef/base/related-links.md)

