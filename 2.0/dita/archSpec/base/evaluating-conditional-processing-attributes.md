---
author: OASIS DITA Technical Committee
---

# Example: Filtering and flagging topic content

In this scenario, a publisher wants to flag information that applies to administrators and exclude information that applies to the extended product.

Consider the following DITA source fragment and conditional processing profile:

```
<p audience="administrator">Set the configuration options:
  <ul>
    <li product="extendedProd">Set foo to bar</li>
    <li product="basicProd extendedProd">Set your blink rate</li>
    <li>Do some other stuff</li>
    <li>Do a special thing for Linux</li>
  </ul>
</p>
```

```
<val>
  <prop att="audience" val="administrator" action="flag">
    <startflag><alt-text>ADMIN</alt-text></startflag>
  </prop>
  <prop att="product" val="extendedProd" action="exclude"/>
</val>
```

When the content is rendered, the paragraph is flagged, and the first list item is excluded \(since it applies to extendedProd\). The second list item is still included; even though it does apply to extendedProd, it also applies to basicProd, which was not excluded.

The result will look something like the following:

**ADMIN** Set the configuration options:

-   Set your blink rate
-   Do some other stuff
-   Do a special thing for Linux

**Parent topic:**[Examples of conditional processing](../../archSpec/base/examples-of-conditional-processing.md)

