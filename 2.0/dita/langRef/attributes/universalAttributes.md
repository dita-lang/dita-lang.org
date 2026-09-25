---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Universal attribute group

The universal attribute group defines a set of common attributes that are available on almost every DITA element. The universal attribute group includes all attributes from the ID, localization, and metadata attribute groups, plus the `@class` and `@outputclass` attributes.

**Draft comment:**Kristen J Eberlein 29 December 2021  


This is something wrong with the organizational structure of this topic ... Look at it in outline form, and check that the sections, titles, and content all make logical sense with the topic title of "Universal attribute group".

**Draft comment:**robander   
TO RESOLVE 13 May 2026: Not sure what to change here. Looking at the topic at dita-lang.org, the only thing that really stands out is the heading "Common attribute groups". Maybe we can delete that title, check the remaining content in that section for accuracy, and be done?

## Common attribute groups

The following attribute groups are referenced in this specification. They are also used in the grammar files when the element attributes are defined.

-   **Universal attributes**

    Includes `@class` and `@outputclass`, along with every attribute in the ID, localization, and metadata attribute groups.

-   **ID attributes**

    This group includes the attributes that enable the naming and referencing of elements: `@conaction`, `@conkeyref`, `@conref`, `@conrefend`, and `@id`.

-   **Localization attributes**

    This group includes attributes that are related to translation and localization: `@dir`, `@translate`, and `@xml:lang`.

-   **Metadata attributes**

    This group includes common metadata attributes: `@base`, `@importance`, `@props`, `@rev`, and `@status`.

    The base DITA vocabulary from OASIS includes several specializations of `@props`: `@audience`, `@deliveryTarget`, `@otherprops`, `@platform`, and `@product`. These attributes are defined as attribute-extension domains. By default, they are integrated into all OASIS-provided document-type shells, but they can be made unavailable by implementing custom document-type shells.

    **Draft comment:**Kristen J Eberlein 29 December 2021  
    

    Why do we provide information about specialization and custom document-type shells here? I think that information could be removed.

    **Draft comment:**robander   
    TO RESOLVE 13 May 2026: I think because they're all in all of the base shells distributed by oasis? But I don't care, fine with removing this

    On second thought – it's because each of the groups above provides a list / summary of attributes in the group. These 5 are in the metadata group because they are picked up with that attribute group in the gramma files \(via specialization\), and on every element in the base vocabulary. I think it would be inconsistent for this section to group every attribute below \*except\* for those five. There may be a better way to phrase it, but I think they need to be listed


## Universal attribute definitions

The universal attributes for OASIS DITA elements are defined below. Specialized attributes, which are part of the OASIS distribution but are only available when explicitly included in a shell, are noted in the list.

-   **`@audience` _\(specialized attribute\)_**

    Indicates the intended audience for the element. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

-   **`@base`**

    Specifies metadata about the element. It is often used as a base for specialized attributes that have a simple syntax for values, but which are not conditional processing attributes.

    The `@base` attribute takes a space-delimited set of values. However, when serving as a container for generalized attributes, the attribute values will be more complex. See [Attribute generalization](../../common/../archSpec/base/generalization-attributes.md) for more details.

-   **`@class` _\(not for use by authors\)_**

    *This attribute is not for use by authors. If an editor displays `@class` attribute values, do not edit them.* Specifies a default value that defines the specialization ancestry of the element. Its predefined values allow DITA tools to work correctly with specialized elements. In a generalized DITA document the `@class` attribute value in the generalized instance might differ from the default value for the `@class` attribute for the element as given in the DTD or schema. See [The class attribute rules and syntax](../../archSpec/base/specialization-class-attribute.md) for more information. This attribute is specified on every element except for the `<dita>` container element. It is always specified with a default value, which varies for each element.

-   **`@conaction`**

    Specifies how the element content will be pushed into a new location. The following values are valid:

    -   **mark**

        The element acts as a marker when pushing content before or after the target, to help ensure that the push action is valid. The element with `conaction="mark"` also specifies the target of the push action with `@conref`. Content inside of the element with `conaction="mark"` is not pushed to the new location.

    -   **pushafter**

        Content from this element is pushed after the location specified by `@conref` on the element with `conaction="mark"`. The element with `conaction="pushafter"` is the first sibling element after the element with `conaction="mark"`.

    -   **pushbefore**

        Content from this element is pushed before the location specified by `@conref` on the element with `conaction="mark"`. The element with `conaction="pushbefore"` is the first sibling element before the element with `conaction="mark"`.

    -   **pushreplace**

        Content from this element replaces any content from the element referenced by the `@conref` attribute. A second element with `conaction="mark"` is not used when using `conaction="pushreplace"`.

    -   **-dita-use-conref-target**

        See [Using the -dita-use-conref-target value](../../common/../archSpec/base/ditauseconreftarget.md) for more information.

    See [Pushing reusable content to a new location](../../archSpec/base/theconactionattribute.md) for examples and details about the syntax.

