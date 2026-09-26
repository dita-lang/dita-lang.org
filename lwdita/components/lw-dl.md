---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Definition list

A definition list is a list of items and their corresponding definitions.

## Syntax

The syntax for representing this component varies depending on the authoring format.

<table><thead><tr><th align="left" id="d29116e43">

Authoring format

</th><th align="left" id="d29116e47">

Syntax

</th><th align="left" id="d29116e51">

Example

</th></tr></thead><tbody><tr><td id="d29116e58">

**XDITA**

</td><td>

`<dl>`

</td><td>

```
**&lt;dl&gt;**
  <dlentry>
    <dt>Initial investment</dt>
    <dd>$700 (includes initial franchise fee)</dd>
  </dlentry>
  <dlentry>
    <dt>Franchise fee</dt>
    <dd>$200</dd>
  </dlentry>**
&lt;/dl&gt;**
```

</td></tr><tr><td id="d29116e81">

**HDITA**

</td><td>

`<dl>`

</td><td>

```
**&lt;dl&gt;**
  <dt>Initial investment</dt>
  <dd>$700 (includes initial franchise fee)</dd>
  <dt>Franchise fee</dt>
  <dd>$200</dd>**
&lt;/dl&gt;**
```

</td></tr><tr><td id="d29116e104">

**MDITA**

</td><td>

Each definition pair uses the following format:-   A line that contains the term
-   A second line that starts with a colon \(:\) and follows with the definition

Each definition pair must be separated by a blank line

</td><td>

```
raspberry
: edible fruit of plant species in the genus Rubus of the rose family

blackberry
: edible fruit of species in the genus Rubus in the family Rosaceae
```

</td></tr></tbody>
</table>## Rendering expectations

A definition list is typically rendered in the following way:

-   The definition term is located against the starting margin of the page or column.
-   The definition description is indented. It is located either on the same line as the definition term, or it is placed on the next line.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [ID attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of a definition list in an XDITA topic.

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

The following example demonstrates the use of a \(need article??\) definition list in an HDITA topic.

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

The following example demonstrates the use of a definition list text in an MDITA extended profile topic.

```
# Profit, fun, and flavor under the same brand

Initial investment
: $700 (includes initial franchise fee)

Franchise fee
: $200
```

**Parent topic:**[Body components](../components/containers/body-components.md)

