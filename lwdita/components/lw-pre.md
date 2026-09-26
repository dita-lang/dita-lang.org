---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Preformatted text

Preformatted text is text that contains line breaks and spaces that are intended to be preserved at publication time.

## Syntax

-   **XDITA**

    `<pre>`

-   **HDITA**

    `<pre>`

-   **MDITA \(core and extended profiles\)**

    Fenced code blocks \(e.g. ````text````\) or indented code blocks \(e.g. `text`\) \(how to indicate an indent???\)


## Rendering expectations

Processors SHOULD preserve the line breaks and spaces that are present in preformatted text.

The code block component is typically rendered in a monospaced font.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA**

    The following attributes are available on this element: [ID attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props), and the additional attribute listed below.

-   **HDITA**

    The following attributes are available on this element: [ID attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props)

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.


For XDITA, the following additional attribute is also available:

-   **`@xml:space`**

    Specifies how to handle white space in the current element. It ensures that parsers respect white space that is part of the data in those elements, including line-end characters. When defined, it has a fixed value of preserve, making it a default property of the element that cannot be changed or deleted by authors.


-   **`@xml:space`**

    Specifies how to handle white space in the current element. It ensures that parsers respect white space that is part of the data in those elements, including line-end characters. When defined, it has a fixed value of preserve, making it a default property of the element that cannot be changed or deleted by authors.


## Examples

The following example demonstrates the use of preformatted text in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
<topic id="sensei-promise">
  <title>The Sensei Sushi Promise</title>
  <body>
    <pre>
      Sensei Sushi cares about tradition
      Sensei Sushi cares about the customer
      Sensei Sushi cares about fun.
     </pre>
  </body>
</topic>
```

The following example demonstrates the use of preformatted text in an HDITA topic.

```
<!DOCTYPE html>
<title>The Sensei Sushi Promise</title>
<body>
  <article id="sensei-promise">
    <h1>The Sensei Sushi Promise</h1>
    <pre>
      Sensei Sushi cares about tradition
      Sensei Sushi cares about the customer
      Sensei Sushi cares about fun.
    </pre>
  </article>
</body>
```

The following example demonstrates the use of preformatted text in an MDITA topic.

```
# The Sensei Sushi Promise


          Sensei Sushi cares about tradition

          Sensei Sushi cares about the customer

          Sensei Sushi cares about fun.
```

**Parent topic:**[Body components](../components/containers/body-components.md)

