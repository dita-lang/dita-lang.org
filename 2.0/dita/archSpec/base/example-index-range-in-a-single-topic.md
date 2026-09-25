---
author: OASIS DITA Technical Committee
---

# Example: Index range defined in a single topic

In this scenario, an index range is defined directly in the body of a topic.

In the following code sample, the index range begins at the start of the second paragraph and continues to the beginning of the last paragraph.

```
<topic id="accounting">
  <title>Accounting regulations</title>
  <body>
    <p>Be ethical in your accounting.</p>
    <p><indexterm start="acctrules">rules</indexterm>Remember to do all of the following: ...</p>
    <!-- ...pages worth of rules... -->
    <p><indexterm end="acctrules"/>Failure to comply will get you audited.</p>
  </body>
  <!-- Potential sub-topics -->
</topic>
```

**Parent topic:**[Examples of indexing](../../archSpec/base/examples-indexing.md)

