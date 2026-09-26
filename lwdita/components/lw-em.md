---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Emphasized text

Emphasis indicates special meaning or particular importance.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d26477e37">

Authoring format

</th><th align="left" id="d26477e41">

Syntax and example

</th></tr></thead><tbody><tr><td id="d26477e48">

**XDITA**

</td><td>

`<em>`

 ```
<p>We offer more than 30 **&lt;em&gt;exclusive&lt;/em&gt;** creations of original 
   rolls, from the California roll to sushi with BBQ chicken or 
   grilled steak.
</p>
```

</td></tr><tr><td id="d26477e72">

**HDITA**

</td><td>

`<em>`

 ```
<p>We offer more than 30 **&lt;em&gt;exclusive&lt;/em&gt;** creations of original 
   rolls, from the California roll to sushi with BBQ chicken or 
   grilled steak.
</p>
```

</td></tr><tr><td id="d26477e96">

**MDITA \(core and extended profiles\)**

</td><td>

Asterisk \(`*`\) or underscore \(`_`\)

 ```
We offer more than 30 **\*exclusive\*** creations of original
rolls, from the California roll to sushi with BBQ chicken or 
grilled steak.
```

</td></tr></tbody>
</table>## Rendering expectations

For Western languages, the emphasis component is typically rendered in an italic font.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref).

-   **MDITA**

    For the MDITA core profile, the equivalent of the XDITA `@keyref` attribute is supported. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of emphasized text in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
<topic id="franchise-intro">
  <title>An innovative, attractive, and out of the ordinary concept</title>
   <body>
     <p>We offer more than 30 <em>exclusive</em> creations of original rolls, from the
        California roll to sushi with BBQ chicken or grilled steak.</p>
  </body>
</topic>
```

The following example demonstrates the use of emphasized text in an HDITA topic.

```
<!DOCTYPE html>
<title>An innovative, attractive, and out of the ordinary concept</title>
<body>
  <article id="franchise-intro">
    <h1>An innovative, attractive, and out of the ordinary concept</h1>
    <p>We offer more than 30 <em>exclusive</em> creations of original rolls, from the California roll to sushi with BBQ chicken or grilled steak.</p>
  </article>
</body>
```

The following example demonstrates the use of emphasized text in an MDITA topic.

```
# An innovative, attractive, and out of the ordinary concept

We offer more than 30 *exclusive* creations of original rolls, from the California roll to sushi with BBQ chicken or grilled steak.
```

**Parent topic:**[Emphasis components](../components/containers/emphasis-components.md)

