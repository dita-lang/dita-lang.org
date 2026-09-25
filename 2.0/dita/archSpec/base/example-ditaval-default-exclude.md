---
author: OASIS DITA Technical Committee
---

# Example: Changing the default behavior to "exclude"

In this scenario, a simple DITAVAL document resets the default behavior for unspecified values to "exclude".

The following code sample illustrates a simple DITAVAL document that resets the default behavior to "exclude", and then defines two rules to include content.

```
<val>
  **&lt;prop action="exclude"/&gt;**
  <prop action="include" att="audience" val="novice"/>
  <prop action="include" att="product" val="myProductPrime"/>
</val>
```

Based on those rules:

1.  Any element with `audience="novice"` will be included and will appear in the rendered content.
2.  Any element with `product="myProductPrime"` will be included and will appear in the rendered content.
3.  All other values in conditional processing attributes evaluate to exclude.

As a result, any element with conditional processing attributes that do not match either `audience="novice"` or `product="myProductPrime"` will be filtered and will not appear in the rendered content.

**Parent topic:**[Examples of conditional processing](../../archSpec/base/examples-of-conditional-processing.md)

