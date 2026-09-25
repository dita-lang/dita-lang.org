---
author: OASIS DITA Technical Committee
---

# Example: How the `@cascade` attribute affects attribute cascading

In this scenario, the `@cascade` attribute is used to modify how metadata attributes cascade within a map.

Consider the following code example:

```
<map audience="a b" cascade="merge">
     <topicref href="topic.dita" audience="c"/>
</map>

```

In this map, the `cascade="merge"` attribute instructs a processor to merge attribute values while cascading. With `@audience` specified on both the `<map>` element and the `<topicref>` element, the effective `@audience` attribute value for the reference to `topic.dita` is a b c.

Consider the following code example:

```
<map audience="a b" cascade="nomerge">
     <topicref href="topic.dita" audience="c"/>
</map>

```

In this map, the `cascade="nomerge"` attribute instructs a processor *not* to merge attribute values while cascading. With `@audience` specified on both the `<map>` element and the `<topicref>` element, the effective `@audience` attribute value on the reference to `topic.dita` is not merged with the value from the map and remains c.

Consider the following code example:

```
<map platform="a" product="x" cascade="merge">
  <topicref href="one.dita" platform="b" product="y">
    &lt;topicref href="two.dita"&gt;
      &lt;topicref href="three.dita" cascade="nomerge" product="z"&gt;
        &lt;topicref href="four.dita"/&gt;
      &lt;/topicref&gt;
    &lt;/topicref&gt;
  </topicref>
</map>
```

In this map, the `@cascade` attribute is set to merge at the map level but changes to nomerge on a topic reference.

-   For the topic reference to `one.dita`, `cascade="merge"` is specified. This results in an effective `@platform` value of a b and an effective `@product` value of x y.
-   The topic reference to `two.dita` does not specify any additional attributes. The effective values for the `@platform` and `@product` attributes are the same as those on the parent topic reference to `one.dita`. The effective value of of the `@platform` attribute is a b, and the effective value for the `@product` attribute is x y.
-   The topic reference to `three.dita` specifies `cascade="nomerge"`, so attribute values from other elements do not merge with anything specified on the topic reference. The `@platform` attribute is not specified, so the effective value is a b, which still cascades from the parent element. The `@product` value does not merge with values from the parent, so the effective value is z.
-   The topic reference to `four.dita` does not specify any additional attributes. The effective values for the `@platform` and `@product` attributes are the same as those on the parent topic reference to `three.dita`. The effective value of of the `@platform` attribute is a b, and the effective value for the `@product` attribute is z.

**Parent topic:**[Examples of metadata cascading](../../archSpec/base/examples-of-cascading.md)

