---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Attribute groups

Many of the attributes used on DITA elements are defined in attribute groups. These attribute groups are used both in the grammar files and the specification,

## Architectural attributes

This group contains a set of attributes that are defined for document-level elements such as `<topic>` and `<map>`.

-   **`@DITAArchVersion`\(architectural attributes\)**

    Specifies the version of the DITA architecture that is in use. This attribute is in the namespace `http://dita.​oasis-open.​org/​architecture/​2005/`. This attribute is specified in the topic and map modules, and it uses a default value of the current version of DITA. The current default is 2.0.

-   **`@specializations` \(architectural attributes\)**

    Specifies the attribute-domain specializations that are included in the document-type shell. This attribute is set as a default within the document-type shell. The value varies depending on what domains are integrated into the document-type shell. exampleFor example, a grammar file that includes the specialized attributes `@audience`, `@deliveryTarget`, and `@newBaseAtt` would set the value to `@props/audience @props/deliveryTarget @base/newBaseAtt`.

-   **`@xmlns:ditaarch` \(architectural attributes\)**

    Declares the default DITA namespace. This namespace is declared as such in the RNG modules for `<topic>` and `<map>`, but it is specified as an attribute in the equivalent DTD-based modules. The value is fixed to http://dita.​oasis-open.​org/​architecture/​2005/.


## Common map attributes

This group contains attributes that are frequently used on map elements.

**Draft comment:**Kristen J Eberlein 28 September 2022  


I've added draft comments to the attribute definitions in this section that explain how the attribute is defined in the "DITA map attributes" topic.

**Draft comment:**robander   
TO RESOLVE 13 May 2026: I think there is nothing to resolve here, can remove

-   **`@cascade`\(common map attributes\)**

    Specifies how metadata attributes cascade within a map. The specification defines the following values:

    -   **merge**

        Indicates that the metadata attributes cascade, and thatthe values of the metadata attributes are additive. This is the processing default for the `@cascade` attribute.

    -   **nomerge**

        Indicates that the metadata attributes cascade, but thatthey are not additive for `<topicref>` elements that specify a different value for a specific metadata attribute. If the cascading value for an attribute is already merged based on multiple ancestor elements, that merged value continues to cascade until a new value is encountered. That is, setting `cascade="nomerge"` does not undo merging that took place on ancestor elements.

    Processors can also define custom, implementation-specific tokens for this attribute.

    See [Cascading of metadata attributes in a DITA map](../../archSpec/base/cascading-in-a-ditamap.md) for more information about how this attribute interacts with metadata attributes.

-   **`@chunk` \(common map attributes\)**

    Specifies how a processor should render a map or branch of a map. exampleFor example, it can be used to specify that individual topic documents should be rendered as a single document, or that a single document with multiple topics should be rendered as multiple documents.

    The following values are valid:

    -   **combine**

        Instructs a processor to combine the referenced source documents for rendering purposes. This is intended for cases where a publishing process normally results in a single output artifact for each source XML document.

    -   **split**

        Instructs a processor to split each topic from the referenced source document into its own document for rendering purposes. This is intended for cases where a publishing process normally results in a single output artifact for each source XML document, regardless of how many DITA topics exist within each source document.

    Processors can also define custom, implementation-specific tokens for this attribute.

    For a detailed description of the `@chunk` attribute and its usage, see [Chunking](../../archSpec/base/chunking.md).

