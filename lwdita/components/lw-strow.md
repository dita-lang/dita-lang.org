---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Table row

A simple table row is a single row in a simple table.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d34427e37">

Authoring format

</th><th align="left" id="d34427e41">

Syntax and example

</th></tr></thead><tbody><tr><td id="d34427e48">

**XDITA**

</td><td>

`<strow>`

 ```
**&lt;strow&gt;**
  <stentry><p>Gohan rice</p></stentry>
  <stentry><p>140 gm</p></stentry>
  <stentry><p>14 kg</p></stentry>**
&lt;/strow&gt;**
```

</td></tr><tr><td id="d34427e71">

**HDITA**

</td><td>

`<tr>`

 ```
**&lt;tr&gt;**
  <td><p>Gohan rice</p></td>
  <td><p>140 gm</p></td>
  <td><p>14 kg</p></td>**
&lt;/tr&gt;**
```

</td></tr><tr><td id="d34427e94">

**MDITA**

</td><td>

```
| Ingredient       | Amount   | Unit shipped |
| ---------------- | -------- | ------------ |
**\| Gohan rice       \| 140 gm   \| 14 kg        \|**
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

