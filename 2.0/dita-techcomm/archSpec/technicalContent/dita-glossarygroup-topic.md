---
author: OASIS DITA Technical Committee
---

# Glossary group

Glossary group topics enable the authoring of glossary entries in a single topic document, rather than working with many individual glossary-entry topic documents.

## Purpose

The glossary group topic serves as an authoring convenience. It enables people to author and manage multiple glossary-entry topics in a single DITA document.

## Content model

A glossary group topic can contain multiple glossary-entry topics.

## Example

The following code sample shows a glossary group topic with multiple nested glossary groups, one for each English letter group.

```
**&lt;glossgroup id="glossgroup" xml:lang="en-US"&gt;**
  <title>Glossary</title>
  **&lt;glossgroup id="glossgroup-a"&gt;**
    <title>A</title>
    <glossentry id="apple-fruit">
      <glossterm>apple</glossterm>
      <glossdef>A round, edible fruit produced by an apple tree (Malus domestica).</glossdef>
    </glossentry>
    <glossentry id="apple-corp">
      <glossterm>Apple Inc.</glossterm>
      <glossdef>An American multinational technology company headquartered in Cupertino, California.</glossdef>
    </glossentry>
  **&lt;/glossgroup&gt;**
  <!-- ... (groups B to Y here ) ... -->
  **&lt;glossgroup id="glossgroup-z"&gt;**
    <title>Z</title>
    <glossentry id="ziziphus-fruit">
      <glossterm>ziziphus</glossterm>
      <glossdef>The edible drupe of ziziphus shrubs (Ziziphus jujuba).</glossdef>
      <glossBody>
        <glossAlt>
          <glossSynonym>jujube</glossSynonym>
        </glossAlt>
      </glossBody>
    </glossentry>
  **&lt;/glossgroup&gt;**
**&lt;/glossgroup&gt;**
```

**Parent topic:**[Topic and map document types](../../archSpec/technicalContent/dita-technicalContent-InformationTypes.md)

