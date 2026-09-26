---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Topic reference

A topic reference is the mechanism for referencing a topic \(or another resource\) from a DITA map. It can nest, which enables the expression of navigation and table-of-content hierarchies, as well as containment hierarchies and parent-child relationships.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d32045e39">

Authoring format

</th><th align="left" id="d32045e43">

Syntax and example

</th></tr></thead><tbody><tr><td id="d32045e50">

**XDITA**

</td><td>

`<topicref>`

 ```
**&lt;topicref href="alternatives.dita"&gt;**
  <topicref href="low-power.dita"/>
  <topicref href="high-power.dita"/>**
&lt;/topicref&gt;**
```

</td></tr><tr><td id="d32045e73">

**HDITA**

</td><td>

`<a href>` inside of a list item

 ```
<li>**&lt;a href="alternatives.html"&gt;Alternative lighting setups&lt;/a&gt;**
  <ul>
    <li><a href="low-power.html">Low power installation</a></li>
    <li><a href="high-power.html">High power installation</a></li>
  </ul>
</li>
```

</td></tr><tr><td id="d32045e96">

**MDITA**

</td><td>

`[link text](URI)` inside of a list item

 ```
**- \[Alternative lighting setups\]\(alternatives.md\)**
 - [Low power installation](low-power.md)
 - [High power installation](high-power.md)
```

</td></tr></tbody>
</table>## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [ID attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id-attributes), [link relationship attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#link-relationship-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), [`@keys`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keys), [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **MDITA**

    For the MDITA core profile, the equivalent of the XDITA `@keyref` attribute is supported. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

This section contains examples of how the topic reference component can be used.

The following code sample shows a simple DITA map that represents the **Acme Widget User Guide**. Each of the `<topicref>` elements represents the top-level topic for a chapter, and indirect addressing is used to reference the DITA topics.

```
map>
  <topicmeta>
    <navtitle>Acme Widget User Guide</navtitle>
  </topicmeta>
  <keydef href="key-definitions.ditamap"/>
  **&lt;topicref keyref="installing"&gt;**
    <!-- … -->
  </topicref>
  **&lt;topicref keyref="configuring"&gt;**
    <!-- … -->
  </topicref>
  **&lt;topicref keyref="administering"&gt;**
    <!-- … -->
  </topicref>
  **&lt;topicref keyref="developing"&gt;**
    <!-- … -->
  </topicref>
  **&lt;topicref keyref="troubleshooting"&gt;**
    <!-- … -->
  </topicref>
</map>
```

The following code sample shows a simple DITA map that represents the **Acme Widget User Guide**. Each of the topic reference components represents the top-level topic for a chapter, and direct addressing is used to reference the HDITA topics.

```
<ul>
  <li>**&lt;a href="installing.html"&gt;Installing Acme Widget&lt;/a&gt;**
      <! ... -->
  </li>
  <li>**&lt;a href="configuring.html"&gt;Configuring Acme Widget&lt;/a&gt;**
      <! ... -->
  </li>
  <li>**&lt;a href="administering.html"&gt;Administering Acme Widget&lt;/a&gt;**
      <! ... -->
  </li>
  <li>**&lt;a href="developing.html"&gt;Developing Acme Widget applications&lt;/a&gt;**
      <! ... -->
  </li>
  <li>**&lt;a href="troubleshooting.html"&gt;Troubleshooting Acme Widget&lt;/a&gt;**
      <! ... -->
  </li>
</ul>
```

The following code sample shows a simple DITA map that represents the **Acme Widget User Guide**. Each of the topic reference components represents the top-level topic for a chapter, and direct addressing is used to reference the MDITA topics.

```
**- \[Installing Acme Widget\]\(installing.md\)**
 <!-- ... -->**
- \[Configuring Acme Widget\]\(configuring.md\)**
 <!-- ... -->**
- \[Administering Acme Widget\] \(configuring.md\)**
 <!-- ... -->**
- \[Developing Acme Widget apps \(developing.md\)**
 <!-- ... -->**
- \[Troubleshooting Acme Widget \(troubleshooting.md\)**
```

**Parent topic:**[Map components](../components/containers/map-components.md)

