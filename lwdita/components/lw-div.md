---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Division

A division is a grouping of contiguous content within a topic. There is no additional semantic meaning.

## Syntax

-   **XDITA**

    `<div>`

-   **HDITA**

    `<div>`

-   **MDITA \(core and extended profiles\)**

    There is no specific support in the MDITA core profile. If needed, use an HDITA snippet.


## Attributes

The available attributes vary based on the authoring format:

-   **XDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of division in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
<topic id="franchise-terms">
  <title>Profits, fun, and flavor under the same brand</title>
  <body>
    <dl>
      <dlentry>
        <dt>Initial investment:</dt>
        <dd>
          <p>$700<xref href="#franchise-terms/initial-fee"/></p>
        </dd>
      </dlentry>
      <dlentry>
        <dt>Franchise fee:</dt>
        <dd><p>$200</p></dd>
      </dlentry>
    </dl>
    <div>
    <fn id="initial-fee">
      <p>The initial investment price includes the first franchise fee payment</p>
    </fn>
    </div>
  </body>
</topic>
```

The following example demonstrates the use of division in an HDITA topic.

```
<!DOCTYPE html>
<title>Profits, fun, and flavor under the same brand</title>
<body>
  <article id="franchise-terms">
    <h1>Profits, fun, and flavor under the same brand</h1>
    <dl>
      <dt>Initial investment:</dt>
      <dd>
        <p>$700<a href="#initial-fee"><sup>1</sup></a></p>
      </dd>
      <dt>Franchise fee:</dt>
      <dd>
        <p>$200</p>
      </dd>
    </dl>
        <div id="initial-fee" data-class="fn">
          <p>The initial investment price includes the first franchise fee payment</p>
        </div>
  </article>
</body>
```

**Parent topic:**[Body components](../components/containers/body-components.md)

