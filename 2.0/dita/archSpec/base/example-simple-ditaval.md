---
author: OASIS DITA Technical Committee
---

# Example: Simple DITAVAL document

In this scenario, a simple DITAVAL document sets up rules for filtering and flagging based on conditional processing attributes.

The following code sample illustrates a simple DITAVAL document that sets up two rules for filtering, and two rules for flagging.

```
<val>
  <prop action="exclude" att="audience" val="advanced"/>
  <prop action="exclude" att="product" val="myProductPrime"/>
  <prop action="flag" att="product" val="myProduct" backcolor="purple"/>
  <revprop action="flag" val="v1.2" backcolor="yellow"/>
</val>
```

Based on those rules:

1.  Any element with `audience="advanced"` will be filtered and will not appear in the rendered content.
2.  Any element with `product="myProductPrime"` will be filtered and will not appear in the rendered content.
3.  Any element with `product="myProduct"` will be flagged with a purple background color.
4.  Any element with `rev="v1.2"` will be flagged with a yellow background color.
5.  All other content will be rendered normally, because any other conditional processing attribute values default to include.

**Parent topic:**[Examples of conditional processing](../../archSpec/base/examples-of-conditional-processing.md)

