---
layout: site.njk
title: 'DITA Quick Element Reference'
---

A fast look at the most common DITA elements, with terse fragments rather than complete
topics. For the full language reference, see [Specifications](/specifications).

<div class="note"><span class="note__title">Note</span>: Each fragment comes with an <em>example rendition</em>. Published output depends on DITA processor
and custom styling.</div>

## Topic Types

DITA content is written in typed topics. Each type specializes the base `<topic>` element for
a specific kind of content.

### Concept

A `<concept>` explains background information a reader needs to understand before acting.

<div class="row">
<div class="col-md-6">

```xml
<concept id="disk_management">
  <title>Disk Management</title>
  <shortdesc>Disk management lets you partition, format, and monitor
    storage devices.</shortdesc>
  <conbody>
    <p>A disk must be partitioned before it can be formatted.</p>
  </conbody>
</concept>
```

</div>
<div class="col-md-6 rendition">
<h1>Disk Management</h1>
<p>Disk management lets you partition, format, and monitor storage devices.</p>
<p>A disk must be partitioned before it can be formatted.</p>
</div>
</div>

### Task

A `<task>` walks a reader through the steps needed to accomplish a goal.

<div class="row">
<div class="col-md-6">

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

</div>
<div class="col-md-6 rendition">
<h1>Formatting a Disk</h1>
<p>Format a disk to prepare it for use.</p>
<p>Formatting erases all data on the disk.</p>
<ol>
<li>Select the disk.</li>
<li>Click <b>Format</b>.<p>The disk is formatted with the default file system.</p></li>
</ol>
<p>The disk is ready to store files.</p>
</div>
</div>

### Reference

A `<reference>` presents lookup information, such as command syntax or property tables.

<div class="row">
<div class="col-md-6">

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

</div>
<div class="col-md-6 rendition">
<h1>Disk Commands</h1>
<p>Command-line utilities for managing disks.</p>
<pre>diskutil &lt;command&gt; [device]</pre>
<h2>Commands</h2>
<table class="table">
<thead>
<tr><th>Command</th><th>Description</th></tr>
</thead>
<tbody>
<tr><td>list</td><td>Lists available disks.</td></tr>
</tbody>
</table>
</div>
</div>

## Common Elements

### Paragraph and Short Description

A `<shortdesc>` is a one- or two-sentence summary used in generated previews and search
results.

<div class="row">
<div class="col-md-6">

```xml
<shortdesc>A short summary of the topic, used in search results and
  previews.</shortdesc>
```

</div>
<div class="col-md-6 rendition">
<p>A short summary of the topic, used in search results and previews.</p>
</div>
</div>

`<p>` is a normal paragraph.

<div class="row">
<div class="col-md-6">

```xml
<p>A regular paragraph of body text.</p>
```

</div>
<div class="col-md-6 rendition">
<p>A regular paragraph of body text.</p>
</div>
</div>

### Section

`<section>` groups related content under an optional title within a topic body.

<div class="row">
<div class="col-md-6">

```xml
<section>
  <title>Prerequisites</title>
  <p>Back up your data before continuing.</p>
</section>
```

</div>
<div class="col-md-6 rendition">
<h2>Prerequisites</h2>
<p>Back up your data before continuing.</p>
</div>
</div>

### Text Formatting

`<b>`, `<i>`, and `<u>` mark bold, italic, and underlined text. `<codeph>` marks inline code.

<div class="row">
<div class="col-md-6">

```xml
<p>Select <b>Save As</b>, then enter a <i>unique</i> file name.
  Run <codeph>ls -l</codeph>.</p>
```

</div>
<div class="col-md-6 rendition">
<p>Select <b>Save As</b>, then enter a <i>unique</i> file name. Run <code>ls -l</code>.</p>
</div>
</div>

### Lists

`<ul>` and `<ol>` create bulleted and numbered lists of `<li>` items.

<div class="row">
<div class="col-md-6">

```xml
<ul>
  <li>Coffee</li>
  <li>Tea</li>
</ul>
```

