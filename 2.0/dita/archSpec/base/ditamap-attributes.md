---
author: OASIS DITA Technical Committee
---

# DITA map attributes

DITA maps have unique attributes that are designed to control the way that relationships are interpreted for different output purposes. In addition, DITA maps share many metadata and linking attributes with DITA topics.

**Draft comment:**rodaande   
We currently redefine a lot of attributes in this topic that are more comprehensively defined in the element reference; we need to reconcile those that are defined differently and ideally reuse definitions.

Kris Eberlein, 28 September 2022

I alphabeticized the attributes in this topic. I also added them to draft comments in the definitions in the "Attributes" topics, so that we could consider them side-by-side.

**Draft comment:**robander   
TO RESOLVE 11 May 2026: compare side-by-side, set up conref level reuse if we can, and if not, just make sure they do not conflict and move on.

unrelated, in the next sentence, should "Web pages" really be capitalized? Should it say HTML pages?

Update 20 May 2026: Kris will look at this section

DITA maps often encode structures that are specific to a particular medium or output, for example, Web pages or a PDF document. Attributes, such as `@deliveryTarget` and `@toc`, are designed to help processors interpret the DITA map for each kind of output.

-   **`@cascade`**

    Specifies whether the default rules for the cascading of metadata attributes in a DITA map apply. The following values are specified:

    -   **merge**

        Indicates that the metadata attributes cascade, and thatthe values of the metadata attributes are additive. This is the processing default for the `@cascade` attribute.

    -   **nomerge**

        Indicates that the metadata attributes cascade, but thatthey are not additive for `<topicref>` elements that specify a different value for a specific metadata attribute. If the cascading value for an attribute is already merged based on multiple ancestor elements, that merged value continues to cascade until a new value is encountered. That is, setting `cascade="nomerge"` does not undo merging that took place on ancestor elements.

    For more information, see [Example: How the cascade attribute affects attribute cascading](example-cascade-attribute.md).

-   **`@chunk`**

    Specifies that the processor generates an interim set of DITA topics that are used as the input for the final processing. This can produce the following output results:

    -   Multi-topic files are transformed into smaller files, for example, individual HTML files for each DITA topic.
    -   Individual DITA topics are combined into a single file.
    Specifying a value for the `@chunk` attribute on a `<map>` element establishes chunking behavior that applies to the entire map, unless overridden by `@chunk` attributes that are set on more specific elements in the DITA map. For a detailed description of the `@chunk` attribute and its usage, see [Chunking](chunking.md).

-   **`@collection-type`**

    The `@collection-type` attribute specifies how the children of a `<topicref>` element relate to their parent and to each other. This attribute, which is set on the parent element, typically is used by processors to determine how to generate navigation links in the rendered topics. For example, a `@collection-type` value of "sequence" indicates that children of the specifying `<topicref>` element represent an ordered sequence of topics; processors might add numbers to the list of child topics or generate next/previous links for online presentation. This attribute is available in topics on the `<linklist>` and `<linkpool>` elements, where it has the same behavior. Where the `@collection-type` attribute is available on elements that cannot directly contain elements, the behavior of the attribute is undefined.

-   **`@keys`**

    Specifies one or more key names.

-   **`@keyscope`**

    Defines a new scope for key definition and resolution, and gives the scope one or more names. For more information about key scopes, see [Indirect key-based addressing](key-based-addressing.md).

-   **`@linking`**

    By default, the relationships between the topics that are referenced in a map are reciprocal:

    -   Child topics link to parent topics and vice versa.
    -   Next and previous topics in a sequence link to each other.
    -   Topics in a family link to their sibling topics.
    -   Topics referenced in the table cells of the same row in a relationship table link to each other. A topic referenced within a table cell does not \(by default\) link to other topics referenced in the same table cell.
    This behavior can be modified by using the `@linking` attribute, which enables an author or information architect to specify how a topic participates in a relationship. The following values are valid:

    -   **`linking="none"`**

        Specifies that the topic does not exist in the map for the purposes of calculating links.

    -   **`linking="sourceonly"`**

        Specifies that the topic will link to its related topics but not vice versa.

    -   **`linking="targetonly"`**

        Specifies that the related topics will link to it but not vice versa.

    -   **`linking="normal"`**

        Default value. It specifies that linking will be reciprocal \(the topic will link to related topics, and they will link back to it\).

    Authors also can create links directly in a topic by using the `<xref>` or `<link>` elements, but in most cases map-based linking is preferable, because links in topics create dependencies between topics that can hinder reuse.

    Note that while the relationships between the topics that are referenced in a map are reciprocal, the relationships merely *imply* reciprocal links in generated output that includes links. The rendered navigation links are a function of the presentation style that is determined by the processor.

-   **`@processing-role`**

    Specifies whether the topic or map referenced is processed normally or treated as a resource that is only included in order to resolve key or content references.

    -   **processing-role="normal"**

        The topic is a readable part of the information set. It is included in navigation and search results. This is the default value for the `<topicref>` element.

    -   **processing-role="resource-only"**

        The topic is used only as a resource for processing. It is not included in navigation or search results, nor is it rendered as a topic. This is the default value for the `<keydef>` element.

    If the `@processing-role` attribute is not specified locally, the value cascades from the closest element in the containment hierarchy.

-   **`@search`**

    Specifies whether the topic is included in search indexes.

-   **`@toc`**

    Specifies whether topics are excluded from navigation output, such as a Web site map or an online table of contents. By default, `<topicref>` hierarchies are included in navigation output; relationship tables are excluded.


Attributes in the list above are used exclusively or primarily in maps, but many important map attributes are shared with elements in topics. DITA maps also use many of the following attributes that are used with linking elements in DITA topics, such as `<link>` and `<xref>`:

-   `@format`
-   `@href`
-   `@keyref`
-   `@scope`
-   `@type`

The following metadata and reuse attributes are used by both DITA maps and DITA topics:

-   `@rev`, `@status`, `@importance`
-   `@dir`, `@xml:lang`, `@translate`
-   `@id`, `@conref`, `@conrefend`, `@conkeyref`, `@conaction`
-   `@props` and any attribute specialized from `@props`, including those integrated by default in the OASIS-provided document-type shells: `@audience`, `@deliveryTarget`, `@platform`, `@product`, `@otherprops`
-   `@search`

When new attributes are specialized from `@props` or `@base` as a domain, they can be incorporated into both map and topic structural types.

**Parent topic:**[DITA maps](../../archSpec/base/ditamaps.md)

