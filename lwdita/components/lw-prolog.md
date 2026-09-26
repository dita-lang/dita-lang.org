---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Prolog

The prolog contains metadata about the topic, for example, author information or subject category.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d25816e37">

Authoring format

</th><th align="left" id="d25816e41">

Syntax and example

</th></tr></thead><tbody><tr><td id="d25816e48">

**XDITA**

</td><td>

`<prolog>`

 ```
**&lt;prolog&gt;**
  <data name="author" value="Victoria Fernando"/>**
&lt;/prolog&gt;**
```

</td></tr><tr><td id="d25816e71">

**HDITA**

</td><td>

There is no equivalent to `<prolog>`.

</td></tr><tr><td id="d25816e89">

**MDITA**

</td><td>

There is no equivalent to `<prolog>`.

</td></tr></tbody>
</table>## Attributes

The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **`@props`**

    Specifies metadata about the element. New attributes can be specialized from the `@props` attribute. This attribute supports conditional processing. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

    The `@props` attribute takes a space-delimited set of values.

    For HDITA, the equivalent of `@props` is `@data-props`


## Example

The following code sample shows how the XDITA `<prolog>` element can contain metadata that applies to the topic as a whole. The prolog holds three `<data>` elements, which store metadata about the author, product, and user goal associated with the topic.

```
<topic id="installing-acme-test-suite">
  <title>Installing the Acme Test Suite</title>
  <shortdesc>Install the Acme Test Suite in order to test whether your
    applications will work with the Acme core code.</shortdesc>
  **&lt;prolog&gt;**
    <data name="author" value="Carolyn Miller"/>
    <data name="product" value="Acme Test Suite"/>
    <data name="goal" value="installing"/>
    <data/>
  **&lt;/prolog&gt;**
  <!-- ... -->
</topic>
```

Note that this metadata is only useful for authors working with this content, since the content of `<data>` elements typically is not rendered by processors.

**Parent topic:**[Metadata components](../components/containers/metadata-components.md)

