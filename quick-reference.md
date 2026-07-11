---
layout: site.njk
title: 'DITA Quick Syntax Reference'
---

A fast look at the most common DITA elements, with terse fragments rather than complete
topics. For the full language reference, see [Specifications](/specifications).

## Topic Types

DITA content is written in typed topics. Each type specializes the base `<topic>` element for
a specific kind of content.

### Concept

A `<concept>` explains background information a reader needs to understand before acting.

```xml
<concept id="disk_management">
  <title>Disk Management</title>
  <shortdesc>Disk management lets you partition, format, and monitor storage devices.</shortdesc>
  <conbody>
    <p>A disk must be partitioned before it can be formatted.</p>
  </conbody>
</concept>
```

### Task

A `<task>` walks a reader through the steps needed to accomplish a goal.

```xml
<task id="format_disk">
  <title>Formatting a Disk</title>
  <shortdesc>Format a disk to prepare it for use.</shortdesc>
  <taskbody>
    <context>
      <p>Formatting erases all data on the disk.</p>
    </context>
    <steps>
      <step>
        <cmd>Select the disk.</cmd>
      </step>
      <step>
        <cmd>Click <uicontrol>Format</uicontrol>.</cmd>
        <info>The disk is formatted with the default file system.</info>
      </step>
    </steps>
    <result>
      <p>The disk is ready to store files.</p>
    </result>
  </taskbody>
</task>
```

### Reference

A `<reference>` presents lookup information, such as command syntax or property tables.

```xml
<reference id="disk_commands">
  <title>Disk Commands</title>
  <shortdesc>Command-line utilities for managing disks.</shortdesc>
  <refbody>
    <refsyn>
      <pre>diskutil &lt;command&gt; [device]</pre>
    </refsyn>
    <section>
      <title>Commands</title>
      <simpletable>
        <sthead>
          <stentry>Command</stentry>
          <stentry>Description</stentry>
        </sthead>
        <strow>
          <stentry>list</stentry>
          <stentry>Lists available disks.</stentry>
        </strow>
      </simpletable>
    </section>
  </refbody>
</reference>
```

## Common Elements

### Paragraph and Short Description

A `<shortdesc>` is a one- or two-sentence summary used in generated previews and search
results.

```xml
<shortdesc>A short summary of the topic, used in search results and previews.</shortdesc>
```

`<p>` is a normal paragraph.

```xml
<p>A regular paragraph of body text.</p>
```

### Section

`<section>` groups related content under an optional title within a topic body.

```xml
<section>
  <title>Prerequisites</title>
  <p>Back up your data before continuing.</p>
</section>
```

### Text Formatting

`<b>`, `<i>`, and `<u>` mark bold, italic, and underlined text. `<codeph>` marks inline code.

```xml
<p>Select <b>Save As</b>, then enter a <i>unique</i> file name. Run <codeph>ls -l</codeph>.</p>
```

### Lists

`<ul>` and `<ol>` create bulleted and numbered lists of `<li>` items.

```xml
<ul>
  <li>Coffee</li>
  <li>Tea</li>
</ul>
```
```xml
<ol>
  <li>Boil water.</li>
  <li>Add tea leaves.</li>
</ol>
```

### Definition List

`<dl>` pairs terms (`<dt>`) with descriptions (`<dd>`), grouped in `<dlentry>` elements.

```xml
<dl>
  <dlentry>
    <dt>API</dt>
    <dd>Application Programming Interface.</dd>
  </dlentry>
</dl>
```

### Note

`<note>` flags supplementary information. The `type` attribute selects a built-in kind, such
as warning, tip, or danger.

```xml
<note type="warning">Formatting a disk erases all data on it.</note>
```

### Image and Figure

`<image>` embeds an image. Wrap it in `<fig>` to add a caption.

```xml
<fig>
  <title>Disk Utility Window</title>
  <image href="disk-utility.png" alt="The Disk Utility window"/>
</fig>
```

