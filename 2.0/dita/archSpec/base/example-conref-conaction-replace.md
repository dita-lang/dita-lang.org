---
author: OASIS DITA Technical Committee
---

# Example: Using `@conaction` to replace content

In this scenario, a `@conref` and `@conaction` are used to replace content in another topic.

Consider the following task in `example.dita` that has the `@id` attribute set to example. The task contains a `<step>` element with the `@id` set to b:

```
<task id="example" xml:lang="en">
  <title>Example topic</title>
  <taskbody>
    <steps>
      <step id="a"><cmd>A</cmd></step>
      <step id="b"><cmd>B</cmd></step>
      <step id="c"><cmd>C</cmd></step>
    </steps>
  </taskbody>
</task>
```

In order to replace the step with `id="b"`, another topic must combine a `@conaction` value of pushreplace with a `@conref` attribute that references this `<step>`:

```
<!-- Steps element within another task -->
<steps>
  <step conaction="pushreplace" 
        conref="example.dita#example/b">
    <cmd>Updated B</cmd>
  </step>
</steps>
```

The result will be an updated version of `example.dita` which contains the pushed `<step>`:

```
<task id="example" xml:lang="en">
  <title>Example topic</title>
  <taskbody>
    <steps>
      <step id="a"><cmd>A</cmd></step>
      <step id="b"><cmd>Updated B</cmd></step>
      <step id="c"><cmd>C</cmd></step>
    </steps>
  </taskbody>
</task>
```

**Parent topic:**[Examples of content referencing](../../archSpec/base/examples-conref.md)