-   **`@conkeyref`**

    Specifies a key name or a key name with an element ID that acts as an indirect reference to reusable content. The referenced content is used in place of the content of the current element. See [Indirect key-based content reuse](../../archSpec/base/theconkeyrefattribute.md) for more details about the syntax and behaviors.

-   **`@conref`**

    Specifies a URI that references a DITA element. The referenced content is used in place of the content of the current element.See [Direct URI-based content reuse](../../archSpec/base/theconrefattribute.md) for examples and details about the syntax.

-   **`@conrefend`**

    Specifies a URI that references the last element in a sequence of elements, with the first element of the sequence specified by `@conref`. The referenced sequence of elements is used in place of the content of the current element. See [Reusing a range of elements](../../archSpec/base/theconrefendattribute.md) for examples and details about the syntax.

-   **`@deliveryTarget` _\(specialized attribute\)_**

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

    -   **-dita-use-conref-target**

        See [Using the -dita-use-conref-target value](../../common/../archSpec/base/ditauseconreftarget.md) for more information.

    See [The dir attribute](../../archSpec/base/diratt.md) for more information.

-   **`@id`**

    Specifies an identifier for the current element. This ID is the target for references by `@href` and `@conref` attributes and for external applications that refer to DITA or LwDITA content. This attribute is defined with the XML data type NMTOKEN, except where noted for specific elements within the language reference.

    See [id attribute](../../archSpec/base/id.md) for more details.

-   **`@importance`**

    Specifies the importance or priority that is assigned to an element. The following values are valid: default, deprecated, high, low, normal, obsolete, optional, recommended, required, urgent, and -dita-use-conref-target. This attribute is not used for conditional processing, although applications can modify how content is rendered based on the value of the `@importance` attribute. exampleFor example, in steps of a task topic, processors often add text or images to highlight that a step is marked optional or required.

-   **`@otherprops` _\(specialized attribute\)_**

    Specifies a property or properties that provide selection criteria for the element. Alternatively, the `@props` attribute can be specialized to provide a new metadata attribute instead of using the general `@otherprops` attribute. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

-   **`@outputclass`**

    Specifies a role that the element is playing. The role should be consistent with the basic semantic and expectations for the element. In particular, the `@outputclass` attribute can be used for styling during output processing; HTML output will typically preserve `@outputclass` for CSS processing.

-   **`@platform` _\(specialized attribute\)_**

    Indicates that the content is relevant to the specified platform, such as an operating system or hardware. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

-   **`@product` _\(specialized attribute\)_**

    Specifies the name of the product to which the element applies. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

-   **`@props`**

    Specifies metadata about the element. New attributes can be specialized from the `@props` attribute. This attribute supports conditional processing. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

    The `@props` attribute takes a space-delimited set of values. However, when serving as a container for generalized attributes, the attribute values will be more complex. See [Attribute generalization](../../common/../archSpec/base/generalization-attributes.md) for more details.

-   **`@rev`**

    Specifies metadata that identifies when the element was added or the content of the element was modified. The `@rev` attribute can be used for flagging revisions when content is rendered. It cannot be used for filtering nor is it sufficient to be used for version control. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

-   **`@status`**

    Specifies the modification status of the element. The following values are valid: new, changed, deleted, unchanged, and -dita-use-conref-target.

-   **`@translate`**

    Specifies whether the content of the element should be translated. The following values are valid: yes, no, and -dita-use-conref-target.

    See [Element-by-element recommendations for translators](../../non-normative/elementsMerged.md) for additional considerations on translating DITA elements.

-   **`@xml:lang`**

    Specifies the language and optional locale of the content that is contained in an element. Valid values are language tokens or the null string. The `@xml:lang` attribute and its values are described in the [Extensible Markup Language 1.0 specification, fifth edition](http://www.w3.org/TR/REC-xml/#sec-lang-tag).

    See [The xml:lang attribute](../../archSpec/base/xmllang.md) for additional information about using the `@xml:lang` attribute.


**Parent topic:**[Attributes](../../langRef/attributes/attributes.md)

**Related information**  


[Filtering based on metadata attributes](../../archSpec/base/filtering.md)

[Translation and localization](../../archSpec/base/translation.md)

[Specialization](../../archSpec/base/specialization.md)

[DTD: Coding requirements for attribute-domain modules](../../archSpec/base/dtd-coding-attribute-domains.md)

