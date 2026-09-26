---
author: OASIS DITA Technical Committee
---

# Universal attribute group

The universal attribute group defines a set of common attributes that are available on almost every DITA element. The universal attribute group includes all attributes from the ID, localization, and metadata attribute groups, plus the `@class` and `@outputclass` attributes.

**Draft comment:**Kristen J Eberlein 29 December 2021  


This is something wrong with the organizational structure of this topic ... Look at it in outline form, and check that the sections, titles, and content all make logical sense with the topic title of "Universal attribute group".

## Common attribute groups

The following attribute groups are referenced in this specification. They are also used in the grammar files when the element attributes are defined.

-   **Universal attributes**

    Includes `@class` and `@outputclass`, along with every attribute in the ID, localization, and metadata attribute groups.

-   **ID attributes**

    This group includes the attributes that enable the naming and referencing of elements: `@conaction`, `@conkeyref`, `@conref`, `@conrefend`, and `@id`.

-   **Localization attributes**

    This group includes attributes that are related to translation and localization: `@dir`, `@translate`, and `@xml:lang`.

-   **Metadata attributes**

    **Draft comment:**Kristen J Eberlein 31 December 2021  
    

    Why do we need to mention that two attributes are available for specialization here? I think it makes the paragraph hard to read.

    This group includes common metadata attributes, two of which are available for specialization: `@base`, `@importance`, `@props`, `@rev`, and `@status`.

    The base DITA vocabulary from OASIS includes several specializations of `@props`: `@audience`, `@deliveryTarget`, `@otherprops`, `@platform`, and `@product`. These attributes are defined as attribute-extension domains. By default, they are integrated into all OASIS-provided document-type shells, but they can be made unavailable by implementing custom document-type shells.

    **Draft comment:**Kristen J Eberlein 29 December 2021  
    

    Why do we provide information about specialization and custom document-type shells here? I think that information could be removed.


## Universal attribute definitions

The universal attributes for OASIS DITA elements are defined below. Specialized attributes, which are part of the OASIS distribution but are only available when explicitly included in a shell, are noted in the list.

-   **`@audience`**

    Indicates the intended audience for the element. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

-   **`@class` _\(not for use by authors\)_**

    *This attribute is not for use by authors. If an editor displays `@class` attribute values, do not edit them.* Specifies a default value that defines the specialization ancestry of the element. Its predefined values allow DITA and XDITA tools to work correctly with specialized elements. It is always specified with a default value, which varies for each element.

-   **`@conref`**

    Specifies a URI that references a DITA element. The referenced content is used in place of the content of the current element.

    For HDITA, the equivalent of `@conref` is `@data-conref`.

-   **`@deliveryTarget`**

    Specifies the intended delivery target of the content, for example, html, pdf, or epub. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

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

-   **`@id`**

    Specifies an identifier for the current element. This ID is the target for references by `@href` and `@conref` attributes and for external applications that refer to DITA or LwDITA content. This attribute is defined with the XML data type NMTOKEN, except where noted for specific elements within the language reference.

-   **`@otherprops`**

    Specifies a property or properties that provide selection criteria for the element. Alternatively, the `@props` attribute can be specialized to provide a new metadata attribute instead of using the general `@otherprops` attribute. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

-   **`@outputclass`**

    Specifies a role that the element is playing. The role must be consistent with the basic semantic and expectations for the element. In particular, the `@outputclass` attribute can be used for styling during output processing; HTML output will typically preserve `@outputclass` for CSS processing.

-   **`@platform` _\(specialized attribute\)_**

    Indicates operating system and hardware. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

-   **`@product`**

    Specifies the name of the product to which the element applies. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

-   **`@props`**

    Specifies metadata about the element. New attributes can be specialized from the `@props` attribute. This attribute supports conditional processing. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

    The `@props` attribute takes a space-delimited set of values.

    For HDITA, the equivalent of `@props` is `@data-props`

-   **`@translate`**

    Specifies whether the content of the element should be translated. The following values are valid: yes and no.

-   **`@xml:lang`**

    Specifies the language and optional locale of the content that is contained in an element. Valid values are language tokens or the null string. The `@xml:lang` attribute and its values are described in the [Extensible Markup Language 1.0 specification, fifth edition](http://www.w3.org/TR/REC-xml/#sec-lang-tag).

    For HDITA, the equivalent attribute is `@lang`.


