---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Section

A section is an organizational division in a topic. Sections are used to organize subsets of information that are directly related to the topic.

## Syntax

-   **XDITA**

    `<section>`

-   **HDITA**

    `<section>`

-   **MDITA \(core and extended profiles\)**

    A level-two heading marked by `##` or `-----` underline


## Usage information

Multiple sections within a single topic do not represent a hierarchy, but rather peer divisions of that topic. Sections cannot be nested. Sections can have titles.

## Rendering expectations

Processors SHOULD treat the presence of more than one title component in a section component as an error.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [ID attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of section in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
<topic id="franchise-offer">
  <title>What we offer</title>
  <body>
    <p>We offer warranty of territory exclusivity, initial training, and support through online, email, and telephone channels.</p>
    <section id="terms">
      <title>Terms and conditions</title>
      <p>Support is reserved for franchises that are without bills past due payment.</p>
    </section>
  </body>
</topic>
```

The following example demonstrates the use of section in an HDITA topic.

```
<!DOCTYPE html>
<title>What we offer</title>
<body>
  <article id="franchise-offer">
    <h1>What we offer</h1>
    <p>We offer warranty of territory exclusivity, initial training, and support through online, email, and telephone channels.</p>
    <section id="terms">
      <h2>Terms and conditions</h2>
      <p>Support is reserved for franchises that are without bills past due payment.</p>
    </section>
  </article>
</body>
```

The following example demonstrates the use of section in an MDITA topic.

```
# What we offer

We offer warranty of territory exclusivity, initial training, and support through online, email, and telephone channels.

## Terms and conditions

Support is reserved for franchises that are without bills past due payment.
```

**Parent topic:**[Body components](../components/containers/body-components.md)

