---
author: OASIS DITA Technical Committee
---

# Examples: Key definition

The `<topicref>` element, and any specialization of `<topicref>` that allows the `@keys` attribute, can be used to define keys.

In the following example, a `<topicref>` element is used to define a key; the `<topicref>` element also contributes to the navigation structure.

```
<map>
  <!--... -->
  <topicref keys="apple-definition" href="apple-gloss-en-US.dita" />
  <!--... -->
</map>
```

The presence of the `@keys` attribute does not affect how the `<topicref>` element is processed.

In the following example, a `<keydef>` element is used to define a key.

```
<map>
  <!--... -->
  <keydef keys="apple-definition" href="apple-gloss-en-US.dita"/>
  <!--... -->
</map>
```

Because the `<keydef>` element sets the default value of the `@processing-role` attribute to "resource-only", the key definition does not contribute to the map navigation structure; it only serves as a key definition for the key name "apple-definition".

**Parent topic:**[Examples of keys](../../archSpec/base/examples-of-keys.md)

