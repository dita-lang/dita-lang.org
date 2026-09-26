---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Paragraph

A paragraph is a group of related sentences that support a central idea.

## Syntax

-   **XDITA**

    `<p>`

-   **HDITA**

    `<p>`

-   **MDITA \(core and extended profiles\)**

    One or more consecutive lines of text, separated by one or more blank line.


## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [ID attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## HDITA attributes

Blah blah HDITA that is not reused from DITA spec

## MDITA attributes

Blah blah MDITA that is not reused from DITA spec

## Examples

The following example demonstrates the use of paragraph in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
<topic id="franchise-intro">
  <title>An innovative, attractive, and out of the ordinary concept</title>
   <body>
    <p>We offer more than 30 exclusive creations of original rolls, from the California roll to sushi with BBQ chicken or grilled steak.</p>
  </body>
</topic>
```

The following example demonstrates the use of paragraph in an HDITA topic.

```
<!DOCTYPE html>
<title>An innovative, attractive, and out of the ordinary concept</title>
<body>
  <article id="franchise-intro">
    <h1>An innovative, attractive, and out of the ordinary concept</h1>
    <p>We offer more than 30 exclusive creations of original rolls, from the California roll to sushi with BBQ chicken or grilled steak.</p>
  </article>
</body>
```

The following example demonstrates the use of paragraph in an MDITA topic.

```
# An innovative, attractive, and out of the ordinary concept

We offer more than 30 exclusive creations of original rolls, from the California roll to sushi with BBQ chicken or grilled steak.
```

**Parent topic:**[Body components](../components/containers/body-components.md)

