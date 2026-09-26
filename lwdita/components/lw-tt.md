---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Teletype text

Teletype text is text that is displayed on a fixed-width display such as a teletype, text-only screen, or line printer.

## Syntax

<table><thead><tr><th align="left" id="d34746e33">

Authoring format

</th><th align="left" id="d34746e37">

Syntax and example

</th></tr></thead><tbody><tr><td id="d34746e44">

**XDITA**

</td><td>

`<tt>`

 ```
Example needed
```

</td></tr><tr><td id="d34746e63">

**HDITA**

</td><td>

`<tt>`

 ```
Example needed
```

</td></tr><tr><td id="d34746e82">

**MDITA \(core and extended profiles\)**

</td><td>

Two backquotes ````

 ```
Example needed
```

</td></tr></tbody>
</table>## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref).

-   **MDITA**

    For the MDITA core profile, the equivalent of the XDITA `@keyref` attribute is supported. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of teletype text in an XDITA topic.

```

```

The following example demonstrates the use of teletype text in an HDITA topic.

```

```

The following example demonstrates the use of teletype text in an MDITA topic.

```
# 

```

**Parent topic:**[Highlighting components](../components/containers/highlighting-components.md)

