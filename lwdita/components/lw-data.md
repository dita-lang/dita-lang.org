---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Data

Data is a generic component that represents metadata within a topic or map. Complex metadata is represented by nested data structures.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d24398e39">

Authoring format

</th><th align="left" id="d24398e43">

Syntax and example

</th></tr></thead><tbody><tr><td id="d24398e50">

**XDITA**

</td><td>

`<data>`

 ```
**&lt;data name="author" value="Victoria Fernando"/&gt;**
```

</td></tr><tr><td id="d24398e70">

**HDITA**

</td><td>

`<meta>`

 ```
<head>
  <title>An innovative, attractive, and out of the ordinary concept</title>
  **&lt;meta name="author" content="Victoria Fernando"&gt;**
</head>
```

</td></tr><tr><td id="d24398e92">

**MDITA**

</td><td>

There is no specific syntax for data in MDITA core profile. In the MDITA extended profile, data is represented by variables declared in a YAML front-matter header. The front matter must be the first block in the file, and it must be set between triple-dashed lines.

 ```
**---
author: Victoria Fernando
---**
```

</td></tr></tbody>
</table>**Draft comment:**Kristen J Eberlein 22 December 2022  


I think we need a topic where we talk about the use of YAML in the MDITA extended profile.

## Usage information

A metadata property specified using a `<data>`component usually applies to the structure that contains the `<data>` component.

**CAUTION:**

By default, processors do not render the content of the `<data>` component. Use the `<data>` component only for properties; do not use it to embed text as part of the content flow.

## Rendering expectations

By default, processors SHOULD treat a data component as unknown metadata. The contents of the data component SHOULD NOT be rendered.

Processors that recognize a particular data component MAY make use of it to trigger specialized rendering.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA**

    The following attributes are available on this element: [data-element attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#data-element-attributes), [link relationship attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#link-relationship-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **HDITA**

    The following attributes are available on this element: [link relationship attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#link-relationship-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **MDITA**

    For the MDITA core profile, the equivalent of the XDITA `@keyref` attribute is supported. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

This section contains examples of how the data component can be used in the three authoring components:

The following code sample shows how the `<data>` element can be used to trigger specialized processing in an XDITA topic. The company has implemented specialized processing that renders a list of prerequisite items at the location of the `<data>` element.

```
<topic id="installing-acme-test-suite">
  <title>Installing the Acme Test Suite</title>
  <shortdesc>Install the Acme Test Suite in order to test whether your
             applications will work with the Acme core code.</shortdesc>
  <body>
    <section>
      <title>Before you begin</title>
      <p>You will need the following items:</p>
      **&lt;data name="trigger" value="generatePrereqList"/&gt;**
    </section>
    <!-- ... -->
  </body>
</topic>
```

For an example of how the `<data>` element can be used in the topic prolog to specify metadata, see [`<data>`](lw-prolog.md#example).

The following code sample shows how data components can specify metadata that applies to the topic as a whole. The `<head>` element holds three `<meta>` elements, which store metadata about the author, product, and user goal that is associated with the topic.

```
<head>
  <title>Installing the Acme Test Suite</title>
  **&lt;meta name="author" content="Carolyn Miller"/&gt;
  &lt;meta name="product" content="Acme Test Suite"/&gt;
  &lt;meta name="goal" content="installing"/&gt;**
</head>
```

The following code sample shows how topic-level metadata can be represented an MDITA extended profile topic. The data components are represented by variables declared in a YAML front-matter header, which provide information about the author, product, and user goal that is associated with the topic.

```
**---
author: Carolyn Harris
product: Acme Test Suite
goal: installing
---**
```

**Parent topic:**[Metadata components](../components/containers/metadata-components.md)

