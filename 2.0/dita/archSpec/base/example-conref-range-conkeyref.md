---
author: OASIS DITA Technical Committee
---

# Example: Reusing a range with `@conkeyref`

In this scenario, a `@conkeyref` is used to define the start of a range and `@conrefend` is used to define the end of a range.

In the following sample, the key xmp is defined as the first topic in the file `examples.dita.`

```
<map>
  <!-- ... -->
  <keydef keys="xmp" href="examples.dita"/>
  <!-- ... -->
</map>
```

```
<!-- examples.dita: -->
<topic id="examples">
  <title>These are examples</title>
  <body>
    <ul>
      <li id="first">A first example</li>
      <li>Another trivial example</li>
      <li id="last">Final example</li>
    </ul>
  </body>
</topic>
```

To reuse these list items by using the key, the `@conkeyref` attribute combines the key itself with the sub-topic id first to define the start of the range. The `@conrefend` attribute defines a default high-level object along with the sub-topic id last that ends the range:

```
  <li conkeyref="xmp/first" 
      conrefend="default.dita#default/last"/>
```

The `@conkeyref` attribute uses a key to reference the first topic in `examples.dita`, so the range begins with the object `examples.dita#examples/first`. The high-level object in the `@conrefend` attribute \(`default.dita#default`\) is replaced with the object represented by the key \(the first topic in `examples.dita`\), resulting in a range that ends with the object `examples.dita#examples/last`.

When `@conref`, `@conkeyref`, and `@conrefend` are all specified, the key value takes priority.

```
  <li conkeyref="thisconfig/start"
      conref="standardconfig.dita#config/start"
      conrefend="standardconfig.dita#config/end"/>
```

-   If the key thisconfig is defined as `mySpecialConfig.dita#myconfig`, then the range will go from the list item with `id="start"` to the list item with`id="end"` in the topic `mySpecialConfig.dita#myconfig`.
-   If the key thisconfig is defined as `myConfig.dita`, then the range will go from the list item with `id="start"` to the list item with `id="end"` within the first topic in `myConfig.dita`.
-   If the key thisconfig is not defined, then the unchanged `@conref` and `@conrefend` attributes are used as fallback. In that case, the range will go from the list item with `id="start"` to the list item with `id="end"` within the topic `standardconfig.dita#config`.

**Parent topic:**[Examples of content referencing](../../archSpec/base/examples-conref.md)

