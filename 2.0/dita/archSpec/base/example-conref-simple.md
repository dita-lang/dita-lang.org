---
author: OASIS DITA Technical Committee
---

# Example: Simple `@conref` usage

In this scenario, a `@conref` attribute is used to pull content from the referenced element in another topic.

Consider the following topic:

```
<task id="setup-widget" xml:lang="en">
  <title>Setting up the widget</title>
  <taskbody>
    <steps>
      <step><cmd>Turn the widget on for the first time.</cmd></step>
      <step><cmd>Follow the prompts to select your language and region.</cmd></step>
      **&lt;step conref="reuse-library.dita\#reuse/setup-profile"&gt;&lt;cmd&gt;&lt;/cmd&gt;&lt;/step&gt;**
      <step><cmd>Step outside and activate the widget.</cmd></step>
    </steps>
  </taskbody>
</task>
```

That topic requires the existence of another topic, `reuse-library.dita`:

```
<task id="reuse-library" xml:lang="en">
  <title>Reuse library topic</title>
  <taskbody>
    <steps>
      <!-- ... other steps used across tasks ... -->
      <step id="setup-profile">
        <cmd>Follow the prompts to set up your name and contact information.</cmd>
        <info>Contact information is optional, but recommended.</info>
      </step>
    </steps>
  </taskbody>
</task>
```

These topics highlight some important things to remember when using `@conref` attributes:

-   The attribute includes both the ID of the referenced topic and the ID of the referenced element.
-   When an element with a `@conref` attribute has required child elements, those child elements must still be specified. The use of DITA's `@conref` attribute does not override the XML rules that require such child elements.

When the `@conref` attribute is resolved, the processed version of the original topic will include content from the referenced element:

```
<task id="setup-widget" xml:lang="en">
  <title>Setting up the widget</title>
  <taskbody>
    <steps>
      <step><cmd>Turn the widget on for the first time.</cmd></step>
      <step><cmd>Follow the prompts to select your language and region.</cmd></step>
      **&lt;step&gt;
        &lt;cmd&gt;Follow the prompts to set up your name and contact information.&lt;/cmd&gt;
        &lt;info&gt;Contact information is optional, but recommended.&lt;/info&gt;
      &lt;/step&gt;**
      <step><cmd>Step outside and activate the widget.</cmd></step>
    </steps>
  </taskbody>
</task>
```

**Parent topic:**[Examples of content referencing](../../archSpec/base/examples-conref.md)

