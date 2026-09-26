---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Unordered list

An unordered list is a list in which the order of items is not significant.

## Syntax

-   **XDITA**

    `<ul>`

-   **HDITA**

    `<ul>`

-   **MDITA \(core and extended profiles\)**

    See [List item](lw-li.md)


## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [ID attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of an unordered list in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
<topic id="franchise-offer">
  <title>What we offer</title>
  <body>
    <ul>
      <li><p>"Know-how" license</p></li>
      <li><p>Warranty of exclusive territory</p></li>
      <li><p>Initial training</p></li>
      <li><p>Support through online, email, and telephone channels</p></li>
    </ul>
  </body>
</topic>
```

The following example demonstrates the use of an unordered list in an HDITA topic.

```
<!DOCTYPE html>
<title>What we offer</title>
<body>
  <article id="franchise-offer">
    <h1>What we offer</h1>
    <ul>
      <li>
        <p>"Know-how" license</p>
      </li>
      <li>
        <p>Warranty of exclusive territory</p>
      </li>
      <li>
        <p>Initial training</p>
      </li>
      <li>
        <p>Support through online, email, and telephone channels</p>
      </li>
    </ul>
  </article>
</body>
```

The following example demonstrates the use of an unordered list in an MDITA topic.

```
 # What we offer
  
- "Know-how" license
- Warranty of exclusive territory
- Initial training
- Support through online, email, and telephone channels
```

**Parent topic:**[Body components](../components/containers/body-components.md)

