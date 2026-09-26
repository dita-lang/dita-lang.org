---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Navigation title

A navigation title is an alternative title for a resource. It is designed for situations where the topic title is unsuitable for use in a table of contents or navigation pane.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d34002e39">

Authoring format

</th><th align="left" id="d34002e43">

Syntax and example

</th></tr></thead><tbody><tr><td id="d34002e50">

**XDITA**

</td><td>

`<navtitle>`

 ```
<topicref href="alternatives.dita">
  **&lt;topicmeta&gt;**
    <navtitle>Alternative lighting setups</navtitle>
  **&lt;/topicmeta&gt;**
</topicref>
```

</td></tr><tr><td id="d34002e75">

**HDITA**

</td><td>

There is no specific markup for navigation title.

</td></tr><tr><td id="d34002e86">

**MDITA**

</td><td>

There is no specific markup for navigation title.

</td></tr></tbody>
</table>## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes) and [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes).

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Example

The following code sample shows how the `<navtitle>` element can provide a title for the map and a navigation title for a topic:

```
<map>
  <topicmeta>
    **&lt;!-- 1. Applies a title for the map --&gt;
    &lt;navtitle&gt;Developing a reuse strategy&lt;/navtitle&gt;**
  </topicmeta>
  <topicref keyref="developing-reuse-strategy">
    <topicref keyref="define-business-requirements"/>
    <topicref keyref="prototype-sample-source"/>
    <topicref keyref="select-reuse-methods"/>
    <topicref keyref="test-reuse-methods"/>
    <topicref keyref="correct-reuse-strategy">
      <topicmeta>
        **&lt;!-- 2. Applies a navigation title for the resource --&gt;
        &lt;navtitle&gt;Refine reuse strategy&lt;/navtitle&gt;**
      </topicmeta>
    </topicref>
    <!-- … -->
  </topicref>
</map>
```

In the above code sample, the `<navtitle>` element appears twice:

1.  It supplies a title for the DITA map.
2.  It supplies a navigation title of "Refine reuse strategy" for the resource referenced by the key "correct-reuse-strategy."

**Parent topic:**[Map components](../components/containers/map-components.md)

