---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Table

A simple table is a basic tabular environment that is designed to present organized content.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d34994e43">

Authoring format

</th><th align="left" id="d34994e47">

Syntax and example

</th></tr></thead><tbody><tr><td id="d34994e54">

**XDITA**

</td><td>

`<simpletable>`

 ```
**&lt;simpletable&gt;**
  <title>Fancy roll ingredients</title>
  <sthead>
    <stentry><p>Ingredient</stentry>
    <stentry><p>Amount</p></stentry>
    <stentry><p>Unit shipped</p></stentry>
  </sthead>
  <strow>
    <stentry><p>Gohan rice</p></stentry>
    <stentry><p>140 gm</p></stentry>
    <stentry><p>14 kg</p></stentry>
  </strow>
  <strow>
    <stentry><p>Soya paper sheet</p></stentry>
    <stentry><p>1 pc</p></stentry>
    <stentry><p>10 pc</p></stentry>
  </strow>**
&lt;/simpletable&gt;**
```

</td></tr><tr><td id="d34994e77">

**HDITA**

</td><td>

`<table>`

 ```
**&lt;table&gt;**
  <caption>Fancy roll ingredients</caption>
  <tr>
    <th><p>Ingredient</p></th>
    <th><p>Amount</p></th>
    <th><p>Unit shipped</p></th>
  </tr>
  <tr>
    <td><p>Gohan rice</p></td>
    <td><p>140 gm</p></td>
    <td><p>14 kg</p></td>
  </tr>
  <tr>
    <td><p>Soya paper sheet</p></td>
    <td><p>1 pc.</p></td>
    <td><p>10 pcs.</p></td>
  </tr>**
&lt;/table&gt;**
```

</td></tr><tr><td id="d34994e100">

**MDITA**

</td><td>

A table should contain a header row, a delimiter row, and zero or more rows with entries. Table entries inside a row should be separated by pipes \(`|`\), and the delimiter should contain hyphens \(`-`\).

 ```
**\| Ingredient       \| Amount   \| Unit shipped \|
\| ---------------- \| -------- \| ------------ \|
\| Gohan rice       \| 140 gm   \| 14 kg        \|
\| Soya paper sheet \| 1 pc     \| 10 pc        \|

Table:  Fancy roll ingredients**
```

</td></tr></tbody>
</table>## Usage information

The simpletable component is designed for close compatibility with HTML5 tables. It can contain a title and allows column and row spanning.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [ID attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

This section contains examples of how the table component can be used in the three authoring formats:

The following code sample shows how the `<simpletable>` element can be used to represent a table that presents information about dog breeds:

```
**&lt;simpletable id="dog-breeds-table"&gt;**
  <title>Dog breeds</title>
  <sthead>
    <stentry><p>Breed</p></stentry>
    <stentry><p>Average size</p></stentry>
    <stentry><p>Life expectancy</p></stentry>
  </sthead>
  <strow>
    <stentry><p>Australian Shepard</p></stentry>
    <stentry><p>Medium</p></stentry>
    <stentry><p>12-15 years</p></stentry>
  </strow>
  <strow>
    <stentry><p>Beagle<p></stentry>
    <stentry><p>Small</p></stentry>
    <stentry><p>10-15 years</p></stentry>
  </strow>
  <strow>
    <stentry><p>Great Dane</p></stentry>
    <stentry><p>Extra-large</p></stentry>
    <stentry><p>7-10 years</p></stentry>
  </strow>
**&lt;/simpletable&gt;**
```

Note that the table has a title, as well as an `@id` attribute that makes it possible to reuse this table in other contexts.

For an example of a table with spanned rows, see [Figure 1](lw-simpletable.md#example-table-xdita).

The following code sample shows how the `<table>` element can be used to represent a table that presents information about dog breeds:

```
**&lt;table id="dog-breeds-table"&gt;**
  <caption>Dog breeds</caption>
  <tr>
    <th><p>Breed</p></th>
    <th><p>Size</p></th>
    <th><p>Life expectancy</p></th>
  </tr>
  <tr>
    <td><p>Australian Shepard</p></td>
    <td><p>Medium</p></td>
    <td><p>10-15 years</p></td>
  </tr>
  <tr>
    <td><p>Beagle</p></td>
    <td><p>Small</p></td>
    <td><p>12-15 years</p></td>
  </tr>
  <tr>
    <td><p>Great Dane</p></td>
    <td><p>Extra-large</p></td>
    <td><p>7-10 years</p></td>
  </tr>
**&lt;/table&gt;**
```

Note that the table has a title, as well as an `@id` attribute that makes it possible to reuse this table in other contexts.

For an example of a table with spanned rows, see [Figure 2](lw-simpletable.md#example-table-hdita).

The following code sample shows how a simple table can be represented in MDITA. Note that MDITA does not have a formal way to associate a title with a table, nor does it have a way to associate an ID with the table.

```
| Dog breed          | Size        | Life expectancy |
| ------------------ | ----------- | --------------- |
| Australian Shepard | Large       | 12-15 years     |
| Beagle             | Medium      | 10-15 years     |
| Great Dane         | Extra-large | 7-10 years      |
```

**Parent topic:**[Table components](../components/containers/table-components.md)

