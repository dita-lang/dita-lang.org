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

    **Draft comment:**Kristen J Eberlein 31 December 2021  
    

    Why do we need to mention that two attributes are available for specialization here? I think it makes the paragraph hard to read.

    **Draft comment:**robander   
    TO RESOLVE 13 May 2026: Agreed. Either take it out, or make that a second sentence if the info is useful.

    This group includes common metadata attributes, two of which are available for specialization: `@base`, `@importance`, `@props`, `@rev`, and `@status`.

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

    See [TODO: Update link and title to OASIS published URI](https://dita-lang.org/dita/langref/attributes/universalattributes#univ-atts__attr-conaction) for examples and details about the syntax.

-   **`@conkeyref`**

    Specifies a key name or a key name with an element ID that acts as an indirect reference to reusable content. The referenced content is used in place of the content of the current element. See [TODO: Update link and title to OASIS published URI](https://dita-lang.org/dita/langref/attributes/universalattributes#univ-atts__attr-conkeyref) for more details about the syntax and behaviors.

-   **`@conref`**

    Specifies a URI that references a DITA element. The referenced content is used in place of the content of the current element.See [TODO: Update link and title to OASIS published URI](https://dita-lang.org/dita/langref/attributes/universalattributes#univ-atts__attr-conref) for examples and details about the syntax.

-   **`@conrefend`**

    Specifies a URI that references the last element in a sequence of elements, with the first element of the sequence specified by `@conref`. The referenced sequence of elements is used in place of the content of the current element. See [TODO: Update link and title to OASIS published URI](https://dita-lang.org/dita/langref/attributes/universalattributes#univ-atts__attr-conrefend) for examples and details about the syntax.

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

    Specifies the importance or priority that is assigned to an element. The following values are valid: default, deprecated, high, low, normal, obsolete, optional, recommended, required, urgent, and -dita-use-conref-target. This attribute is not used for conditional processing, although applications might use the value of the `@importance` attribute to highlight elements. exampleFor example, in steps of a task topic, the value of the `@importance` attribute indicates whether a step is optional or required.

    **Draft comment:**Kristen J Eberlein 29 September 2022  
    

    I think the phrase "to highlight elements" is a little off. Maybe "render generated text"? And how about adding "Processors often add text or images to ensure that readers of the generated content understand whether the step is optional or required." to the end of the example?

    **Draft comment:**robander   
    TO RESOLVE 13 May 2026:

    -   maybe change to "… although applications can modify how content is rendered based on the value of the `@importance` attribute
    -   And update the example with something like "For example, in steps of a task topic, processors often add text or images to highlight that a step is optional or required"
-   **`@otherprops` _\(specialized attribute\)_**

    Specifies a property or properties that provide selection criteria for the element. Alternatively, the `@props` attribute can be specialized to provide a new metadata attribute instead of using the general `@otherprops` attribute. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

-   **`@outputclass`**

    Specifies a role that the element is playing. The role must be consistent with the basic semantic and expectations for the element. In particular, the `@outputclass` attribute can be used for styling during output processing; HTML output will typically preserve `@outputclass` for CSS processing.

    **Draft comment:**robander   
    I don't like "The role must be consistent...", that seems like best practice that cannot be normative – and I could easily say outputclass="flashy" which makes my element show up with sparkles, and has nothing to do with "the basic semantic and expectations for the element".

    **Draft comment:**robander   
    TO RESOLVE 13 May 2026: how about saying "the role can be", or even a lower-case should, rather than "must be"?

-   **`@platform` _\(specialized attribute\)_**

    Indicates operating system and hardware. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

    **Draft comment:**robander   
    I think this could specify a platform that is not an operating system or hardware, right? The current definition explicitly limits platform to those two … maybe "Specifies a platform or platforms to which the element applies, such as the operating system or hardware relevant to a task."

    **Draft comment:**robander   
    TO RESOLVE 13 May 2026: maybe "Indicates the content is relevant to the specified platform, such as an operating system or hardware."

-   **`@product` _\(specialized attribute\)_**

    Specifies the name of the product to which the element applies. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

-   **`@props`**

    Specifies metadata about the element. New attributes can be specialized from the `@props` attribute. This attribute supports conditional processing. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

    The `@props` attribute takes a space-delimited set of values. However, when serving as a container for generalized attributes, the attribute values will be more complex. See [Attribute generalization](../../common/../archSpec/base/generalization-attributes.md) for more details.

-   **`@rev`**

    Specifies a revision level of an element that identifies when the element was added or modified. It can be used to flag outputs when it matches a run-time parameter. It cannot be used for filtering nor is it sufficient to be used for version control. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

    **Draft comment:**Kristen J Eberlein 29 September 2022  
    

    I want to tweak this. How about the following? Also, neither definition describes what values are permitted.

    Specifies metadata that identifies when the element was added or the content of the element was modified. The `@rev` attribute can be used for flagging. It cannot be used for filtering nor is it sufficient to be used for version control. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

    **Draft comment:**robander   
    TO RESOLVE 13 May 2026: Sounds good, I might say "can be used for flagging revisions" just because that sentence feels a bit odd ending in "for flagging" but really don't care, fine with using the text with or without that update.

-   **`@status`**

    Specifies the modification status of the element. The following values are valid: new, changed, deleted, unchanged, and -dita-use-conref-target.

-   **`@translate`**

    Specifies whether the content of the element should be translated. The following values are valid: yes, no, and -dita-use-conref-target.

    See [Element-by-element recommendations for translators](../../non-normative/elementsMerged.md) for suggested processing defaults for each element.

    **Draft comment:**Kristen J Eberlein 31 December 2021  
    

    Does [Element-by-element recommendations for translators](../../non-normative/elementsMerged.md) really provide suggested processing defaults for each element? I thought it covered whether an element was block or in-line and whether there were considerations that translators needed to be aware of.

    **Draft comment:**robander   
    TO RESOLVE 13 May 2026: Can we update to "See \(link\) for information on additional considerations on translating DITA elements."

-   **`@xml:lang`**

    Specifies the language and optional locale of the content that is contained in an element. Valid values are language tokens or the null string. The `@xml:lang` attribute and its values are described in the [Extensible Markup Language 1.0 specification, fifth edition](http://www.w3.org/TR/REC-xml/#sec-lang-tag).

    **Draft comment:**Kristen J Eberlein 29 September 2022  
    

    Do we also want to direct readers to the architectural topics about the `@xml:lang` attribute?

    **Draft comment:**robander   
    TO RESOLVE 13 May 2026: Yes, should provide a cross reference, not sure if that will work in the lwdita spec but can figure that out later


**Parent topic:**[Attributes](../../../../baseSpec/specification/langRef/attributes/attributes.md)

