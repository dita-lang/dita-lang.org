---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Key definition

A key definition provides a simple way to define a key without making the definition itself a part of rendered content.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d32366e37">

Authoring format

</th><th align="left" id="d32366e41">

Syntax and example

</th></tr></thead><tbody><tr><td id="d32366e48">

**XDITA**

</td><td>

`<keydef>`

 ```
**&lt;keydef keys="product-name"&gt;**
  <topicmeta>
    <keytext>Remote Network Lighting</keytext>
  </topicmeta>**
&lt;/keydef&gt;**
```

</td></tr><tr><td id="d32366e71">

**HDITA**

</td><td>

`<div data-class="keydef">`

 ```
**&lt;div data-class="keydef"&gt;**
  <span data-class="keytext" data-keys="product-name">Remote Lighting Network</span>
**&lt;/div&gt;**
```

</td></tr><tr><td id="d32366e94">

**MDITA**

</td><td>

There is no specific support in the MDITA core profile. If needed, use an HDITA snippet.

</td></tr></tbody>
</table>## Usage information

The key definition component is a convenience component. It is equivalent to a topic reference component that defines a key while also setting `@processing-role` to resource-only. Attributes defaulted on the key definition component ensure that key definitions do not appear in the TOC, do not add extra links, and are not rendered as topics.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [link relationship attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#link-relationship-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), [`@keys`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keys), [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props), and [`@processing-role`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#processing-role).

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.


\(XDITA and HDITA\) For the key definition component, the following considerations apply:

-   The `@keys` attribute is required.
-   The `@href` attribute might be omitted when the key definition is used for variable text.
-   The `@processing-role` attribute has a default value of resource-only.


## Examples

The section contains examples of how the key definition component can be used. Key definitions can be used to define keys for topics, as well as variable text.

The following code sample shows how the `<keydef>` element can be used to define keys for resources:

```
<map>
  **&lt;!-- Key definitions --&gt;**
  <keydef keys="winter-garden" href="garden/winter-garden.dita"/>
  <keydef keys="crop-types" href="crop-types.html" format="html" scope="local"/>
  <keydef keys="selecting-plants" href="garden/tasks/selecting-plants.dita"/>
  <!-- ... -->
</map>
```

For an example of a key definition used to define variable text, see [Figure 1](lw-keytext.md#xdita-example).

The following code sample shows how the `<keydef>` element can be used to define keys for resources:

```
**&lt;nav&gt;**
  <h1>Planting a winter garden</h1>
**&lt;!-- Key definitions --&gt;**
  <div data-class="keydef" 
       data-keys="winter-garden" 
       href="garden/winter-garden.html"/>
  <div data-class="keydef" 
       data-keys="crop-types" 
       href="garden/crop-types.html"/>
  <div data-class="keydef" 
       data-keys="selecting-plants" 
       href="garden/selecting-plants.html"/>
  <!-- ... -->
  **
&lt;/nav&gt;**
```

**Draft comment:**Kristen J Eberlein 26 December 2022  


Does the above code sample need @format and @scope?

For an example of a key definition used to define variable text, see [Figure 2](lw-keytext.md#hdita-example).

The following code sample shows how the `<keydef>` element can be used to define keys for resources. Note that in an MDITA map, the HDITA representation for key definitions must be used.

```
# Planting a winter garden
  **&lt;!-- Key definitions --&gt;**
  <div data-class="keydef" 
       data-keys="winter-garden" 
       href="garden/winter-garden.md"/>
  <div data-class="keydef" 
       data-keys="crop-types" 
       href="garden/crop-types.md"/>
  <div data-class="keydef" 
       data-keys="selecting-plants" 
       href="garden/selecting-plants.md"/>
  <!-- ... -->
```

**Draft comment:**Kristen J Eberlein 26 December 2022  


Does the above code sample need @format and @scope?

For an example of a key definition used to define variable text, see [Figure 3](lw-keytext.md#mdita-example).

**Parent topic:**[Map components](../components/containers/map-components.md)