### Table

`<simpletable>` is a lightweight table of rows and columns. `<table>` supports column spans,
alignment, and other CALS table features.

```xml
<simpletable>
  <sthead>
    <stentry>Name</stentry>
    <stentry>Type</stentry>
  </sthead>
  <strow>
    <stentry>disk0</stentry>
    <stentry>SSD</stentry>
  </strow>
</simpletable>
```

### Cross-Reference and Link

`<xref>` links to another topic, an element within a topic, or an external URL.

```xml
<p>
  See <xref href="disk_management.dita">Disk Management</xref> for background. An external
  resource: <xref href="https://example.com" scope="external" format="html">Example</xref>.
</p>
```

### Code Block

`<codeblock>` marks a block of preformatted code. `<pre>` marks other preformatted text, such
as command syntax.

```xml
<codeblock outputclass="language-sh">diskutil list</codeblock>
```

## Task-Specific Elements

`<steps>` holds an ordered sequence of `<step>` elements, each with a command (`<cmd>`), an
optional explanation (`<info>`), and an optional result (`<stepresult>`).

```xml
<steps>
  <step>
    <cmd>Open Disk Utility.</cmd>
  </step>
  <step>
    <cmd>Select the disk, then click <uicontrol>Erase</uicontrol>.</cmd>
    <info>This step permanently deletes all data on the disk.</info>
    <stepresult>The disk is erased and ready to format.</stepresult>
  </step>
</steps>
```

## Reference-Specific Elements

`<properties>` lists name/value pairs, such as command options or configuration settings,
each with an optional description.

```xml
<properties>
  <prophead>
    <proptypehd>Option</proptypehd>
    <propvaluehd>Value</propvaluehd>
    <propdeschd>Description</propdeschd>
  </prophead>
  <property>
    <proptype>-v</proptype>
    <propvalue>verbose</propvalue>
    <propdesc>Prints detailed output.</propdesc>
  </property>
</properties>
```

## Maps

A map assembles topics into a navigable structure and defines relationships between them,
without containing content of its own. `<topichead>` groups topic references under a heading
that doesn’t correspond to an actual topic.

```xml
<map>
  <title>Disk Management Guide</title>
  <topicref href="disk_management.dita"/>
  <topicref href="format_disk.dita"/>
  <topichead navtitle="Reference">
    <topicref href="disk_commands.dita"/>
  </topichead>
</map>
```

## Content Reuse: Keys and Keyrefs

A `<keydef>` in a map assigns a key to a resource. A `keyref` attribute, on elements such as
`<xref>`, `<image>`, or `<ph>`, resolves that key from within a topic, so the target can
change without editing every reference to it.

```xml
<map>
  <keydef keys="diskutil-guide" href="disk_management.dita"/>
</map>
```

```xml
<p>For details, see <xref keyref="diskutil-guide"/>.</p>
```

Keys can also carry reusable text, defined with `<keywords>` in the map and resolved with a
`keyref` on `<keyword>` or `<ph>`:

```xml
<keydef keys="product-name">
  <topicmeta>
    <keywords>
      <keyword>Disk Utility Pro</keyword>
    </keywords>
  </topicmeta>
</keydef>
```

```xml
<p>Welcome to <keyword keyref="product-name"/>.</p>
```

## Content Reuse: Conref

A `conref` attribute pulls the content of an element with a matching `id` into another
location, so the same content can appear in multiple topics without copying it.

Given this note, defined in the `disk_management` topic above:

```xml
<note id="disk_warning" type="warning">Formatting a disk erases all data on it.</note>
```

Another topic can reuse it by reference:

```xml
<note conref="disk_management.dita#disk_management/disk_warning"/>
```

`conkeyref` resolves the source through a key defined in a map, instead of a direct file
path:

```xml
<note conkeyref="shared-notices/disk_warning"/>
```
