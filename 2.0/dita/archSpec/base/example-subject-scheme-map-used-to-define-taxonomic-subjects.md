---
author: OASIS DITA Technical Committee
---

# Example: a subject scheme map used to define taxonomic subjects

A subject scheme map can be used to define taxonomic subjects. Once defined, the subjects can be referenced by specifying a `@subjectrefs` attribute on a `<topicref>` element.

The following subject scheme map defines a set of subjects that are used to classify content:

```
<subjectScheme>
  <subjectdef keys="content-types">
    <subjectdef keys="conceptual-material"/>
    <subjectdef keys="reference"/>
    <subjectdef keys="tutorial"/>
  </subjectdef>
  <subjectdef keys="operating-systems">
    <subjectdef keys="linux"/>
    <subjectdef keys="macosx"/>
    <subjectdef keys="windows"/>
  </subjectdef>
  <subjectdef keys="user-tasks">
    <subjectdef keys="administering"/>
    <subjectdef keys="developing"/>
    <subjectdef keys="installing"/>
    <subjectdef keys="troubleshooting"/>
  </subjectdef>
</subjectScheme>
```

The keys assigned to the subject definitions can be referenced by specifying the `@subjectrefs` attribute on topic references in a navigation map:

```
<map>
<title>User assistance for the Acme Widget</title>
<!-- ... -->
<topicref keyref="install-overview" **subjectrefs="installing"**>
  <topicref keyref="install-linux"/>
  <topicref keyref="install-macosx"/>
  <topicref keyref="install-windows"/>
  <topicref keyref="install-troubleshooting" **subjectrefs="troubleshooting"**/>
</topicref>
<!-- ... -->
</map>
```

Because the `@subjectrefs` attribute cascades, the effective value of the above markup is the same as the following markup:

```
<map>
<title>User assistance for the Acme Widget</title>
<!-- ... -->
<topicref keyref="install-overview" subjectrefs="installing">
  <topicref keyref="install-linux" subjectrefs="installing"/>
  <topicref keyref="install-macosx" subjectrefs="installing"/>
  <topicref keyref="install-windows" subjectrefs="installing"/>
  <topicref keyref="install-troubleshooting" subjectrefs="installing troubleshooting"/>
</topicref>
<!-- ... -->
</map>
```

**Parent topic:**[Examples of subject scheme maps](../../archSpec/base/examples-subjectScheme-maps.md)

