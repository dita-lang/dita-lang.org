---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Table entry

A simple table entry represents a single cell within a simple table.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d25590e37">

Authoring format

</th><th align="left" id="d25590e41">

Syntax and example

</th></tr></thead><tbody><tr><td id="d25590e48">

**XDITA**

</td><td>

`<stentry>`

 ```
**&lt;stentry&gt;**
  <p>Gohan rice</p>**
&lt;/stentry&gt;**
```

</td></tr><tr><td id="d25590e71">

**HDITA**

</td><td>

`<td>`

 ```
**&lt;td&gt;**
  <p>Gohan rice</p>**
&lt;/td&gt;**
```

</td></tr><tr><td id="d25590e94">

**MDITA**

</td><td>

Table entries inside a row are separated by pipes \(`|`

 ```
| Ingredient       | Amount   | Unit shipped |
| ---------------- | -------- | ------------ |
**\| Gohan rice       \|** 140 gm   | 14 kg        |
| Soya paper sheet | 1 pc     | 10 pc        |

Table:  Fancy roll ingredients
```

</td></tr></tbody>
</table>## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [ID attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [table accessibility attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#table-accessibility-attributes), [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props), and the attributes listed below.

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.


For XDITA and HDITA, the following additional attributes are also available:

-   **`@colspan`**

    Specifies the number of columns that a cell is to span inside a simple table.

-   **`@rowspan`**

    Specifies the number of rows that a cell is to span inside a simple table.


-   **`@colspan`**

    Specifies the number of columns that a cell is to span inside a simple table.

-   **`@rowspan`**

    Specifies the number of rows that a cell is to span inside a simple table.


## Examples

This section contains examples of how the table entry component can be used in the three authoring formats. The examples focus on tables that include spanned rows.

The following code sample shows how the table entry component can be used to span rows in a table:

```
<simpletable id="dog-breed-categories">
  <title>Categories of dog breeds</title>
  <sthead>
    <stentry><p>Category</p></stentry>
    <stentry><p>Breed</p></stentry>
    <stentry><p>Size</p></stentry>
    <stentry><p>Life expectancy</p></stentry>
  </sthead>
  <strow>
    **&lt;stentry rowspan="3"&gt;**<p>Hound group</p></stentry>
    <stentry><p>American Foxhound</p></stentry>
    <stentry><p>Large</p></stentry>
    <stentry><p>11-13 years</p></stentry>
  </strow>
  <strow>
    <stentry><p>Basset Hound</p></stentry>
    <stentry><p>Medium</p></stentry>
    <stentry><p>12-13 years</p></stentry>
  </strow>
  <strow>
    <stentry><p>Rhodesian Ridgeback</p></stentry>
    <stentry><p>Large</p></stentry>
    <stentry><p>10-12 years</p></stentry>
  </strow>
  <!-- ... -->
</simpletable>
```

Note that the table has a title, as well as an `@id` attribute which makes it possible to reuse this table in other contexts.

The following code sample shows how the table entry component can be used to span rows in a table:

```
<table id="dog-breed-categories">
  <caption>Categories of dog breeds</caption>
  <tr>
    <th><p>Category</p></th>
    <th><p>Breed</p></th>
    <th><p>Size</p></th>
    <th><p>Life expectancy</p></th>
  </tr>
  <tr>
    **&lt;td rowspan="3"&gt;**<p>Hound group</p></td>
    <td><p>American Foxhound</p></td>
    <td><p>Large</p></td>
    <td><p>11-13 years</p></td>
  </tr>
  <tr>
    <td><p>Basset Hound</p></td>
    <td><p>Medium</p></td>
    <td><p>12-13 years</p></td>
  </tr>
  <tr>
    <td><p>Rhodesian Ridgeback</p></td>
    <td><p>Large</p></td>
    <td><p>10-12 years</p></td>
  </tr>
  <!-- ... -->
</table>
```

Note that the table has a title, as well as an `@id` attribute which makes it possible to reuse this table in other contexts.

MDITA does not support tables with spans.

**Parent topic:**[Table components](../components/containers/table-components.md)

