---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Bold text

Bold text is text that is used to draw a reader's attention to a phrase without otherwise adding meaning to the content.

## Syntax

<table><thead><tr><th align="left" id="d31707e33">

Authoring format

</th><th align="left" id="d31707e37">

Syntax and example

</th></tr></thead><tbody><tr><td id="d31707e44">

**XDITA**

</td><td>

`<b>`

 ```
<p>We offer more than 30 exclusive creations of original rolls, from sushi with **&lt;b&gt;BBQ chicken&lt;/b&gt;** to **&lt;b&gt;grilled steak&lt;/b&gt;**.</p>
```

</td></tr><tr><td id="d31707e69">

**HDITA**

</td><td>

`<b>`

 ```
<p>We offer more than 30 exclusive creations of original rolls, from sushi with **&lt;b&gt;BBQ chicken&lt;/b&gt;** to **&lt;b&gt;grilled steak&lt;/b&gt;**.</p>
```

</td></tr><tr><td id="d31707e94">

**MDITA \(core and extended profiles\)**

</td><td>

Two asterisks \(`**`\) or two underscores \(`__`\)

 ```
We offer more than 30 exclusive creations of original rolls, from sushi with **\*\*BBQ chicken\*\*** to **\*\*grilled steak\*\***.
```

</td></tr></tbody>
</table>## Rendering expectations

The bold component is typically rendered in a bold font.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref).

-   **MDITA**

    For the MDITA core profile, the equivalent of the XDITA `@keyref` attribute is supported. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of bold text in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
<topic id="franchise-intro">
  <title>An innovative, attractive, and out of the ordinary concept</title>
  <body>
    <p>We offer more than 30 exclusive creations of original rolls, from sushi with <b>BBQ chicken</b> to <b>grilled steak</b>.</p>
  </body>
</topic>
```

The following example demonstrates the use of bold text in an HDITA topic.

```
<!DOCTYPE html>
<title>An innovative, attractive, and out of the ordinary concept</title>
<body>
  <article id="franchise-intro">
    <h1>An innovative, attractive, and out of the ordinary concept</h1>
    <p>We offer more than 30 exclusive creations of original rolls, from sushi with <b>BBQ chicken</b> to <b>grilled steak</b>.</p>
  </article>
</body>
```

The following example demonstrates the use of bold text in an MDITA topic.

```
# An innovative, attractive, and out of the ordinary concept

We offer more than 30 exclusive creations of original rolls, from sushi with **BBQ chicken** to **grilled steak**.
```

**Parent topic:**[Highlighting components](../components/containers/highlighting-components.md)

