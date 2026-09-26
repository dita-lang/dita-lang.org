# Processing key references to generate text or link text

Variable text can be specified by key definitions. Processors determine the effective text by retrieving the content of elements in a specific sequence.

-   **Empty elements**

    Empty elements that specify a key reference might get their effective content from the referenced key definitions. For the purpose of determining variable text, empty elements are defined as elements that meet the following criteria:

    -   Have no text content, including white space
    -   Have no sub-elements
    -   Have no attributes that would be used as text content
-   **Key definitions with child `<topicmeta>` elements**

    When an empty element references a key definition that has a child `<topicmeta>` element, content from that `<topicmeta>` element is used to determine the effective content of the referencing element. Effective content from the key definition becomes the element content, with the following exceptions:

    -   For empty `<image>` elements, the effective content is used as alternate text. This is equivalent to creating an `<alt>` sub-element to hold that content.
    -   For empty `<link>` elements, the effective content is used as link text. This is equivalent to creating a `<linktext>` sub-element to hold that content.
    -   For empty `<link>` and `<xref>` elements, a key definition can provide a short description in addition to the normal effective content. If the key definition includes `<shortdesc>` inside of `<topicmeta>`, the content of the `<shortdesc>` element also provides effective content for a `<desc>` sub-element.
    -   The `<longdescref>` element is an empty element with no effective content. Key definitions do not set effective text for this element.
    -   The `<param>` element does not have any effective content, so key definitions do not result in effective content for `<param>` elements.
    **Draft comment:**robander 1 june 2021  
    we've allowed @keyref on &lt;lq&gt; for a while now. Based on discussion at today's TC \(1 june 2021\) this would be interpreted as the title of the source of the quotation - thus the removal of href/reftitle. OK to update accordingly, or does that need further confirmation from TC?

    **Draft comment:**robander   
    TO RESOLVE 12 May 2026: Just update based on that understanding from 2021

-   **Processing rules**

    Processors MUST resolve variable text that is defined using keys by using the following sequence:

    1.  Effective text content is taken from the `<keytext>` element.
    2.  Effective text content is taken from the `<titlealt>` element with `@title-role` set to linking.
    3.  Effective text content is taken from the `<titlealt>` element with `@title-role` set to navigation.
    4.  Effective text content is taken from the `<titlealt>` element with `@title-role` set to a processor-recognized value.
    5.  Effective text content is taken from the title of the referenced document, if available.
    6.  Effective text content is determined by the processor.
-   **Generalization of effective content**

    When the effective content for a key reference element results in invalid elements, those elements SHOULD be generalized to produce a valid result.

    For example, `<keytext>` in the key definition might use a domain specialization of `<keyword>` that is not valid in the key reference context, in which case the specialized element is generalized to `<keyword>`. If the generalized content is also not valid, a text equivalent is used instead. For example, `<keytext>` might include `<ph>` or a specialized `<ph>` in the key definition, but neither of those are valid as the effective content for a `<keyword>`. In that case, the text content of the `<ph>` is used.