-   **`@collection-type` \(common map attributes\)**

    Specifies how topics or links relate to each other. The processing default is unordered, although no default is specified in the OASIS-provided grammar files. The following values are valid:

    -   **unordered**

        Indicates that the order of the child topics is not significant.

    -   **sequence**

        Indicates that the order of the child topics is significant. Output processors will typically link between them in order.

    -   **choice**

        Indicates that one of the children should be selected.

    -   **family**

        Indicates a tight grouping in which each of the referenced topics not only relates to the current topic but also relate to each other.

        **Draft comment:**Kristen J Eberlein 28 September 2022  
        

        Here is the content from the "DITA map attributes" topic:

        -   **`@collection-type`**

            The `@collection-type` attribute specifies how the children of a `<topicref>` element relate to their parent and to each other. This attribute, which is set on the parent element, typically is used by processors to determine how to generate navigation links in the rendered topics. For example, a `@collection-type` value of "sequence" indicates that children of the specifying `<topicref>` element represent an ordered sequence of topics; processors might add numbers to the list of child topics or generate next/previous links for online presentation. This attribute is available in topics on the `<linklist>` and `<linkpool>` elements, where it has the same behavior. Where the `@collection-type` attribute is available on elements that cannot directly contain elements, the behavior of the attribute is undefined.

        **Draft comment:**robander   
        TO RESOLVE 13 May 2026: Make sure nothing here conflicts, and add a link from this to the architectural section

        **Draft comment:**Kristen J Eberlein 28 September 2022  
        

        In the definitions of the supported values, do we want to refer to "resources" instead of "topics"? Since we specify that `@collection-type` specifies "how topics **or links** relate to each other" ...

        **Draft comment:**robander   
        TO RESOLVE 13 May 2026: Good point, no strong feeling, but we should be consistent here, we already use "topics", "child topics", "children", and "referenced topics". Maybe:

        -   Start with "Specifies how child topic references or links within the current element relate to each other"? Since this applies to children and we only sort of say that in the definitions of the tokens
        -   When describing the tokens, maybe use "referenced resources", as in "Indicates that the order of the referenced resources is not significant"
