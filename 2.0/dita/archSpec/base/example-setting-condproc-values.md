---
author: OASIS DITA Technical Committee
---

# Example: Setting conditional processing values

In this scenario, conditional processing attributes are set in DITA content.

The following code sample illustrates how conditional processing attributes are set in DITA content.

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

In the example,

-   The entire paragraph and list of options applies to an audience of administrator.
-   The first configuration item applies only to the extendedProd product.
-   The second configuration option applies to both the baseProd and extendedProd products.

When combined with a DITAVAL document, these attributes can be used as a way to filter or flag the content when it is rendered.

**Parent topic:**[Examples of conditional processing](../../archSpec/base/examples-of-conditional-processing.md)

