---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Cross reference

A cross reference is an inline link. A cross reference can link to a different location within the current topic, another topic, a specific location in another topic, or an external resource such as a PDF or web page.

## Syntax

-   **XDITA**

    `<xref>`

-   **HDITA**

    `<a href>`

-   **MDITA \(core and extended profiles\)**

    `[link](/URI "title")`


## Attributes

The available attributes vary based on the authoring format:

-   **XDITA**

    The following attributes are available on this element: [link relationship attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#link-relationship-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **HDITA**

    The following attributes are available on this element: [link relationship attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#link-relationship-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **MDITA**

    For the MDITA core profile, the equivalent of the XDITA `@keyref` attribute is supported. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of a cross reference in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
<topic id="franchise-offer">
  <title>What we offer</title>
  <body>
    <ul>
      <li><p>"Know-how" license</p></li>
      <li><p>Warranty of territory exclusivity</p></li>
      <li><p>Initial training</p></li>
      <li><p>Support through online, email, and telephone channels</p></li>
      <li><p>Access to our <xref href="http://senseisushico.com/kb" scope="external" format="html">knowledge base</xref></p></li>
    </ul>
  </body>
</topic>
```

The following example demonstrates the use of a cross reference in an HDITA topic.

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
        <p>Warranty of territory exclusivity</p>
      </li>
      <li>
        <p>Initial training</p>
      </li>
      <li>
        <p>Support through online, email, and telephone channels</p>
      </li>
      <li>
        <p>Access to our <a href="http://senseisushico.com/kb" rel="external" type="text/html">knowledge base</a></p>
      </li>
    </ul>
  </article>
</body>
```

The following example demonstrates the use of a cross reference in an MDITA topic.

```
# What we offer

-   "Know-how" license

-   Warranty of territory exclusivity

-   Initial training

-   Support through online, email, and telephone channels

-   Access to our [knowledge base](http://senseisushico.com/kb)
```

**Parent topic:**[Body components](../components/containers/body-components.md)

