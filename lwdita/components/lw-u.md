---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Underline

An underline, also called an underscore, is a line immediately below a portion of text.

## Syntax

<table><thead><tr><th align="left" id="d23762e34">

Authoring format

</th><th align="left" id="d23762e38">

Syntax and example

</th></tr></thead><tbody><tr><td id="d23762e45">

**XDITA**

</td><td>

`<u>`

 ```
<p>Installation of your <u>Remote Lighting Network</u> kit includes installing the light bulbs into light fixtures, preparing the remote control, and programming lighting groups.</p>
```

</td></tr><tr><td id="d23762e64">

**HDITA**

</td><td>

`<u>`

 ```
<p>Installation of your <u>Remote Lighting Network</u> kit includes installing the light bulbs into light fixtures, preparing the remote control, and programming lighting groups.</p>
```

</td></tr><tr><td id="d23762e83">

**MDITA \(core and extended profiles\)**

</td><td>

There is no specific support in the MDITA core profile. If needed, use an HDITA snippet.

</td></tr></tbody>
</table>## Rendering expectations

The underline component is typically underlined.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref).

-   **MDITA**

    For the MDITA core profile, the equivalent of the XDITA `@keyref` attribute is supported. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of underlined text in an XDITA topic.

```
 <?xml version="1.0" encoding="UTF-8"?>
 <!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
 <topic id="install-and-setup">
   <title>Installing and Setting up Remote Lighting</title>
   <shortdesc>Installation of your <u>Remote Lighting Network</u> kit includes installing the light bulbs into
   light fixtures, preparing the remote control, and programming lighting groups.
   </shortdesc>
  </topic>
```

The following example demonstrates the use of underlined text in an HDITA topic.

```
  <!DOCTYPE html>
  <html>
  <head>
  <title>Installing and Setting up Remote Lighting</title>
  </head>
  <body>
   <article id="install-and-setup">
    <h1>Installing and Setting up Remote Lighting</h1>
    <p>Installation of your <u>Remote Lighting Network</u> kit includes installing the light bulbs into light fixtures, preparing the remote control, and programming lighting groups.</p>
  </article>
  </body>
  </html>
```

The following example demonstrates the use of underlined text in an MDITA topic.

```
# Installing and Setting up Remote Lighting

Installation of your <u>Remote Lighting Network</u> kit includes installing the light bulbs into light fixtures, preparing the remote control, and programming lighting groups.
```

**Parent topic:**[Highlighting components](../components/containers/highlighting-components.md)

