---
author: OASIS DITA Technical Committee
---

# Example: How the `@collection-type` and `@linking` attributes determine links

In this scenario, a simple map establishes basic hierarchical and relationship table links. The `@collection-type` and `@linking` attributes are then added to modify how links are generated.

The following example illustrates how linkage is defined in a DITA map:

```
<topicref href="A.dita" collection-type="sequence">
  <topicref href="A1.dita"/>
  <topicref href="A2.dita"/>
</topicref>
<reltable>
  <relrow>
    &lt;relcell&gt;&lt;topicref href="A.dita"/&gt;&lt;/relcell&gt;
    &lt;relcell&gt;&lt;topicref href="B.dita"/&gt;&lt;/relcell&gt;
  </relrow>
</reltable>
```

When the output is generated, the topics contain the following linkage. Sequential \(next/previous\) links between A1 and A2 are present because of the `@collection-type` attribute on the parent:

-   **A**

    Links to A1, A2 as children

    Links to B as related

-   **A1**

    Links to A as a parent

    Links to A2 as next in the sequence

-   **A2**

    Links to A as a parent

    Links to A1 as previous in the sequence

-   **B**

    Links to A as related


The following example illustrates how setting the `@linking` attribute can change the default behavior:

```
<topicref href="A.dita" collection-type="sequence">
  <topicref href="B.dita" linking="none"/>
  <topicref href="A1.dita"/>
  <topicref href="A2.dita"/>
</topicref>
<reltable>
  <relrow>
    &lt;relcell&gt;&lt;topicref href="A.dita"/&gt;&lt;/relcell&gt;
    &lt;relcell linking="sourceonly"&gt;&lt;topicref href="B.dita"/&gt;&lt;/relcell&gt;
  </relrow>
</reltable>
```

When the output is generated, the topics contain the following linkage:

-   **A**

    Links to A1, A2 as children

    Does not link to B as a child or related topic

-   **A1**

    Links to A as a parent

    Links to A2 as next in the sequence

    Does not link to B as previous in the sequence

-   **A2**

    Links to A as a parent

    Links to A1 as previous in the sequence

-   **B**

    Links to A as a related topic


**Parent topic:**[Examples of DITA maps](../../archSpec/base/example-ditamaps.md)

