---
author: OASIS DITA Technical Committee
---

# Example: Simple `@conkeyref` usage

In this scenario, a `@conkeyref` attribute is used as an indirect reference to pull content from the referenced element in another topic.

Consider the following topic:

```
<task id="setup-widget" xml:lang="en">
  <title>Setting up the widget</title>
  <taskbody>
    <steps>
      <step><cmd>Turn the widget on for the first time.</cmd></step>
      <step><cmd>Follow the prompts to select your language and region.</cmd></step>
      **&lt;step conkeyref="reuselibrary/setup-profile"&gt;&lt;cmd&gt;&lt;/cmd&gt;&lt;/step&gt;**
      <step><cmd>Step outside and activate the widget.</cmd></step>
    </steps>
  </taskbody>
</task>
```

The key is defined as a reference to a resue library:

```
<map>
  <title>Key definitions</title>
  <keydef keys="reuselibrary" href="reuse-library.dita"/>
  <!-- ... -->
</map>
```

The library topic `reuse-library.dita` is set up as follows:

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

When the `@conkeyref` attribute is resolved, the key resolves to the topic that contains the referenced ID `setup-profile`. The result is the same as if the original topic contained `conref="reuse-library.dita#reuse-library/setup-profile"` instead of `conkeyref="reuselibrary/setup-profile"`. However, the indirection created by using a key allows this reference to resolve differently in other contexts.

The processed version of the original topic will include content from the referenced element:

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

