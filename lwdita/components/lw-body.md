---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Body

The body contains the main content of a topic.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d32236e37">

Authoring format

</th><th align="left" id="d32236e41">

Syntax and example

</th></tr></thead><tbody><tr><td id="d32236e48">

**XDITA**

</td><td>

`<body>`

 ```
<topic id="franchise-intro">
  <title>An innovative, attractive, and out of the ordinary concept</title>
  **&lt;body&gt;**
    <p>Are you interested in investing with us? Welcome to our franchise information package.</p>
  **&lt;/body&gt;**
</topic>
```

</td></tr><tr><td id="d32236e73">

**HDITA**

</td><td>

`<body>`

 ```
**&lt;body&gt;**
  <article id="franchise-intro">
    <h1>An innovative, attractive, and out of the ordinary concept</h1>
    <p>Are you interested in investing with us? Welcome to our franchise information package.</p>
  </article>
**&lt;/body&gt;**
```

</td></tr><tr><td id="d32236e96">

**MDITA**

</td><td>

There is no specific support in the MDITA core profile. If needed, use an HDITA snippet.

</td></tr></tbody>
</table>## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes) and [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes).

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of body in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
<topic id="franchise-intro">
  <title>An innovative, attractive, and out of the ordinary concept</title>
  <body>
    <p>Are you interested in investing with us? Welcome to our franchise information package.</p>
  </body>
</topic>
```

The following example demonstrates the use of body in an HDITA topic.

```
<!DOCTYPE html>
<title>An innovative, attractive, and out of the ordinary concept</title>
<body>
  <article id="franchise-intro">
    <h1>An innovative, attractive, and out of the ordinary concept</h1>
    <p>Are you interested in investing with us? Welcome to our franchise information package.</p>
  </article>
</body>
```

The following example demonstrates the equivalent of the body component in an MDITA topic.

```
# An innovative, attractive, and out of the ordinary concept

Are you interested in investing with us? Welcome to our franchise information package.
```

**Parent topic:**[Basic topic components](../components/containers/basic-topic-components.md)

