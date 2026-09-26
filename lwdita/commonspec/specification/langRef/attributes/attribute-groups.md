---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Attribute groups

Many of the attributes used on DITA elements are defined in attribute groups. These attribute groups are used both in the grammar files and the specification,

## Architectural attributes

This group contains a set of attributes that are defined for document-level elements such as `<topic>` and `<map>`. These attributes only apply to XDITA.

-   **`@DITAArchVersion`**

    Specifies the version of the DITA architecture that is in use. This attribute is in the namespace `http://dita.​oasis-open.​org/​architecture/​2005/`. This attribute is specified in the topic and map modules, and it uses a default value of the current version of DITA. The current default is 2.0.

-   **`@specializations`**

    Specifies the attribute-domain specializations that are included in the document-type shell. This attribute is set as a default within the document-type shell. The value varies depending on what domains are integrated into the document-type shell.

-   **`@xmlns:ditaarch`**

    Declares the default DITA namespace. This namespace is declared as such in the RNG modules for `<topic>` and `<map>`, but it is specified as an attribute in the equivalent DTD-based modules. The value is fixed to http://dita.​oasis-open.​org/​architecture/​2005/.


## Common map attributes

This group contains attributes that are frequently used on map elements. These attributes only apply to XDITA and HDITA.

-   **`@processing-role`**

    Specifies whether the referenced resource is processed normally or treated as a resource that is only included in order to resolve references, such as key or content references. The following values are valid:

    -   **normal**

        Indicates that the resource is a readable part of the information set. It is included in navigation and search results. This is the default value for the `<topicref>` element.

    -   **resource-only**

        Indicates that the resource should be used only for processing purposes. It is not included in navigation or search results, nor is it rendered as a topic. This is the default value for the `<keydef>` element.

    If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

    For HDITA, the equivalent of `@processing-role` is `@data-processing-role`.


## Data-element attributes

This group contains attributes that are defined on the `<data>` element and its specializations. These attributes only apply to XDITA.

-   **`@name`**

    Defines a unique name for the object.

-   **`@value`**

    Specifies a value associated with the current property or element.


## Display attributes

This group contains attributes that affect the rendering of many elements. These attributes only apply to XDITA.

-   **`@expanse`**

    Specifies the horizontal placement of the element. The following values are valid:

    -   **column**

        Indicates that the element is aligned with the current column margin.

    -   **page**

        Indicates that the element is placed on the left page margin for left-to-right presentation or the right page margin for right-to-left presentation.

    -   **spread**

        Indicates that the object is rendered across a multi-page spread. If the output format does not have anything that corresponds to spreads, then spread has the same meaning as page.

    -   **textline**

        Indicates that the element is aligned with the left \(for left-to-right presentation\) or right \(for right-to-left presentation\) margin of the current text line and takes indentation into account.

    Some processors or output formats might not support all values.

-   **`@frame`**

    Specifies which portion of a border surrounds the element. The following values are valid:

    -   **all**

        Indicates that a line is rendered at the top, bottom, left, and right of the containing element.

    -   **bottom**

        Indicates that a line is rendered at the bottom of the containing element.

    -   **none**

        Indicates that no lines are rendered.

    -   **sides**

        Indicates that a line is rendered at the left and right of the containing element.

    -   **top**

        Indicates that a line is rendered at the top of the containing element.

    -   **topbot**

        Indicates that a line is rendered at the top and bottom of the containing element.

    Some processors or output formats might not support all values.

-   **`@scale`**

    Specifies the percentage by which fonts are resized in relation to the normal text size. The value of this attribute is a positive integer. The following values are valid: 50, 60, 70, 80, 90, 100, 110, 120, 140, 160, 180, and 200.

    This attribute is primarily useful for print-oriented display. Some processors might not support all values.

    If the `@scale` attribute is specified on an element that contains an image, the image is not scaled. The image is scaled **only** if a scaling property is explicitly specified for the `<image>` element.


## ID and conref attributes

This group contains the attributes that enable the naming and referencing of elements. These attributes only apply to XDITA and HDITA.

