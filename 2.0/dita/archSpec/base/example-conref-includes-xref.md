---
author: OASIS DITA Technical Committee
---

# Example: Resolving conrefs to elements that contain cross references

In this scenario, elements referenced by conref include cross references using a variety of referencing styles.

Consider the following paragraphs in `paras-01.dita` that are intended to be used by reference from other topics:

```
<topic id="paras-01">
    <title>Reusable paragraphs</title>
    <body>
        <p id="p1">See <xref href="#paras-01/p5"/>.</p>
        <p id="p2">See <xref href="topic-02.dita#topic02/fig-01"/>.</p>
        <p id="p3">See <xref href="#./p5"/>.</p>
        <p id="p4">See <xref keyref="task-remove-cover"/>.</p>
        <p id="p5">Paragraph 5 in paras-01.</p>
    </body>
</topic>
```

The paragraphs are used by content reference from other topics, including the `using-topic-01.dita` topic:

```
<topic id="using-topic-01"><title>Using topic one</title>
    <body>
        <p id="A" conref="paras-01.dita#paras-01/p1"/> 
        <p id="B" conref="paras-01.dita#paras-01/p2"/> 
        <p id="C" conref="paras-01.dita#paras-01/p3"/>
        <p id="D" conref="paras-01.dita#paras-01/p4"/>
        <p id="p5">Paragraph 5 in using-topic-01</p>  
    </body>
</topic>
```

Processors must consider different contexts when resolving `<xref>` references within the referenced paragraphs. The rendered cross references in `using-topic-01.dita` are shown in the following table.

<table id="simpletable_pbc_f3g_scc"><thead><tr><th align="left" id="d200975e53">

Paragraph

</th><th align="left" id="d200975e56">

Value of `@id` attribute on conrefed paragraph

</th><th align="left" id="d200975e62">

`<xref>` within conrefed paragraph

</th><th align="left" id="d200975e67">

Resolution

</th></tr></thead><tbody><tr><td>

A

</td><td>

p1

</td><td>

`<xref href="#paras-01/p5"/>`

</td><td>

The cross reference in paragraph p1 is a direct URI reference that does not contain a same-topic fragment identifier. It can be resolved only to paragraph p5 in `paras-01.dita`, which contains the content "Paragraph 5 in paras-01".

</td></tr><tr><td>

B

</td><td>

p2

</td><td>

`<xref href="topic-02.dita#topic02/fig-01"/>`

</td><td>

The cross reference in paragraph p2 is a direct URI reference. It can be resolved only to the element with `id="fig-01"` in `topic-02.dita`.

</td></tr><tr><td>

C

</td><td>

p3

</td><td>

`<xref href="#./p5"/>`

</td><td>

The cross reference in paragraph p3 is a direct URI reference that contains a same-topic fragment identifier. Because the URI reference contains a same-topic fragment identifier, the reference is resolved in the context of the referencing topic \(`using-topic-01.dita`\).

 If `using-topic-01.dita` did not contain an element with `id="p5"`, then the conref to paragraph p3 would result in a link resolution failure.

</td></tr><tr><td>

D

</td><td>

p4

</td><td>

`<xref keyref="task-remove-cover"/>`

</td><td>

The cross reference in paragraph p4 is a key reference. It is resolved to whatever resource is bound to the key name "task-remove-cover" in the applicable map context.

</td></tr></tbody>
</table>**Parent topic:**[Examples of content referencing](../../archSpec/base/examples-conref.md)

