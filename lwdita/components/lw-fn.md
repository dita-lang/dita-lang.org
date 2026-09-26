---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Footnote

A footnote is ancillary information that typically is rendered in the footer of a page or at the end of an online article. Such content is usually inappropriate for inline inclusion.

## Syntax

-   **XDITA**

    `<fn>`. The footnote component is composed of two elements: the cross-reference that calls it, and the actual footnote content.

-   **HDITA**

    `<span data-class="fn">`. The footnote division should have a unique `@id` attribute. In the body of the text, where the footnote is called from, an internal cross-reference in the form of `<a href="#footnote-id">` should include the text that you want to make clickable for the footnote.

-   **MDITA \(extended profile\)**

    A footnote is composed of two elements: a marker in the text that will become a superscript number; a footnote definition that will be placed in a list of footnotes at the end of the document, following the [PHP Markdown Extra syntax for footnotes](https://michelf.ca/projects/php-markdown/extra/#footnotes).


## Usage information

There are two types of footnotes: single-use footnote and use-by-reference footnote.

-   **Single-use footnote**

    This is produced by a footnote component that does not specify a value for the `@id` attribute.

-   **Use-by-reference footnote**

    This is produced by a footnote component that specifies a value for the `@id` attribute. It must be used in conjunction with a cross reference component with `@type` set to fn.


To reference a footnote that is located in another topic, the conkeyref mechanism is used.

## Rendering expectations

The two footnote types typically produce different types of output:

-   **Single-use footnote**

    When rendered, a superscript symbol \(numeral or character\) is produced at the location of the footnote component. The superscript symbol is hyperlinked to the content of the footnote, which is placed at the bottom of a PDF page or the end of an online article. The superscript symbol can be specified by the value of the `@callout` attribute. When no `@callout` value is specified, footnotes are typically numbered.

-   **Use-by-reference footnote**

    Nothing is rendered at the location of the footnote component. The content of a use-by-reference footnote is only rendered when it is referenced by a cross reference with the `@type` attribute set to fn. If a cross reference with the `@type` attribute set to fn is present, a superscript symbol is rendered at the location of the cross reference component. Unless conkeyref is used, the footnote and cross reference components must be located in the same topic.


However, the details of footnote processing and formatting are implementation dependent. For example, a tool that renders DITA as PDF might lack support for the `@callout` attribute, or footnotes might be collected as end notes for certain types of publications.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA**

    The following attributes are available on this element: [ID attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props), and the additional attribute listed below.

-   **HDITA**

    The following attributes are available on this element: [ID attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **MDITA**

    For the MDITA core profile, the equivalent of the XDITA `@keyref` attribute is supported. For the MDITA extended profile, attributes can be specified by using the HDITA representation.


For XDITA, the following additional attribute is also available:

-   **`@callout`**

    Specifies the character or character string that is used for the footnote link. This attribute is available only in XDITA.


-   **`@callout`**

    Specifies the character or character string that is used for the footnote link. This attribute is available only in XDITA.


## Examples

The following example demonstrates the use of footnote in an XDITA topic.

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

The following example demonstrates the use of footnote in an HDITA topic. In this example, the clickable text is a number 1 in a [superscript](lw-sup.md) \(`<sup>`\) component.

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

The following example demonstrates the use of footnote in an MDITA extended profile topic.

```
# Profit, fun, and flavor under the same brand

Initial investment
: $700[^1]

Franchise fee
: $200


[^1]: The initial investment price includes the first franchise fee payment
```

**Parent topic:**[Body components](../components/containers/body-components.md)

