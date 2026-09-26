---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Italic text

Italic text is text that is used to emphasize the key points in printed text, or when quoting a speaker, to show which words the speaker stressed.

## Syntax

<table><thead><tr><th align="left" id="d31149e33">

Authoring format

</th><th align="left" id="d31149e37">

Syntax and example

</th></tr></thead><tbody><tr><td id="d31149e44">

**XDITA**

</td><td>

`<i>`

 ```
<p>Our franchise decoration is inspired by Japanese sushi bars. You can say **&lt;i&gt;sayonara&lt;/i&gt;** to boring restaurants!</p>
```

</td></tr><tr><td id="d31149e68">

**HDITA**

</td><td>

`<i>`

 ```
<p>Our franchise decoration is inspired by Japanese sushi bars. You can say **&lt;i&gt;sayonara&lt;/i&gt;** to boring restaurants!</p>
```

</td></tr><tr><td id="d31149e92">

**MDITA \(core and extended profiles\)**

</td><td>

Asterisk \(`*`\) or underscore \(`_`\)

 ```
Our franchise decoration is inspired by Japanese sushi bars. You can say **\*sayonara\*** to boring restaurants!
```

</td></tr></tbody>
</table>## Rendering expectations

The bold component is typically rendered in an italic font.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref).

-   **MDITA**

    For the MDITA core profile, the equivalent of the XDITA `@keyref` attribute is supported. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of italic text in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
<topic id="design">
  <title>Designs inspired by Japanese originals</title>
  <body>
    <p>Our franchise decoration is inspired by Japanese sushi bars. You can say <i>sayonara</i> to boring restaurants!</p>
  </body>
</topic>
```

The following example demonstrates the use of italic text in an HDITA topic.

```
<!DOCTYPE html>
<title>Designs inspired by Japanese originals</title>
<body>
  <article id="design">
    <h1>Designs inspired by Japanese originals</h1>
    <p>Our franchise decoration is inspired by Japanese sushi bars. You can say <i>sayonara</i> to boring restaurants!</p>
  </article>
</body>
```

The following example demonstrates the use of italic text in an MDITA topic.

```
# An innovative, attractive, and out of the ordinary concept

Our franchise decoration is inspired by Japanese sushi bars. You can say *sayonara* to boring restaurants!
```

**Parent topic:**[Highlighting components](../components/containers/highlighting-components.md)

