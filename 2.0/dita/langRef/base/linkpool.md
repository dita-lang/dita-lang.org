---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# `<linkpool>`

A link pool is a group of links. The order that the links are rendered in the output is determined by the processor.

## Rendering expectations

The order in which links in a `<linkpool>` element are rendered is processor-specific. A processor might sort links based on role or type. A processor might move or remove links based on the context. For example, prerequisite links might be rendered at the beginning of a Web page, or links to the next topic might be removed if the two topics are rendered on the same page in a PDF.

## Processing expectations

Attributes that cascade between topic references in a map, such as the `@scope` and `@format` attributes, also cascade from this element to contained links.

## Content model

\([`<linkpool>`](../content-models/../base/linkpool.md) \| [`<link>`](../content-models/../base/link.md)\)\*

Contained by

[`<linkpool>`](../content-models/../base/linkpool.md), [`<related-links>`](../content-models/../base/related-links.md)

Zero or more of the following

-   [`<link>`](../content-models/../base/link.md)
-   [`<linkpool>`](../content-models/../base/linkpool.md)

Contained by

-   [`<linkpool>`](../content-models/../base/linkpool.md)
-   [`<related-links>`](../content-models/../base/related-links.md)

## Inheritance

- topic/linkpool

The `<linkpool>` element is a base element type. It is defined in the topic module.

## Attributes

The following attributes are available on this element: [universal attributes](../../common/../langRef/attributes/universalAttributes.md), [`@collection-type`](../attributes/commonAttributes.md#attr-collection-type), [`@duplicates`](../attributes/commonAttributes.md#attr-duplicates), [`@format`](../attributes/commonAttributes.md#attr-format), [`@otherrole`](../attributes/commonAttributes.md#attr-otherrole), [`@role`](../attributes/commonAttributes.md#attr-role), [`@scope`](../attributes/commonAttributes.md#attr-scope), and [`@type`](../attributes/commonAttributes.md#attr-type).

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
-   **`@duplicates`**

    Specifies whether duplicate links are removed from a group of links. Duplicate links are links that address the same resource using the same properties, such as link text and link role. How duplicate links are determined is processor-specific. The following values are valid:

    -   **yes**

        Specifies that duplicate links are retained.

    -   **no**

        Specifies that duplicate links are removed.

    -   **-dita-use-conref-target**

        See [Using the -dita-use-conref-target value](../../common/../archSpec/base/ditauseconreftarget.md) for more information.

    The suggested processing default is yes within `<linklist>` elements and no for other links.

    **Draft comment:**robander Dec 28 2021  
    "How duplicate links are determined is processor-specific" ==&gt; this should be included in any updates to standardize language around "implementation dependent".

    **Draft comment:**robander   
    TO RESOLVE 13 May 2026: Ugh, we still need to do this - a review of the spec for any wording that hits at this, and then make it specific. Maybe a magic robot can help find all instances here.

-   **`@format` \(link-relationship attributes\)**

    Specifies the format of the resource that is referenced.See [The format attribute](../../archSpec/base/theformatattribute.md) for detailed information on supported values and processing implications.

-   **`@otherrole`**

    Specifies an alternate role for a link relationship when the `@role` attribute is set to other.

-   **`@role`**

    Specifies the role that a linked topic plays in relationship with the current topic.

    exampleFor example, in a parent/child relationship, the role would be parent when the target is the parent of the current topic, and child when the target is the child of the current topic. This can be used to sort and classify links when rendering.

    The following values are valid:

    -   **ancestor**

        Indicates a link to a topic above the parent topic.

    -   **child**

        Indicates a link to a direct child such as a directly nested or dependent topic.

    -   **cousin**

        Indicates a link to another topic in the same hierarchy that is not a parent, child, sibling, next, or previous.

    -   **descendant**

        Indicates a link to a topic below a child topic.

    -   **friend**

        Indicates a link to a similar topic that is not necessarily part of the same hierarchy.

    -   **next**

        Indicates a link to the next topic in a sequence.

    -   **other**

        Indicates any other kind of relationship or role. The type of role is specified as the value for the `@otherrole` attribute.

    -   **parent**

        Indicates a link to a topic that is a parent of the current topic.

    -   **previous**

        Indicates a link to the previous topic in a sequence.

    -   **sibling**

        Indicates a link between two children of the same parent topic.

    -   **-dita-use-conref-target**

        See [Using the -dita-use-conref-target value](../../common/../archSpec/base/ditauseconreftarget.md) for more information.

-   **`@scope` \(link-relationship attributes\)**

    Specifies the closeness of the relationship between the current document and the referenced resource.The following values are valid: local, peer, external, and -dita-use-conref-target.

    See [The scope attribute](../../archSpec/base/thescopeattribute.md) for detailed information on supported values and processing implications.

-   **`@type` \(link-relationship attributes\)**

    Describes the target of a reference. See [The type attribute](../../archSpec/base/thetypeattribute.md) for detailed information on supported values and processing implications.


## Example

The following code sample shows how a `<linkpool>` element is used to group a set of conceptual information. The order in which the links are rendered in the output is processor-dependent. In this example, the `@type` attribute on the `<linkpool>` element cascades to nested `<link>` elements.

```
<related-links>
  **&lt;linkpool type="concept"&gt;**
    <link href="czez.dita#czez" role="next"/>
    <link href="czunder.dita"/>
    <link format="html" href="czover.htm#sqljsupp" role="parent">
      <linktext>Overview of the CZ</linktext>
    </link>
    <link format="html" href="czesqlj.htm#sqljemb">
      <linktext>Working with CZESQLJ</linktext>
      <desc>When you work with CZESQLJ, you need to know...</desc>
    </link>
  **&lt;/linkpool&gt;**
</related-links>

```

**Parent topic:**[Related links elements](../../langRef/containers/related-links-elements.md)

