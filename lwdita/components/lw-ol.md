---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Ordered list

An ordered list is a list of items that are sorted by sequence or order of importance.

## Syntax

-   **XDITA**

    `<ol>`

-   **HDITA**

    `<ol>`

-   **MDITA \(core and extended profiles\)**

    See [List item](lw-li.md)


## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [ID attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of ordered list in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
<topic id="franchise-plan">
  <title>Make a plan! Start your future today!</title>
  <body>
    <ol>
      <li><p>Contact one of our franchise advisors</p></li>
      <li><p>Pick a location for your restaurant</p></li>
      <li><p>Follow our franchise guide</p></li>
    </ol>
  </body>
</topic>
```

The following example demonstrates the use of ordered list in an HDITA topic.

```
<!DOCTYPE html>
<title>Make a plan! Start your future today!</title>
<body>
  <article id="franchise-plan">
    <h1>Make a plan! Start your future today!</h1>
    <ol>
      <li>
        <p>Contact one of our franchise advisors</p>
      </li>
      <li>
        <p>Pick a location for your restaurant</p>
      </li>
      <li>
        <p>Follow our franchise guide</p>
      </li>
    </ol>
  </article>
</body>
```

The following example demonstrates the use of ordered list in an MDITA topic.

```
# Make a plan! Start your future today!

1.  Contact one of our franchise advisors
2.  Pick a location for your restaurant
3.  Follow our franchise guide
```

**Parent topic:**[Body components](../components/containers/body-components.md)

