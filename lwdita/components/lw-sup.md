---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Superscript

A superscript is text that is printed above the line. It is frequently used in chemical and mathematical formulas.

## Syntax

<table><thead><tr><th align="left" id="d34126e35">

Authoring format

</th><th align="left" id="d34126e39">

Syntax and example

</th></tr></thead><tbody><tr><td id="d34126e46">

**XDITA**

</td><td>

`<sup>`

 ```
<p>Franchised restaurants should be located in areas of at least 200 ft<sup>2</sup>.</p>
```

</td></tr><tr><td id="d34126e65">

**HDITA**

</td><td>

`<sup>`

 ```
<p>Franchised restaurants should be located in areas of at least 200 ft<sup>2</sup>.</p>
```

</td></tr><tr><td id="d34126e84">

**MDITA \(core and extended profiles\)**

</td><td>

```
Franchised restaurants should be located in areas of at least 200 ft<sup>2</sup>.
```

</td></tr></tbody>
</table>## Rendering expectations

The superscript component is typically rendered higher in relationship to the surrounding text and in a smaller font.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref).

-   **MDITA**

    For the MDITA core profile, the equivalent of the XDITA `@keyref` attribute is supported. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of superscript in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
<topic id="requirements">
  <title>Franchise Requirements</title>
  <body>
    <p>Franchised restaurants should be located in areas of at least 200 ft<sup>2</sup>.</p>
  </body>
</topic>
```

The following example demonstrates the use of superscript in an HDITA topic.

```
  <!DOCTYPE html>
  <html>
  <head>
  <title>Franchise Requirements</title>
  </head>
  <body>
   <article id="requirements">
    <h1>Franchise Requirements</h1>
    <p>Franchised restaurants should be located in areas of at least 200 ft<sup>2</sup>.</p>
  </body>
  </html>
```

The following example demonstrates the use of superscript in an MDITA topic.

```
# Franchise Requirements

Franchised restaurants should be located in areas of at least 200 ft<sup>2</sup>.
```

**Parent topic:**[Highlighting components](../components/containers/highlighting-components.md)

