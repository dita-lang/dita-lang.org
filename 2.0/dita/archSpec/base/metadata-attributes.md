---
author: OASIS DITA Technical Committee
---

# Metadata attributes

Metadata attributes specify properties of the content that can be used to determine how the content is processed. Specialized metadata attributes can be defined to enable specific business-processing needs, such as semantic processing and data mining.

Metadata attributes typically are used for the following purposes:

-   Filtering content based on the attribute values, for example, to suppress or publish profiled content
-   Flagging content based on the attribute values, for example, to highlight specific content on output
-   Performing custom processing, for example, to extract business-critical data and store it in a database

The base DITA vocabulary includes five specializations of the `@props` attribute as domains: `@audience`, `@deliveryTarget`, `@platform`, `@product`, and `@otherprops`. These five attributes are included in all the map and topic document-type shells that are provided with the specification.

Metadata attributes fall into the following categories.

-   **Architectural attributes**

    The `@class`, `@DITAArchVersion`, and `@specializations` attributes provide metadata about the DITA source itself, such as what version of the grammar is used. These attributes are not intended for use in authored content.

-   **Filtering and flagging attributes**

    The `@props` attribute and its specializations are intended for filtering. This includes the five specializations added to the OASIS document-type shells: `@audience`, `@deliveryTarget`, `@platform`, `@product`, and `@otherprops`.

    These attributes plus the `@rev` attribute are intended for flagging.

-   **Other metadata attributes**

    The `@status` and `@importance` attributes, many of the attributes available on the `<ux-window>` element, as well as custom attributes specialized from `@base`, are intended for application-specific behaviors. Such behaviors include aiding in search and retrieval, as well as controlling how a user assistance window is rendered.

-   **Translation and localization attributes**

    The `@dir`, `@translate`, and `@xml:lang` attributes are intended for use with translating and localizing content.


**Parent topic:**[DITA metadata](../../archSpec/base/dita-metadata.md)

