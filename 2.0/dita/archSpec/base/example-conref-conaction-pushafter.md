---
author: OASIS DITA Technical Committee
---

# Example: Using `@conaction` to push content after another element

In this scenario, a `@conref` and `@conaction` are used to push content after an element in another topic.

Consider the following topic, which is set up to push a step after a step in another topic. It needs to use two step elements to set up the reuse. The referencing element itself uses `conaction="mark"` to mark the referenced element. The element to be pushed immediately follows the marking element and uses `conaction="pushafter"`:

```
<steps>
  <step conaction="mark" conref="example.dita#example/b">
    <cmd/>
  </step>
  <step conaction="pushafter">
    <cmd>Do this after B</cmd>
  </step>
</steps>
```

The referenced element is in the file `example.dita`, which looks like this before a processor resolves the reference:

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

After the content reference is resolved, the document `example.dita` includes the pushed `<step>` element after the step with `@id` set to b:

```
<task id="example" xml:lang="en">
  <title>Example topic</title>
  <taskbody>
    <steps>
      <step id="a"><cmd>A</cmd></step>
      <step id="b"><cmd>B</cmd></step>
      <step><cmd>Do this after B</cmd></step>
      <step id="c"><cmd>C</cmd></step>
    </steps>
  </taskbody>
</task>
```

**Parent topic:**[Examples of content referencing](../../archSpec/base/examples-conref.md)

