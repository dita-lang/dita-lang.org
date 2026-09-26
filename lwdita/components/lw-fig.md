---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Figure

A figure is a container for a variety of objects, including artwork, images, code samples, equations, and tables.

## Syntax

-   **XDITA**

    `<fig>`

-   **HDITA**

    `<figure>`

-   **MDITA \(core and extended profiles\)**

    There is no specific syntax for figure in MDITA.


## Usage information

A `<fig>` component enables associating other components, such as a title or description, with the contents of the figure component.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA**

    The following attributes are available on this element: [display attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#display-attributes), [link relationship attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#link-relationship-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **HDITA**

    The following attributes are available on this element: [link relationship attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#link-relationship-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of figure in an XDITA topic.

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

The following example demonstrates the use of figure in an HDITA topic.

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

**Parent topic:**[Body components](../components/containers/body-components.md)

