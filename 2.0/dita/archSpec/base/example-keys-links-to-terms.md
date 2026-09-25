---
author: OASIS DITA Technical Committee
---

# Example: Links from `<term>` or `<keyword>` elements

The `@keyref` attribute enables authors to specify that references to keywords or terms in a DITA topic can be rendered as a link to an associated resource.

In this scenario, a company with well-developed glossary wants to ensure that instances of a term that is defined in the glossary always include a link to the glossary topic.

1.  An information architect adds values for the `@keys` attribute to all the of the `<topicref>` elements that are in the DITA map for the glossary, for example:

    ```
    <map>
      <title>Company-wide glossary</title>
      <topicref keys="term-1" href="term-1.dita"/>
      <topicref keys="term-2" href="term-2.dita"/>
      <topicref keys="term-3" href="term-3.dita"/>
      <topicref keys="term-4" href="term-4.dita"/>
    </map>
    ```

2.  When authors refer to a term in a topic, they use the following mark-up:

    ```
    <term keyref="term-1"/>
    ```

    When the `<term>` element is rendered, the content is provided by the `<title>` element of the glossary topic. The `<term>` element also is rendered as a link to the glossary topic.


**Parent topic:**[Examples of keys](../../archSpec/base/examples-of-keys.md)

