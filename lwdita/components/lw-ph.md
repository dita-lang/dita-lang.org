---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Phrase

A phrase is a small group of words that stand together as a unit, typically forming a component of a clause.

## Syntax

-   **XDITA**

    `<ph>`

-   **HDITA**

    `<span>`

-   **MDITA \(core and extended profiles\)**

    There is no specific support in the MDITA core profile. If needed, use an HDITA snippet.


## Usage information

The phrase component often is used to enclose a phrase for reuse or conditional processing.

The phrase component frequently is used as a specialization base, to create phrase-level markup that can provide additional semantic meaning or trigger specific processing or formatting. For example, all highlighting domain elements are specializations of phrase.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **HDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **MDITA**

    For the MDITA core profile, the equivalent of the XDITA `@keyref` attribute is supported. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of phrase in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
<topic id="franchise-offer">
  <title>What we offer</title>
  <body>
    <ul>
      <li><p><ph translate="no">Know-how</ph> license</p></li>
      <li><p>Warranty of territory exclusivity</p></li>
      <li><p>Initial training</p></li>
      <li><p>Support through online, email, and telephone channels</p></li>
    </ul>
  </body>
</topic>
```

The following example demonstrates the use of phrase in an HDITA topic.

```
<!DOCTYPE html>
<title>What we offer</title>
<body>
  <article id="franchise-offer">
    <h1>What we offer</h1>
    <ul>
      <li>
        <p><span translate="no">"Know-how"</span> license</p>
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
    </ul>
  </article>
</body>
```

The following example demonstrates the use of phrase, via an HDITA snippet, in an MDITA topic.

```
# What we offer

-   <span translate="no">"Know how"</span> license

-   Warranty of territory exclusivity

-   Initial training

-   Support through online, email, and telephone channels
```

**Parent topic:**[Body components](../components/containers/body-components.md)