</div>
<div class="col-md-6 rendition">
<ul>
<li>Coffee</li>
<li>Tea</li>
</ul>
</div>
</div>

<div class="row">
<div class="col-md-6">

```xml
<ol>
  <li>Boil water.</li>
  <li>Add tea leaves.</li>
</ol>
```

</div>
<div class="col-md-6 rendition">
<ol>
<li>Boil water.</li>
<li>Add tea leaves.</li>
</ol>
</div>
</div>

### Definition List

`<dl>` pairs terms (`<dt>`) with descriptions (`<dd>`), grouped in `<dlentry>` elements.

<div class="row">
<div class="col-md-6">

```xml
<dl>
  <dlentry>
    <dt>API</dt>
    <dd>Application Programming Interface.</dd>
  </dlentry>
</dl>
```

</div>
<div class="col-md-6 rendition">
<dl>
<dt>API</dt>
<dd>Application Programming Interface.</dd>
</dl>
</div>
</div>

### Note

`<note>` flags supplementary information. The `type` attribute selects a built-in kind, such
as warning, tip, or danger.

<div class="row">
<div class="col-md-6">

```xml
<note type="warning">Formatting a disk erases all data on it.</note>
```

</div>
<div class="col-md-6 rendition">
<div class="note warning"><span class="note__title">Warning: </span>Formatting a disk erases all data on it.</div>
</div>
</div>

### Image and Figure

`<image>` embeds an image. Wrap it in `<fig>` to add a caption.

<div class="row">
<div class="col-md-6">

```xml
<fig>
  <title>Disk Utility Window</title>
  <image href="disk-utility.png" alt="The Disk Utility window"/>
</fig>
```

</div>
<div class="col-md-6 rendition">
<figure>
<img src="disk-utility.png" alt="The Disk Utility window"/>
<figcaption><strong>Figure 1</strong>: Disk Utility Window</figcaption>
</figure>
</div>
</div>

### Table

`<simpletable>` is a lightweight table of rows and columns. `<table>` supports column spans,
alignment, and other CALS table features.

<div class="row">
<div class="col-md-6">

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

</div>
<div class="col-md-6 rendition">
<table class="table">
<thead>
<tr><th>Name</th><th>Type</th></tr>
</thead>
<tbody>
<tr><td>disk0</td><td>SSD</td></tr>
</tbody>
</table>
</div>
</div>

### Cross-Reference and Link

`<xref>` links to another topic, an element within a topic, or an external URL.

<div class="row">
<div class="col-md-6">

```xml
<p>
  See <xref href="disk_management.dita"/> for background. An external
  resource <xref href="https://example.com" scope="external"
                 format="html">Example</xref>.
</p>
```

</div>
<div class="col-md-6 rendition">
<p>
See <a href="disk_management.html">Disk Management</a> for background. An external
resource <a href="https://example.com">Example</a>.
</p>
</div>
</div>

### Code Block

`<codeblock>` marks a block of preformatted code. `<pre>` marks other preformatted text, such
as command syntax.

<div class="row">
<div class="col-md-6">

```xml
<codeblock outputclass="language-sh">diskutil list</codeblock>
```

</div>
<div class="col-md-6 rendition">
<pre class="language-sh"><code>diskutil list</code></pre>
</div>
</div>

## Task-Specific Elements

`<steps>` holds an ordered sequence of `<step>` elements, each with a command (`<cmd>`), an
optional explanation (`<info>`), and an optional result (`<stepresult>`).

<div class="row">
<div class="col-md-6">

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

</div>
<div class="col-md-6 rendition">
<h2>Steps</h2>
<ol>
<li>Open Disk Utility.</li>
<li>Select the disk, then click <b>Erase</b>.
<p>This step permanently deletes all data on the disk.</p>
<p>The disk is erased and ready to format.</p>
</li>
</ol>
</div>
</div>

## Reference-Specific Elements

`<properties>` lists name/value pairs, such as command options or configuration settings,
each with an optional description.

