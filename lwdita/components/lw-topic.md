---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Topic

A topic is a standalone unit of information.

## Syntax

-   **XDITA**

    `<topic>`

-   **HDITA**

    `<article>`

-   **MDITA \(core and extended profiles\)**

    There is no specific syntax for topic in MDITA


## Attributes

The available attributes vary based on the authoring format:

-   **XDITA**

    The following attributes are available on this element: [architectural attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#architectural-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@id`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id).

    For this element, the `@id` attribute is required.

-   **HDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@id`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id).

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of a topic in XDITA.

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

The following example demonstrates the use of a topic in HDITA.

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

The following example demonstrates the use of a topic in MDITA.

```
  # Installing and Setting up Remote Lighting

  Installation of your lighting kit includes installing the light bulbs into light fixtures, preparing the remote control, and programming lighting groups.
```

**Parent topic:**[Basic topic components](../components/containers/basic-topic-components.md)

