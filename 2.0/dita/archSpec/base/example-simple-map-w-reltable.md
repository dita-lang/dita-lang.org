---
author: OASIS DITA Technical Committee
---

# Example: DITA map with a simple relationship table

This example illustrates how to interpret a basic three-column relationship table used to maintain links between concept, task, and reference material.

The following example contains the markup for a simple relationship table:

```
<map>
<!-- ... -->
<reltable>
  <relheader>
    <relcolspec type="concept"/>
    <relcolspec type="task"/>
    <relcolspec type="reference"/>
  </relheader>
  <relrow>
    <relcell>
      <topicref href="A.dita"/>
    </relcell>
    <relcell>
      <topicref href="B.dita"/>
    </relcell>
    <relcell>
      <topicref href="C1.dita"/>
      <topicref href="C2.dita"/>
    </relcell>
  </relrow>
</reltable>
</map>
```

A DITA-aware tool might represent the relationship table graphically:

<table><thead><tr><th align="left" id="d277656e34">

type="concept"

</th><th align="left" id="d277656e37">

type="task"

</th><th align="left" id="d277656e40">

type="reference"

</th></tr></thead><tbody><tr><td>

A

</td><td>

B

</td><td>

C1  
 C2

</td></tr></tbody>
</table>When the output is generated, the topics contain the following linkage:

-   **A**

    Links to B, C1, and C2

-   **B**

    Links to A, C1, and C2

-   **C1, C2**

    Links to A and B


**Parent topic:**[Examples of DITA maps](../../archSpec/base/example-ditamaps.md)

