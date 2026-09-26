---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Table header

A simple table header is an optional header row for a simple table.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d35499e37">

Authoring format

</th><th align="left" id="d35499e41">

Syntax and example

</th></tr></thead><tbody><tr><td id="d35499e48">

**XDITA**

</td><td>

`<sthead>`

 ```
**&lt;sthead&gt;**
  <stentry><p>Ingredient</stentry>
  <stentry><p>Amount</p></stentry>
  <stentry><p>Unit shipped</p></stentry>
**&lt;/sthead&gt;**
```

</td></tr><tr><td id="d35499e71">

**HDITA**

</td><td>

`<th>`

 ```
<tr>
  **&lt;th&gt;&lt;p&gt;Ingredient&lt;/p&gt;&lt;/th&gt;
  &lt;th&gt;&lt;p&gt;Amount&lt;/p&gt;&lt;/th&gt;
  &lt;th&gt;&lt;p&gt;Unit shipped&lt;/p&gt;&lt;/th&gt;**
</tr>
```

</td></tr><tr><td id="d35499e93">

**MDITA**

</td><td>

The header row should be separated from the body of the table by a delimiter row. The delimiter row contains hyphens \(`-`\).```
**\| Ingredient       \| Amount   \| Unit shipped \|**
| ---------------- | -------- | ------------ |
| Gohan rice       | 140 gm   | 14 kg        |
| Soya paper sheet | 1 pc     | 10 pc        |

Table:  Fancy roll ingredients
```

</td></tr></tbody>
</table>## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [ID attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

See [Figure 1](lw-simpletable.md#example-table-xdita), [Figure 2](lw-simpletable.md#example-table-hdita), and [Figure 3](lw-simpletable.md#example-table-mdita).

**Parent topic:**[Table components](../components/containers/table-components.md)

