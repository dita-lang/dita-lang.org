---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Definition term

A definition term is the item that is defined in a definition list entry.

## Syntax

-   **XDITA**

    `<dt>` inside [`<dl>`](lw-dl.md)

-   **HDITA**

    `<dt>` inside [`<dl>`](lw-dl.md)

-   **MDITA \(extended profile\)**

    See the [Definition list](lw-dl.md) component


## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [ID attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of definition term in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
<topic id="franchise-terms">
  <title>Profit, fun, and flavor under the same brand</title>
  <body>
    <dl>
      <dlentry>
        <dt>Initial investment:</dt>
        <dd><p>$700 (includes initial franchise fee)</p></dd>
      </dlentry>
      <dlentry>
        <dt>Franchise fee:</dt>
        <dd><p>$200</p></dd>
      </dlentry>
    </dl>
  </body>
</topic>
```

The following example demonstrates the use of definition term in an HDITA topic.

```
<!DOCTYPE html>
<title>Profit, fun, and flavor under the same brand</title>
<body>
  <article id="franchise-terms">
    <h1>Profit, fun, and flavor under the same brand</h1>
    <dl>
      <dt>Initial investment:</dt>
      <dd>
        <p>$700 (includes initial franchise fee)</p>
      </dd>
      <dt>Franchise fee:</dt>
      <dd>
        <p>$200</p>
      </dd>
    </dl>
  </article>
</body>
```

**Parent topic:**[Body components](../components/containers/body-components.md)

