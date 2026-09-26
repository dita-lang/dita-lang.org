---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Subscript

A subscript is text that is printed below the line. It is frequently used in chemical and mathematical formulas.

## Syntax

<table><thead><tr><th align="left" id="d33618e35">

Authoring format

</th><th align="left" id="d33618e39">

Syntax and example

</th></tr></thead><tbody><tr><td id="d33618e46">

**XDITA**

</td><td>

`<sub>`

 ```
<p>In very rare occasions, our Sensei Sushi kitchen lab technicians can use Sulfuric Acid, FCC (H<sub>2</sub>SO<sub>4</sub>) to control pH during processing. Ask your supervisor for more information.</p>
```

</td></tr><tr><td id="d33618e67">

**HDITA**

</td><td>

`<sub>`

 ```
<p>In very rare occasions, our Sensei Sushi kitchen lab technicians can use Sulfuric Acid, FCC (H<sub>2</sub>SO<sub>4</sub>) to control pH during processing. Ask your supervisor for more information.</p>
```

</td></tr><tr><td id="d33618e88">

**MDITA \(core and extended profiles\)**

</td><td>

```
In very rare occasions, our Sensei Sushi kitchen lab technicians can use Sulfuric Acid, FCC (H<sub>2</sub>SO<sub>4</sub>) to control pH during processing. Ask your supervisor for more information.
```

</td></tr></tbody>
</table>## Rendering expectations

The subscript component is typically rendered lower in relationship to the surrounding text and in a smaller font.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref).

-   **MDITA**

    For the MDITA core profile, the equivalent of the XDITA `@keyref` attribute is supported. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of subscript in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
<topic id="food-additives">
  <title>Food Additives for pH Control</title>
  <body>
    <p>In very rare occasions, our Sensei Sushi kitchen lab technicians can use Sulfuric Acid, FCC (H<sub>2</sub>SO<sub>4</sub>) to control pH during processing. Ask your supervisor for more information.</p>
  </body>
</topic>
```

The following example demonstrates the use of subscript in an HDITA topic.

```
  <!DOCTYPE html>
  <html>
  <head>
  <title>Food Additives for pH Control</title>
  </head>
  <body>
   <article id="food-additives">
    <h1>Food Additives for pH Control</h1>
    <p>In very rare occasions, our Sensei Sushi kitchen lab technicians can use Sulfuric Acid, FCC (H<sub>2</sub>SO<sub>4</sub>) to control pH during processing. Ask your supervisor for more information.</p>
  </article>
  </body>
  </html>
```

The following example demonstrates the use of subscript in an MDITA topic.

```
# Food Additives for pH Control

In very rare occasions, our Sensei Sushi kitchen lab technicians can use Sulfuric Acid, FCC (H<sub>2</sub>SO<sub>4</sub>) to control pH during processing. Ask your supervisor for more information.
```

**Parent topic:**[Highlighting components](../components/containers/highlighting-components.md)

