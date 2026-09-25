---
author: OASIS DITA Technical Committee
---

# Examples: Key definitions for variable text

Key definitions can be used to store variable text, such as product names and user-interface labels. Depending on the key definition, the rendered output might have a link to a related resource.

In the following example, a "product-name" key is defined. The key definition contains a child `<keytext>` element nested within a `<topicmeta>`element.

```
<map>
  <keydef keys="product-name">
    <topicmeta>
      **&lt;keytext&gt;Thing-O-Matic&lt;/keytext**
    </topicmeta>
  </keydef>
</map>
```

A topic can reference the "product-name" key by using the following markup:

```
<topic id="topicid">
  <title>...</title>
  <body>
    <p><keyword keyref="product-name"/> is a product designed to ...</p>
  </body>
</topic>
```

When processed, the output contains the text "Thing-O-Matic is a product designed to …".

In the following example, the key definition contains both a reference to a resource and variable text.

```
<map>
  <keydef keys="product-name" href="thing-o-matic.dita">
    <topicmeta>
      **&lt;keytext&gt;Thing-O-Matic&lt;/keytext&gt;**
    </topicmeta>
  </keydef>
</map>
```

When processed using the key reference from the first example, the output contains the "Thing-O-Matic is a product designed to …" text. The phrase "Thing-O-Matic" also is a link to the `thing-o-matic.dita` topic.

**Parent topic:**[Examples of keys](../../archSpec/base/examples-of-keys.md)

