---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Title

A title is a heading or label for an object. Titles can be associated with topics, maps, sections, examples, figures, tables, and other structures.

## Syntax

-   **XDITA**

    `<title>` in `<topic>`, `<section>`, `<example>`, `<fig>`, and `<simpletable>`.

-   **HDITA**

    `<h1>` and `<title>` for [topic](lw-topic.md) \(The content for Title in an HDITA topic MUST map to both `<title>` and `<h1>`\). `<h2>` for [section](lw-section.md) and [example](lw-example.md). `<figcaption>` in `<figure>`.`<caption>` for [table](lw-simpletable.md). Title also applied to audio and video in HDITA as attribute???

-   **MDITA \(core and extended profiles\)**

    `#` or `===` underline for [topic](lw-topic.md); `##` or `-----` underline for [section](lw-section.md)


## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes) and [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes).

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of a title in an XDITA topic.

```
 <?xml version="1.0" encoding="UTF-8"?>
 <!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
 <topic id="install-and-setup">
   <title>Installing and Setting up Remote Lighting</title>
   <shortdesc>Installation of your lighting kit includes installing the light bulbs into
   light fixtures, preparing the remote control, and programming lighting groups.
   </shortdesc>
  </topic>
```

The following example demonstrates the use of a title in an HDITA topic.

```
  <!DOCTYPE html>
  <html>
  <head>
  <title>Installing and Setting up Remote Lighting</title>
  </head>
  <body>
   <article id="install-and-setup">
    <h1>Installing and Setting up Remote Lighting</h1>
    <p>Installation of your lighting kit includes installing the light bulbs into light fixtures, preparing the remote control, and programming lighting groups.</p>
  </article>
  </body>
  </html>
```

The following example demonstrates the use of a title in an MDITA topic using ATX headings.

```
# Installing and Setting up Remote Lighting

Installation of your lighting kit includes installing the light bulbs into light fixtures, preparing the remote control, and programming lighting groups.
```

The following example demonstrates the use of a title in an MDITA topic using Setext headings.

```
Installing and Setting up Remote Lighting
=========================================

Installation of your lighting kit includes installing the light bulbs into light fixtures, preparing the remote control, and programming lighting groups.
```

**Parent topic:**[Basic topic components](../components/containers/basic-topic-components.md)

