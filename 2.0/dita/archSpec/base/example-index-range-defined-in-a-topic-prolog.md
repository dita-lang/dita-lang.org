---
author: OASIS DITA Technical Committee
---

# Example: Index range defined in a topic prolog

In this scenario, an index range is defined in the topic prolog. Ranges defined in a prolog cover subtopics, including those nested based on a map.

Specifying an index range in a topic prolog is useful for defining an index range that contains a topic and its children.

Consider the following DITA map which contains topics about a small company's operating procedures. The map contains a topic about accounting \(`acct.dita`\), which has child topics: `procedures.dita` and `forms.dita`.

```
<map>
  <title>Company procedures</title>
  <topicref href="acct.dita">
    <topicref href="procedures.dita"/>
    <topicref href="forms.dita"/>
  </topicref>
  <!-- ... -->
</map>
```

The information developer wants an index entry that will span `acct.dita` and its children. They usethe following markup in `acct.dita`:

```
<topic id="accounting-at-acme">
  <title>Accounting at Acme</title>
  <prolog>
    <metadata>
      <keywords>
        <indexterm start="acct">accounting</indexterm>
        &lt;indexterm end="acct"/&gt;
      </keywords>
    </metadata>
  </prolog>
  <!-- ... -->
</topic>
```

This markup specifies that the index range begins with the start of the topic title, and the end of the range is the end of the `forms.dita` topic. The index range includes the "Accounting at Acme" topic and its two child topics.

**Parent topic:**[Examples of indexing](../../archSpec/base/examples-indexing.md)