<div class="row">
<div class="col-md-6">

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

</div>
<div class="col-md-6 rendition">
<table class="table">
<thead>
<tr><th>Option</th><th>Value</th><th>Description</th></tr>
</thead>
<tbody>
<tr><td>-v</td><td>verbose</td><td>Prints detailed output.</td></tr>
</tbody>
</table>
</div>
</div>

## Maps

A map assembles topics into a navigable structure and defines relationships between them,
without containing content of its own. `<topichead>` groups topic references under a heading
that doesn’t correspond to an actual topic.

<div class="row">
<div class="col-md-6">

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

</div>
<div class="col-md-6 mt-3">

_Generated navigation, e.g. a table of contents:_

<div class="rendition">
<ul class="rendition__toc">
<li><a href="disk_management.html" rel="nofollow">Disk Management</a></li>
<li><a href="format_disk.html" rel="nofollow">Formatting a Disk</a></li>
<li class="rendition__toc--open">Reference
<ul>
<li><a href="disk_commands.html" rel="nofollow">Disk Commands</a></li>
</ul>
</li>
</ul>
</div>
</div>
</div>

## Content Reuse with Keys

A `<keydef>` in a map assigns a key to a resource. A `keyref` attribute, on elements such as
`<xref>`, `<image>`, or `<ph>`, resolves that key from within a topic, so the target can
change without editing every reference to it.

<div class="row">
<div class="col-md-6">

```xml
<map>
  <keydef keys="diskutil-guide" href="disk_management.dita"/>
</map>
```

</div>
<div class="col-md-6 mt-3">

_No visible output—a <code>keydef</code> alone doesn’t appear in navigation, it only
defines the key._

</div>
</div>

<div class="row">
<div class="col-md-6">

```xml
<p>For details, see <xref keyref="diskutil-guide"/>.</p>
```

</div>
<div class="col-md-6 rendition">
<p>For details, see <a href="disk_management.html">Disk Management</a>.</p>
</div>
</div>

Keys can also carry reusable text, defined with `<keywords>` in the map and resolved with a
`keyref` on `<keyword>` or `<ph>`:

<div class="row">
<div class="col-md-6">

```xml
<keydef keys="product-name">
  <topicmeta>
    <keywords>
      <keyword>Disk Utility Pro</keyword>
    </keywords>
  </topicmeta>
</keydef>
```

</div>
<div class="col-md-6 mt-3">

_No visible output—defines the key’s text for use elsewhere._

</div>
</div>

<div class="row">
<div class="col-md-6">

```xml
<p>Welcome to <keyword keyref="product-name"/>.</p>
```

</div>
<div class="col-md-6 rendition">
<p>Welcome to Disk Utility Pro.</p>
</div>
</div>

## Content Reuse with Conref

A `conref` attribute pulls the content of an element with a matching `id` into another
location, so the same content can appear in multiple topics without copying it.

Given this note, defined in the `disk_management` topic above:

<div class="row">
<div class="col-md-6">

```xml
<note id="disk_warning" type="warning">Formatting a disk erases all
  data on it.</note>
```

</div>
<div class="col-md-6 rendition">
<div class="note warning"><span class="note__title">Warning: </span>Formatting a disk erases all data on it.</div>
</div>
</div>

Another topic can reuse it by reference:

<div class="row">
<div class="col-md-6">

```xml
<note conref="disk_management.dita#disk_management/disk_warning"/>
```

</div>
<div class="col-md-6 rendition">
<div class="note warning"><span class="note__title">Warning: </span>Formatting a disk erases all data on it.</div>
</div>
</div>

`conkeyref` resolves the source through a key defined in a map, instead of a direct file
path:

<div class="row">
<div class="col-md-6">

```xml
<note conkeyref="shared-notices/disk_warning"/>
```

</div>
<div class="col-md-6 rendition">
<div class="note warning"><span class="note__title">Warning: </span>Formatting a disk erases all data on it.</div>
</div>
</div>
