---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Alternate text

Alternate text is a textual description of an image. Systems often render the alternate text when the reader is using assistive technology or the image cannot be rendered.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d24117e40">

Authoring format

</th><th align="left" id="d24117e44">

Syntax and example

</th></tr></thead><tbody><tr><td id="d24117e51">

**XDITA**

</td><td>

`<alt>`

 ```
<image href="save.gif>
  **&lt;alt&gt;Save icon&lt;/alt&gt;**
</image>
```

</td></tr><tr><td id="d24117e73">

**HDITA**

</td><td>

`@alt`

 ```
<img **alt="Save icon"** href="save.gif"/>
```

</td></tr><tr><td id="d24117e95">

**MDITA**

</td><td>

Text inside square brackets \(`[]`\), as part of the markup for an image

 ```
!**\[Save icon\]** (save.gif]
```

</td></tr></tbody>
</table>## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref).

-   **MDITA**

    For the MDITA core profile, the equivalent of the XDITA `@keyref` attribute is supported. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of alternate text in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "topic.dtd">
<topic id="intro-product">
  <title>Remote Lighting Overview</title>
  <body>
    <p>The Remote Lighting Network kit includes a wireless smart system that helps make the lighting in your home more energy efficient and easier to manage.</p>
    <fig>
      <image href="images/kit-package.jpg"><alt>Retail package for the Remote Lighting Network kit </alt></image>
    </fig>
  </body>
</topic>
```

The following example demonstrates the use of alternate text in an HDITA topic.

```
<!DOCTYPE html>
<html>
<head>
  <title>Home</title>
</head>
<body>
  <article id="intro-product">
    <h1>Remote Lighting Overview</h1>
    <p>The Remote Lighting Network kit includes a wireless smart system that helps make the lighting in your home more energy efficient and easier to manage.</p>
    <figure>
      <img src="images/kit-package.jpg" alt="Retail package for the Remote Lighting Network kit" />
</figure>
  </article>
</body>
</html>
```

The following example demonstrates the use of alternate text in an MDITA topic.

```
# Remote Lighting Overview

The Remote Lighting Network kit includes a wireless smart system that helps make the lighting in your home more energy efficient and easier to manage.

![Retail package for the Remote Lighting Network kit](images/kit-package.jpg)
```

**Parent topic:**[Body components](../components/containers/body-components.md)

