---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Example

An example illustrates the subject of the topic or a portion of the topic.

## Syntax

-   **XDITA**

    `<example>`

-   **HDITA**

    `<div data-class="example">`

-   **MDITA \(extended profile\)**

    A level-two heading marked by `##` or `-----` underline and the class value `{.example}` following the [Pandoc syntax for header attributes](https://pandoc.org/MANUAL.html#extension-header_attributes).


## Attributes

The available attributes vary based on the authoring format:

-   **XDITA**

    The following attributes are available on this element: [display attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#display-attributes), [link relationship attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#link-relationship-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **HDITA**

    The following attributes are available on this element: [link relationship attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#link-relationship-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of example in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
 <!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
<topic id="intro-considerations">
  <title>Considerations for planning your lighting network</title>
 <body>
    <p>Whether you have only one wireless light bulb or you are replacing your entire home with  wireless light bulbs, you should plan how you want the lighting on your network to behave with the lighting kit.</p>    <example>
      <title>Examples</title>
      <ul>
        <li><p>If you only have one light bulb you might want to place it in a central location that would
          be optimum for turning on and off when you are away or arrive home.</p></li>
        <li><p>If you have multiple light bulbs, you might want to set them up in rooms and lighting groups to be able to better manage them across your home.</p></li>
      </ul>
        </example>
   </body>
</topic>
```

The following example demonstrates the use of example in an HDITA topic.

```
  <!DOCTYPE html>
  <html>
  <head>
  <title>Considerations for planning your lighting network</title>
  </head>
  <body>
   <article id="intro-considerations">
    <h1>Considerations for planning your lighting network</h1>
    <p>Whether you have only one wireless light bulb or you are replacing your entire home with  wireless light bulbs, you should plan how you want the lighting on your network to behave with the lighting kit.</p>
    <div data-class="example">
      <h2>Examples</h2>
      <ul>
        <li><p>If you only have one light bulb you might want to place it in a central location that would
          be optimum for turning on and off when you are away or arrive home.</p></li>
        <li><p>If you have multiple light bulbs, you might want to set them up in rooms and lighting groups to be able to better manage them across your home.</p></li>
      </ul>
    </div>
    </article>
  </body>
  </html>
```

The following example demonstrates the use of example in an MDITA topic.

```
# Considerations for planning your lighting network

Whether you have only one wireless light bulb or you are replacing your entire home with wireless light bulbs, you should plan how you want the lighting on your network to behave with the lighting kit.

## Examples {.example}

-   If you only have one light bulb you might want to place it in a central location that would be optimum for turning on and off when you are away or arrive home.

-   If you have multiple light bulbs, you might want to set them up in rooms and lighting groups to be able to better manage them across your home.
```

**Parent topic:**[Body components](../components/containers/body-components.md)