-   **`@keyscope` \(common map attributes\)**

    Specifies that the element marks the boundaries of a key scope.

    See [TODO: Update link and title to OASIS published URI](https://dita-lang.org/dita/langref/attributes/commonattributes#common-atts__attr-keyscope) for information on using this attribute.

    **Draft comment:**Kristen J Eberlein 28 September 2022  
    

    Here is the content from the "DITA map attributes" topic:

    -   **`@keyscope`**

        Defines a new scope for key definition and resolution, and gives the scope one or more names. For more information about key scopes, see [Indirect key-based addressing](../../archSpec/base/key-based-addressing.md).

    **Draft comment:**robander   
    TO RESOLVE 13 May 2026: Double check each to make sure the latest content is consistent, and remove the draft comment

    But also … it might be a good idea to keep this draft comment \(and others for the keys/keyref stuff\) until after that section is fully reviewed, so that we have an easy way to find these "content should be consistent" issues

-   **`@linking` \(common map attributes\)**

    Specifies linking characteristics of a topic specific to the location of this reference in a map. If the value is not specified locally, the value might cascade from another element in the map \(for cascade rules, see [Cascading of metadata attributes in a DITA map](../../common/../archSpec/base/cascading-in-a-ditamap.md#)\).

    **Draft comment:**robander Dec 28 2021  
    The text below matches [1.3 spec text](http://docs.oasis-open.org/dita/dita/v1.3/errata02/os/complete/part3-all-inclusive/langRef/attributes/commonMapAttributes.html#topicref-atts__linking) but I'm nervous about "cannot link" type definition. It's describing how to generate links based on the current context in the map - it's not describing what the topic itself is allowed to link to, which is how I interpret "can".

    **Draft comment:**robander   
    TO RESOLVE 13 May 2026: Yeah we should remove the can/cannot and replace with a description of the intent here... like, targetonly "The topic or resource can be the target of any context based linking, but is not meant to be updated with links related to this context."

    similarly, none could be "The topic or resource does not participate in any context-based linking"

    The following values are valid:

    -   **targetonly**

        A topic can only be linked to and cannot link to other topics.

    -   **sourceonly**

        A topic cannot be linked to but can link to other topics.

    -   **normal**

        A topic can be linked to and can link to other topics. Use this to override the linking value of a parent topic.

    -   **none**

        A topic cannot be linked to or link to other topics.

    -   **-dita-use-conref-target**

        See [Using the -dita-use-conref-target value](../../common/../archSpec/base/ditauseconreftarget.md) for more information.

    **Draft comment:**Kristen J Eberlein 28 September 2022  
    

    Here is the content from the "DITA map attributes" topic:

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

    **Draft comment:**robander   
    TO RESOLVE 13 May 2026: Ensure there is nothing conflicting, and add a link from here to the more architectural info that gives all the details

-   **`@processing-role` \(common map attributes\)**

    Specifies whether the referenced resource is processed normally or treated as a resource that is only included in order to resolve references, such as key or content references. The following values are valid:

    -   **normal**

        Indicates that the resource is a readable part of the information set. It is included in navigation and search results. This is the default value for the `<topicref>` element.

    -   **resource-only**

        Indicates that the resource should be used only for processing purposes. It is not included in navigation or search results, nor is it rendered as a topic. This is the default value for the `<keydef>` element.

    -   **-dita-use-conref-target**

        See [Using the -dita-use-conref-target value](../../common/../archSpec/base/ditauseconreftarget.md) for more information.

    If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

-   **`@search` \(common map attributes\)**

    Specifies whether the target is available for searching. If the value is not specified locally, the value might cascade from another element in the map \(for cascade rules, see [Cascading of metadata attributes in a DITA map](../../common/../archSpec/base/cascading-in-a-ditamap.md#)\). The following values are valid: yes, no, and -dita-use-conref-target.

    **Draft comment:**Kristen J Eberlein 28 September 2022  
    

    Here is the content from the "DITA map attributes" topic:

    -   **`@search`**

        Specifies whether the topic is included in search indexes.

    **Draft comment:**robander   
    TO RESOLVE 13 May 2026: Update to use the same description, these are very similar but not exact. If the description is this short and similar it should be reused with conref.

-   **`@subjectrefs` \(common map attributes\)**

    Specifies one or more keys that are each defined by a subject definition in a subject scheme map. Multiple values are separated by white space.

-   **`@toc` \(common map attributes\)**

    Specifies whether a topic appears in the table of contents \(TOC\) based on the current map context. If the value is not specified locally, the value might cascade from another element in the map \(for cascade rules, see [Cascading of metadata attributes in a DITA map](../../common/../archSpec/base/cascading-in-a-ditamap.md#)\). The following values are valid:

    -   **yes**

        The topic appears in a generated TOC.

    -   **no**

        The topic does not appear in a generated TOC.

    -   **-dita-use-conref-target**

        See [TODO: Update link and title to OASIS published URI](https://dita-lang.org/dita/archspec/base/ditauseconreftarget) for more information.

    **Draft comment:**Kristen J Eberlein 28 September 2022  
    

    Here is the content from the "DITA map attributes" topic:

    -   **`@toc`**

        Specifies whether topics are excluded from navigation output, such as a Web site map or an online table of contents. By default, `<topicref>` hierarchies are included in navigation output; relationship tables are excluded.

    **Draft comment:**robander   
    TO RESOLVE 13 May 2026: I read that and kind of hate "web site map". Kind of think we should delete that bit from the other topic, and replace the first sentence there with a reused sentence from here.


## Complex table attributes

This group includes attributes that are defined on complex table elements. Unless other noted, these attributes are part of the OASIS Exchange Table Model. Complex table elements typically use only a subset of the attributes that are defined in this group.

-   **`@align` \(complex table attributes\)**

    Specifies the horizontal alignment of text in table entries. The following values are valid:

    -   **left**

        Indicates left alignment of the text.

    -   **right**

        Indicates right alignment of the text.

    -   **center**

        Indicates center alignment of the text.

    -   **justify**

        Justifies the contents to both the left and the right.

    -   **char**

        Indicates character alignment. The text is aligned with the first occurrence of the character specified by the `@char` attribute.

    -   **-dita-use-conref-target**

        See [Using the -dita-use-conref-target value](../../common/../archSpec/base/ditauseconreftarget.md) for more information.

    The `@align` attribute is available on the following table elements: `<colspec>`, `<entry>`, and `<tgroup>`.

-   **`@char` \(complex table attributes\)**

    Specifies the alignment character, which is the character that is used for aligning the text in table entries. This attribute applies when `align="char"`. A value of "" \(the null string\) means there is no aligning character.

    For example, if `align="char"` and `char="."` are specified, then text in the table entry aligns with the first occurrence of the period within the entry. This might be useful if decimal alignment is required.

    The `@char` attribute is available on the following table elements: `<colspec>` and `<entry>`.

-   **`@charoff` \(complex table attributes\)**

    Specifies the horizontal offset of the alignment character that is specified by the `@char` attribute. The value is a greater-than-zero number that is less than or equal to 100. It represents the percentage of the current column width by which the text is offset to the left of the alignment character.

    For example, if `align="char"`, `char="."`, and `charoff="50"` are all specified, then text in the table entry is aligned 50% of the distance to the left of the first occurrence of the period character within the table entry.

    The `@charoff` attribute is available on the following table elements: `<colspec>` and `<entry>`.

-   **`@colsep` \(complex table attributes\)**

    Specifies whether to render column separators between table entries. The following values are valid: 0 \(no separators\) and 1 \(separators\).

    The `@colsep` attribute is available on the following table elements: `<colspec>`, `<entry>`, `<table>`, and `<tgroup>`.

-   **`@rowheader` \(complex table attributes\)**

    Specifies whether the entries in the respective column are row headers. The following values are valid:

    -   **firstcol**

        Indicates that entries in the first column of the table are row headers. This applies when the `@rowheader` attribute is specified on the `<table>` element.

    -   **headers**

        Indicates that entries of the column that is described using the `<colspec>` element are row headers. This applies when the `@rowheader` attribute is specified on the `<colspec>` element.

    -   **norowheader**

        Indicates that entries in the first column are not row headers. This applies when the `@rowheader` attribute is specified on the `<table>` element.

    -   **-dita-use-conref-target**

        See [Using the -dita-use-conref-target value](../../common/../archSpec/base/ditauseconreftarget.md) for more information.

    **Note:** This attribute is not part of the OASIS Exchange Table Model upon which DITA tables are based. Some processors or output formats might not support all values.

    The `@rowheader` attribute is available on the following table elements: `<table>` and `<colspec>`.

-   **`@rowsep`\(complex table attributes\)**

    Specifies whether to render row separators between table entries. The following values are valid: 0 \(no separators\) and 1 \(separators\).

    The `@rowsep` attribute is available on the following table elements: `<colspec>`, `<entry>`, `<row>`, `<table>`, and `<tgroup>`.

-   **`@valign` \(complex table attributes\)**

    Specifies the vertical alignment of text in table entries. The following values are valid:

    -   **bottom**

        Indicates that text is aligned with the bottom of the table entry.

    -   **middle**

        Indicates that text is aligned with the middle of the table entry.

    -   **top**

        Indicates that text is aligned with the top of the table entry.

    -   **-dita-use-conref-target**

        See [Using the -dita-use-conref-target value](../../common/../archSpec/base/ditauseconreftarget.md) for more information.

    The `@valign` attribute is available on the following table elements: `<entry>`, `<tbody>`, `<thead>`, and `<row>`.


## Data-element attributes

This group contains attributes that are defined on the `<data>` element and its specializations.

-   **`@datatype` \(data-element attributes\)**

    Specifies the type of data contained in the `@value` attribute or within the `<data>` element. A typical use of `@datatype` will be the identifying URI for an XML Schema datatype.

-   **`@name` \(data-element attributes\)**

    Defines a unique name for the object.

    **Draft comment:**robander   
    Do we need to specify the scope of "unique" here?

    **Draft comment:**robander   
    TO RESOLVE 13 May 2026: ha, it often won't be unique because you often use the same name for all instances of a specific type of metadata. Maybe we just get rid of "unique"

-   **`@value` \(data-element attributes\)**

    Specifies a value associated with the current property or element.


## Date attributes

This group contains attributes that take date values. They are defined on metadata elements that work with date information:

-   **`@expiry` \(date attributes\)**

    Specifies the date when the information should be retired or refreshed. The date is specified using the ISO 8601 format: *YYYY*-*MM*-*DD*, where *YYYY* is the year, *MM* is the month \(01 to 12\), and *DD* is the day \(01-31\).

-   **`@golive` \(date attributes\)**

    Specifies the publication or general availability \(GA\) date. The date is specified using the ISO 8601 format: *YYYY*-*MM*-*DD*, where *YYYY* is the year, *MM* is the month \(01 to 12\), and *DD* is the day \(01-31\).


## Display attributes

This group contains attributes that affect the rendering of many elements.

-   **`@expanse` \(display attributes\)**

    Specifies the horizontal placement of the element. The following values are valid:

    -   **column**

        Indicates that the element is aligned with the current column margin.

    -   **page**

        Indicates that the element is placed on the left page margin for left-to-right presentation or the right page margin for right-to-left presentation.

    -   **spread**

        Indicates that the object is rendered across a multi-page spread. If the output format does not have anything that corresponds to spreads, then spread has the same meaning as page.

    -   **textline**

        Indicates that the element is aligned with the left \(for left-to-right presentation\) or right \(for right-to-left presentation\) margin of the current text line and takes indentation into account.

    -   **-dita-use-conref-target**

        See [Using the -dita-use-conref-target value](../../common/../archSpec/base/ditauseconreftarget.md) for more information.

    For `<table>`, in place of the `@expanse` attribute that is used by other DITA elements, the `@pgwide` attribute is used in order to conform to the OASIS Exchange Table Model.

    Some processors or output formats might not support all values.

-   **`@frame` \(display attributes\)**

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

    -   **-dita-use-conref-target**

        See [Using the -dita-use-conref-target value](../../common/../archSpec/base/ditauseconreftarget.md) for more information.

    Some processors or output formats might not support all values.

-   **`@scale` \(display attributes\)**

    Specifies the percentage by which fonts are resized in relation to the normal text size. The value of this attribute is a positive integer. When used on `<table>` or `<simpletable>`, the following values are valid: 50, 60, 70, 80, 90, 100, 110, 120, 140, 160, 180, 200, and [-dita-use-conref-target](https://dita-lang.org/dita/archspec/base/ditauseconreftarget).

    This attribute is primarily useful for print-oriented display. Some processors might not support all values.

    If the `@scale` attribute is specified on an element that contains an image, the image is not scaled. The image is scaled **only** if a scaling property is explicitly specified for the `<image>` element.


## ID and conref attributes

This group contains the attributes that enable the naming and referencing of elements.

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

-   **`@id`**

    Specifies an identifier for the current element. This ID is the target for references by `@href` and `@conref` attributes and for external applications that refer to DITA or LwDITA content. This attribute is defined with the XML data type NMTOKEN, except where noted for specific elements within the language reference.

    See [id attribute](../../archSpec/base/id.md) for more details.


## Inclusion attributes

This group includes attributes defined on `<include>` and its specializations:

**Draft comment:**Kristen J Eberlein 28 September 2002  


What is specialized from `<include>`? Both base \(if any\) and technical content ...

**Draft comment:**robander   
TO RESOLVE 13 May 2026: Is this a suggestion that we list the specializations here? They are all in the technical content spec: coderef, svgref, mathmlref. We could list those but I don't think it is necessary.

-   **`@encoding` \(inclusion attributes\)**

    **Draft comment:**Kristen J Eberlein 29 April 2019  
    

    Can we replace "should" in the following definition?

    **Draft comment:**robander   
    TO RESOLVE 13 May 2026: we can change to "is"

    Specifies the character encoding to use when translating the character data from the referenced content. The value should be a valid encoding name. If not specified, processors may make attempts to automatically determine the correct encoding, for example using HTTP headers, through analysis of the binary structure of the referenced data, or the `xml` processing instruction when including XML as text. The resource should be treated as UTF-8 if no other encoding information can be determined.

    When `parse="xml"`, standard XML parsing rules apply for the detection of character encoding. The necessity and uses of `@encoding` for non-standard values of `@parse` are implementation-dependent.

-   **`@parse` \(inclusion attributes\)**

    Specifies the processing expectations for the referenced resource. Processors must support the following values:

    -   **text**

        The contents should be treated as plain text. Reserved XML characters should be displayed, and not interpreted as XML markup.

    -   **xml**

        The contents of the referenced resource should be treated as an XML document, and the referenced element should be inserted at the location of the `<include>` element. If a fragment identifier is included in the address of the content, processors must select the element with the specified ID. If no fragment identifier is included, the root element of the referenced XML document is selected. Any grammar processing should be performed during resolution, such that default attribute values are explicitly populated. Prolog content must be discarded.

        It is an error to use `parse="xml"` anywhere other than within `<foreign>` or a specialization thereof.

    Processors may support other values for the `@parse` attribute with proprietary processing semantics. Processors should issue warnings and use `<fallback>` when they encounter unsupported `@parse` values. Non-standard `@parse` instructions should be expressed as URIs.

    **Note:** Proprietary `@parse` values will likely limit the portability and interoperability of DITA content, so should be used with care.


## Link relationship attributes

This group contains attributes whose values can be used for representing navigational relationships.

-   **`@format` \(link-relationship attributes\)**

    Specifies the format of the resource that is referenced.See [TODO: Update link and title to OASIS published URI](https://dita-lang.org/dita/langref/attributes/attribute-groups#attribute-groups__attr-format) for detailed information on supported values and processing implications.

-   **`@href` \(link-relationship attributes\)**

    Specifies a reference to a resource.See [TODO: Update link and title to OASIS published URI](https://dita-lang.org/dita/langref/attributes/attribute-groups#attribute-groups__attr-href) for detailed information on supported values and processing implications.

-   **`@scope` \(link-relationship attributes\)**

    Specifies the closeness of the relationship between the current document and the referenced resource.The following values are valid: local, peer, external, and -dita-use-conref-target.

    See [TODO: Update link and title to OASIS published URI](https://dita-lang.org/dita/langref/attributes/commonattributes#common-atts__attr-scope) for detailed information on supported values and processing implications.

-   **`@type` \(link-relationship attributes\)**

    Describes the target of a reference. See [TODO: Update link and title to OASIS published URI](https://dita-lang.org/dita/langref/attributes/commonattributes#common-atts__attr-type) for detailed information on supported values and processing implications.


## Localization attributes

**Draft comment:**Kristen J Eberlein 29 September 2022  


The definition of the localizations attribute matches how they are described in the architectural topics. Wherever possible, the definition is reused. Where it is not reused \(because the definition in the archSpec topics is in a shortdesc\), I've checked to ensure that wording is identical.

**Draft comment:**robander   
TO RESOLVE 13 May 2026: I don't think there is any action here, maybe change this to an XML comment?

This group contains the attributes that are related to translation and localization.

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


## Metadata attributes

This group contains common metadata attributes: `@base`, `@importance`, `@props`, `@rev`, and `@status`. The `@base` and `@props` attributes can be specialized.

-   **`@base`**

    Specifies metadata about the element. It is often used as a base for specialized attributes that have a simple syntax for values, but which are not conditional processing attributes.

    The `@base` attribute takes a space-delimited set of values. However, when serving as a container for generalized attributes, the attribute values will be more complex. See [Attribute generalization](../../common/../archSpec/base/generalization-attributes.md) for more details.

-   **`@importance`**

    Specifies the importance or priority that is assigned to an element. The following values are valid: default, deprecated, high, low, normal, obsolete, optional, recommended, required, urgent, and -dita-use-conref-target. This attribute is not used for conditional processing, although applications might use the value of the `@importance` attribute to highlight elements. exampleFor example, in steps of a task topic, the value of the `@importance` attribute indicates whether a step is optional or required.

    **Draft comment:**Kristen J Eberlein 29 September 2022  
    

    I think the phrase "to highlight elements" is a little off. Maybe "render generated text"? And how about adding "Processors often add text or images to ensure that readers of the generated content understand whether the step is optional or required." to the end of the example?

    **Draft comment:**robander   
    TO RESOLVE 13 May 2026:

    -   maybe change to "… although applications can modify how content is rendered based on the value of the `@importance` attribute
    -   And update the example with something like "For example, in steps of a task topic, processors often add text or images to highlight that a step is optional or required"
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


## Simple table attributes

This group includes attributes that are defined only on the `<simpletable>` element: `@keycol` and `@relcolwidth`. These attributes are listed in a group because the `<simpletable>` element is frequently used as a specialization base.

-   **`@keycol` \(simpletable attributes\)**

    Specifies the column that contains the content that represents the key to the tabular structure. If `@keycol` is present and assigned a numerical value, the specified column is treated as a vertical header.

-   **`@relcolwidth` \(simpletable attributes\)**

    Specifies the width of each column in relationship to the width of the other columns. The value is a space-separated list of relative column widths. Each column width is specified as a positive integer or decimal number followed by an asterisk character.

    exampleFor example, the value `relcolwidth="1* 2* 3*"` gives a total of 6 units across three columns. The relative widths are 1/6, 2/6, and 3/6 \(16.7%, 33.3%, and 50%\). Similarly, the value `relcolwidth="90* 150*"` causes relative widths of 90/240 and 150/240 \(37.5% and 62.5%\).


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

    -   **-dita-use-conref-target**

        See [Using the -dita-use-conref-target value](../../common/../archSpec/base/ditauseconreftarget.md) for more information.


## Universal attributes

This group defines a set of attributes that are available on almost all DITA elements. It includes all elements in the ID, localization, and metadata attribute groups, as well as the following attributes:

-   **`@class` _\(not for use by authors\)_**

    *This attribute is not for use by authors. If an editor displays `@class` attribute values, do not edit them.* Specifies a default value that defines the specialization ancestry of the element. Its predefined values allow DITA tools to work correctly with specialized elements. In a generalized DITA document the `@class` attribute value in the generalized instance might differ from the default value for the `@class` attribute for the element as given in the DTD or schema. See [The class attribute rules and syntax](../../archSpec/base/specialization-class-attribute.md) for more information. This attribute is specified on every element except for the `<dita>` container element. It is always specified with a default value, which varies for each element.

-   **`@outputclass`**

    Specifies a role that the element is playing. The role must be consistent with the basic semantic and expectations for the element. In particular, the `@outputclass` attribute can be used for styling during output processing; HTML output will typically preserve `@outputclass` for CSS processing.

    **Draft comment:**robander   
    I don't like "The role must be consistent...", that seems like best practice that cannot be normative – and I could easily say outputclass="flashy" which makes my element show up with sparkles, and has nothing to do with "the basic semantic and expectations for the element".

    **Draft comment:**robander   
    TO RESOLVE 13 May 2026: how about saying "the role can be", or even a lower-case should, rather than "must be"?


**Parent topic:**[Attributes](../../../../baseSpec/specification/langRef/attributes/attributes.md)

