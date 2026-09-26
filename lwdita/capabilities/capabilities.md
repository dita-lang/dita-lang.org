---
author: OASIS DITA Technical Committee
---

# LwDITA capabilities

LwDITA shares some core capabilities for content structure and reuse with DITA. By design, it includes fewer capabilities than full DITA XML. LwDITA also includes some unique cross-format features.

LwDITA features the following capabilities:

-   **Modular content**

    While LwDITA does not require the use of any particular writing practice, its modular approach to content supports a variety of best practices for creating both usable and reusable content. In LwDITA, each module is called a [topic](../components/lw-topic.md), which can be published directly or collected and organized for publication by a [map](../components/lw-map.md). LwDITA topics can be authored and managed as XML \([XDITA](../authoring-formats/xdita/xdita-introduction.md)\), HTML \([HDITA](../authoring-formats/hdita/hdita-introduction.md)\), and Markdown \([MDITA](../authoring-formats/mdita/mdita-introduction.md)\) files as appropriate for diverse authoring communities and tool ecosystems.

-   **Content collection and organization**

    In LwDITA, the document type of [map](../components/lw-map.md) functions as a content collection and organization mechanism, which can be used to manage the linking, navigation and metadata for a group of topics. LwDITA maps can be created in the [XDITA](../authoring-formats/xdita/xdita-introduction.md), [HDITA](../authoring-formats/hdita/hdita-introduction.md), and [MDITA](../authoring-formats/mdita/mdita-introduction.md) authoring formats, and they allow for cross-format collection and organization. For example, a map authored in XDITA can collect and organize topics created in any combination of LwDITA formats. The same can be accomplished with maps authored in HDITA and MDITA.

-   **Linking**

    A LwDITA topic can link to another topic \(or location in a topic\) using the [cross-reference](../components/lw-xref.md) component. Links work across any of the LwDITA authoring formats.

-   **Filtering**

    LwDITA supports [metadata-based filtering \(link to props topic\)](../attributes/lwdita-attributes.md) within a topic to selectively include or exclude content for specific contexts.

-   **Content references for reuse**

    In LwDITA, content can be reused across topics or maps using the [content reference \(link to conref!\)](../attributes/lwdita-attributes.md) mechanism to pull block-level content, such as a paragraph or list item, from one location to another. This reuse by reference ensures that content will stay consistent and up to date across all the contexts in which it is reused. Content references work across any of the LwDITA authoring formats.

-   **Variable management**

    In LwDITA, inline \(variable\) content can be defined in maps and reused in topics via the key reference mechanism \(link to keyref\). This reuse by reference ensures that variable content will stay consistent and up to date across all the contexts in which it is reused. Key references work across any of the LwDITA authoring formats.

-   **Link redirection**

    LwDITA supports link redirection via the key reference \(link to keyref\) mechanism. A cross reference \(link to xref\) component can be combined with a key reference so authors can redirect links to a common topic. Link redirection works across any of the LwDITA authoring formats.

-   **Specialization**

    In principle, LwDITA follows the same specialization architecture as DITA, although there are limitations depending on the authoring format. However, specialization is beyond the scope of this version of the specification.


**Parent topic:**[LwDITA authoring formats](../authoring-formats/formats-introduction.md)

