---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# `<subjectHead>`

The `<subjectHead>` element provides a heading for a group of subjects, for use if the subject scheme is rendered and displayed.

## Usage information

The heading provided by the `<subjectHead>` element might be displayed when a subject scheme is rendered to let users select subjects as part of a faceted browsing experience.

The `<subjectHead>` element does not reference a resource. It also cannot specify either the `@keys` or `@keyref` attribute, so it does not define any controlled values.

## Specialization hierarchy

The `<subjectHead>` element is specialized from `<topicref>`. It is defined in the subject scheme module.

## Content model

[`<subjectHeadMeta>`](../content-models/../base/subjectHeadMeta.md)?, \([`<data>`](../content-models/../base/data.md) \| [`<subjectdef>`](../content-models/../base/subjectdef.md) \| [`<subjectHead>`](../content-models/../base/subjectHead.md) \| [`<topicref>`](../content-models/../base/topicref.md)\)\*

Contained by

[`<subjectHead>`](../content-models/../base/subjectHead.md), [`<subjectScheme>`](../content-models/../base/subjectScheme.md), [`<subjectdef>`](../content-models/../base/subjectdef.md)

In order

1.  Optional [`<subjectHeadMeta>`](../content-models/../base/subjectHeadMeta.md)
2.  Zero or more of the following
    -   [`<data>`](../content-models/../base/data.md)
    -   [`<subjectHead>`](../content-models/../base/subjectHead.md)
    -   [`<subjectdef>`](../content-models/../base/subjectdef.md)
    -   [`<topicref>`](../content-models/../base/topicref.md)

Contained by

-   [`<subjectHead>`](../content-models/../base/subjectHead.md)
-   [`<subjectScheme>`](../content-models/../base/subjectScheme.md)
-   [`<subjectdef>`](../content-models/../base/subjectdef.md)

## Inheritance

- map/topicref subjectScheme/subjectHead

The `<subjectHead>` element is specialized from [`<topicref>`](../content-models/../base/topicref.md). It is defined in the subjectScheme module.

## Attributes

The following attributes are available on this element: [universal attributes](../../common/../langRef/attributes/universalAttributes.md), [`@collection-type`](../attributes/commonAttributes.md#attr-collection-type), [`@linking`](../attributes/commonAttributes.md#attr-linking), [`@processing-role`](../attributes/commonAttributes.md#attr-processing-role), and [`@toc`](../attributes/commonAttributes.md#attr-toc),.

For this element, the following considerations apply:

-   The `@collection-type` attribute has an expected processing default value of unordered, although this value is not defaulted in the grammar files. This element limits the available values for `@collection-type` to unordered, sequence, and -dita-use-conref-target.
-   The `@linking` attribute has a default value of normal, and no other values are valid.

The following attributes are available on this element: [universal attributes](../../common/../langRef/attributes/universalAttributes.md) and the attributes defined below.

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
    The `@collection-type` attribute has an expected processing default value of unordered, although this value is not defaulted in the grammar files. This element limits the available values for `@collection-type` to unordered, sequence, and -dita-use-conref-target.

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

    The `@linking` attribute has a default value of normal, and no other values are valid.

-   **`@processing-role` \(common map attributes\)**

    Specifies whether the referenced resource is processed normally or treated as a resource that is only included in order to resolve references, such as key or content references. The following values are valid:

    -   **normal**

        Indicates that the resource is a readable part of the information set. It is included in navigation and search results. This is the default value for the `<topicref>` element.

    -   **resource-only**

        Indicates that the resource should be used only for processing purposes. It is not included in navigation or search results, nor is it rendered as a topic. This is the default value for the `<keydef>` element.

    -   **-dita-use-conref-target**

        See [Using the -dita-use-conref-target value](../../common/../archSpec/base/ditauseconreftarget.md) for more information.

    If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

-   **`@toc` \(common map attributes\)**

    Specifies whether a topic appears in the table of contents \(TOC\) based on the current map context. If the value is not specified locally, the value might cascade from another element in the map \(for cascade rules, see [Cascading of metadata attributes in a DITA map](../../common/../archSpec/base/cascading-in-a-ditamap.md#)\). The following values are valid:

    -   **yes**

        The topic appears in a generated TOC.

    -   **no**

        The topic does not appear in a generated TOC.

    -   **-dita-use-conref-target**

        See [Using the -dita-use-conref-target value](../../archSpec/base/ditauseconreftarget.md) for more information.

    **Draft comment:**Kristen J Eberlein 28 September 2022  
    

    Here is the content from the "DITA map attributes" topic:

    -   **`@toc`**

        Specifies whether topics are excluded from navigation output, such as a Web site map or an online table of contents. By default, `<topicref>` hierarchies are included in navigation output; relationship tables are excluded.

    **Draft comment:**robander   
    TO RESOLVE 13 May 2026: I read that and kind of hate "web site map". Kind of think we should delete that bit from the other topic, and replace the first sentence there with a reused sentence from here.


## Example

In the following code sample, the `<subjectHead>` elements define two groupings of subjects and associate labels.

```
<subjectScheme toc="yes" search="no">
  <subjectdef keys="hobbies">
    <subjectdef keys="fiber-arts">
      <subjectHead>
        <subjectHeadMeta>
          <navtitle>Fiber arts</navtitle>
        </subjectHeadMeta>
        <subjectdef keys="knitting" href="knitting.dita"/>
        <subjectdef keys="quilting" href="quilting.dita"/>
        <subjectdef keys="sewing" href="sewing.dita"/>
      </subjectHead>
    </subjectdef>
    <subjectdef keys="woodworking">
      <subjectHead>
        <subjectHeadMeta>
          <navtitle>Woodworking</navtitle>
        </subjectHeadMeta>
        <subjectdef keys="scroll-sawing" href="scroll-sawing.dita"/>
        <subjectdef keys="whittling" href="whittling.dita"/>
        <subjectdef keys="wood-turning" href="woodturning.dita"/>
      </subjectHead>
    </subjectdef>
  </subjectdef>
</subjectScheme>
```

**Parent topic:**[Subject scheme elements](../../langRef/containers/subjectScheme.md)

