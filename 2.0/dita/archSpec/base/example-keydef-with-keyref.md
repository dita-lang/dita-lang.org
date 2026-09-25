---
author: OASIS DITA Technical Committee
---

# Example: Key definition with key reference

When a key definition also specifies a key reference, the key reference also must be resolved in order to determine the effective resources that are bound to that key definition.

In the following example, a `<topicref>` element references the key "widget". The definition for "widget" in turn references the key "mainProduct".

```
<map>
  <topicref keyref="widget" id="example"/>
  <keydef keys="widget" href="widgetInfo.dita" scope="local" format="dita" rev="v1r2"
          keyref="mainProduct">
    <topicmeta><linktitle>Information about Widget</linktitle></topicmeta>
  </keydef>
  <keydef keys="mainProduct" href="http://example.com/productPage" scope="external" format="html"
          product="prodCode" audience="sysadmin">
    <topicmeta><linktitle>Generic product page</linktitle></topicmeta>
  </keydef>
</map>
  
```

For this example, the key reference to "widget" pulls resources from that key definition, which in turn pulls resources from "mainProduct".

The resources from the key definitions are combined as follows:

-   The metadata resources from "mainProduct" are combined with the resources already specified on the "widget" key definition, resulting in the addition of `@product` and `@audience` values.
-   The link title on the "widget" key definition overrides those on the "mainProduct" key definition.
-   The `@href`, `@scope`, and `@format` attributes on the "mainProduct" key definition override those on "widget".

Thus after key references are resolved, the original `<topicref>` element is equivalent to the following:

```
<topicref id="example"
          href="http://example.com/productPage" scope="external" format="html" 
          rev="v1r2"
          product="prodCode" audience="sysadmin">
   <topicmeta><linktitle>Information about Widget</linktitle></topicmeta>
</topicref>
```

**Parent topic:**[Examples of keys](../../archSpec/base/examples-of-keys.md)

