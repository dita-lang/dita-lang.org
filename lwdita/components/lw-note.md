---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Note

A note is information that expands on or calls attention to a particular point.

## Syntax

-   **XDITA**

    `<note>`

-   **HDITA**

    `<div data-class="note">`

-   **MDITA \(core and extended profiles\)**

    There is no specific markup for note in MDITA


## Usage information

The nature of a note \(for example, caution, danger, or warning\) is indicated through the values selected for the `@type` attribute.

## Rendering expectations

Processors SHOULD render a label for notes. The content of the label depends on the values of the `@type` attribute.

A note is typically rendered in a way that stands out from the surrounding content.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA**

    The following attributes are available on this element: [ID attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props), and the additional attribute listed below.

-   **HDITA**

    The following attributes are available on this element: [ID attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props), and the additional attribute listed below.

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.


For XDITA and HDITA, the following additional attribute is also available:

-   **`@type`**

    Specifies the type of a note. This differs from the `@type` attribute on many other DITA elements.The following are the allowable values:

    -   caution
    -   danger
    -   note
    -   notice
    -   trouble
    -   warning

-   **`@type`**

    Specifies the type of a note. This differs from the `@type` attribute on many other DITA elements.The following are the allowable values:

    -   caution
    -   danger
    -   note
    -   notice
    -   trouble
    -   warning

## Examples

The following example demonstrates the use of note in an XDITA topic.

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
          <p>$700</p>
          <note type="notice">
            <p>The initial investment price includes the first franchise fee payment</p>
          </note>
        </dd>
      </dlentry>
      <dlentry>
        <dt>Franchise fee:</dt>
        <dd><p>$200</p></dd>
      </dlentry>
    </dl>
  </body>
</topic>
```

The following example demonstrates the use of note in an HDITA topic.

```
<!DOCTYPE html>
<title>Profits, fun, and flavor under the same brand</title>
<body>
  <article id="franchise-terms">
    <h1>Profits, fun, and flavor under the same brand</h1>
    <dl>
      <dt>Initial investment:</dt>
      <dd>
        <p>$700</p>
        <div data-class="note" data-type="notice">
          <p>The initial investment price includes the first franchise fee payment</p>
        </div>
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

