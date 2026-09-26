---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Strong text

Strong text is text that is of greater importance than the surrounding text.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d25246e38">

Authoring format

</th><th align="left" id="d25246e42">

Syntax and example

</th></tr></thead><tbody><tr><td id="d25246e49">

**XDITA**

</td><td>

`<strong>`

 ```
<p>Pick a **&lt;strong&gt;strategic&lt;/strong&gt;** location for your restaurant.</p>
```

</td></tr><tr><td id="d25246e71">

**HDITA**

</td><td>

`<strong>`

 ```
<p>Pick a **&lt;strong&gt;strategic&lt;/strong&gt;** location for your restaurant.</p>
```

</td></tr><tr><td id="d25246e93">

**MDITA**

</td><td>

Two asterisks \(`**`\) or two underscores \(`__`\)

 ```
Pick a **\*\*strategic\*\*** location for your restaurant.
```

</td></tr></tbody>
</table>## Rendering expectations

The strong component is typically rendered in a bold font.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref).

-   **MDITA**

    For the MDITA core profile, the equivalent of the XDITA `@keyref` attribute is supported. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of strong text in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
<topic id="franchise-plan">
  <title>Make a plan! Start your future today!</title>
  <body>
    <ol>
      <li><p>Contact one of our franchise advisors</p></li>
      <li><p>Pick a <strong>strategic</strong> location for your restaurant</p></li>
      <li><p>Follow our franchise guide</p></li>
    </ol>
  </body>
</topic>
```

The following example demonstrates the use of strong text in an HDITA topic.

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
        <p>Pick a <strong>strategic</strong> location for your restaurant</p>
      </li>
      <li>
        <p>Follow our franchise guide</p>
      </li>
    </ol>
  </article>
</body>
```

The following example demonstrates the use of strong text in an MDITA topic.

```
# Make a plan! Start your future today!

1.  Contact one of our franchise advisors
2.  Pick a **strategic** location for your restaurant
3.  Follow our franchise guide
```

**Parent topic:**[Emphasis components](../components/containers/emphasis-components.md)