-   **`@conref`**

    Specifies a URI that references a DITA element. The referenced content is used in place of the content of the current element.

    For HDITA, the equivalent of `@conref` is `@data-conref`.

-   **`@id`**

    Specifies an identifier for the current element. This ID is the target for references by `@href` and `@conref` attributes and for external applications that refer to DITA or LwDITA content. This attribute is defined with the XML data type NMTOKEN, except where noted for specific elements within the language reference.


## Link relationship attributes

This group contains attributes whose values can be used for representing navigational relationships. These attributes only apply to XDITA and HDITA.

-   **`@format`**

    Specifies the format of the resource that is referenced.

    For HDITA, the equivalent of `@format` is `@type`.

-   **`@href`**

    Specifies a reference to a resource.

-   **`@scope`**

    Specifies the closeness of the relationship between the current document and the referenced resource.The following values are valid: local, peer, and external.

    For HDITA, the equivalent of `@scope` is `@rel`.


## Localization attributes

**Draft comment:**Kristen J Eberlein 29 September 2022  


The definition of the localizations attribute matches how they are described in the architectural topics. Wherever possible, the definition is reused. Where it is not reused \(because the definition in the archSpec topics is in a shortdesc\), I've checked to ensure that wording is identical.

This group contains the attributes that are related to translation and localization. These attributes only apply to XDITA and HDITA.

-   **`@dir`**

    Identifies or overrides the text directionality. The following values are valid:

    -   **lro**

        Indicates an override of the Unicode Bidirectional Algorithm, forcing the element into left-to-right mode.

    -   **ltr**

        Indicates left-to-right.

    -   **rlo**

        Indicates an override of the Unicode Bidirectional Algorithm, forcing the element into right-to-left mode.

    -   **rtl**

        Indicates right-to-left.

-   **`@translate`**

    Specifies whether the content of the element should be translated. The following values are valid: yes and no.

-   **`@xml:lang`**

    Specifies the language and optional locale of the content that is contained in an element. Valid values are language tokens or the null string. The `@xml:lang` attribute and its values are described in the [Extensible Markup Language 1.0 specification, fifth edition](http://www.w3.org/TR/REC-xml/#sec-lang-tag).

    For HDITA, the equivalent attribute is `@lang`.


## Metadata attributes

This group contains common metadata attributes: `@base`, `@importance`, `@props`, `@rev`, and `@status`. The `@base` and `@props` attributes can be specialized.

-   **`@props`**

    Specifies metadata about the element. New attributes can be specialized from the `@props` attribute. This attribute supports conditional processing. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

    The `@props` attribute takes a space-delimited set of values.

    For HDITA, the equivalent of `@props` is `@data-props`


## Table accessibility attributes

This group defines a set of attributes that promote table accessibility:

-   **`@headers`**

    Specifies which entries in the current table provide headers for this cell. The `@headers` attribute contains an unordered set of unique, space-separated tokens, each of which is an ID reference of an entry from the same table.

-   **`@scope`**

    Specifies that the current entry is a header for other table entries. The following values are valid:

    -   **col**

        Indicates that the current entry is a header for all cells in the column.

    -   **colgroup**

        Indicates that the current entry is a header for all cells in the columns that are spanned by this entry.

    -   **row**

        Indicates that the current entry is a header for all cells in the row.

    -   **rowgroup**

        Indicates that the current entry is a header for all cells in the rows that are spanned by this entry.


## Universal attributes

This group defines a set of attributes that are available on almost all DITA elements. It includes all elements in the ID, localization, and metadata attribute groups, as well as the following attributes:

-   **`@class` _\(not for use by authors\)_**

    *This attribute is not for use by authors. If an editor displays `@class` attribute values, do not edit them.* Specifies a default value that defines the specialization ancestry of the element. Its predefined values allow DITA and XDITA tools to work correctly with specialized elements. It is always specified with a default value, which varies for each element.

-   **`@outputclass`**

    Specifies a role that the element is playing. The role must be consistent with the basic semantic and expectations for the element. In particular, the `@outputclass` attribute can be used for styling during output processing; HTML output will typically preserve `@outputclass` for CSS processing.


**Parent topic:**[Attributes](../../../../attributes/attributes.md)

