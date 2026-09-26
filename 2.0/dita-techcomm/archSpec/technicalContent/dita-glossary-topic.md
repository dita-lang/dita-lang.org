---
author: OASIS DITA Technical Committee
---

# Glossary entry

A glossary entry topic defines a single meaning of a term. It also can provide information such as acronyms and synonyms.

## Purpose

Glossary entry topics serve the following purposes:

-   They ensure that a team of writers can use the same terminology.
-   They can be used to create glossaries that provide readers with definitions of terms and acronyms.
-   They can be used, in conjunction with the `<abbreviated-form>` element, to enable processors to specify an acronym on second and later uses of a term.

## Content model

Each glossary entry topic contains the following structures:

-   Term: [`<glossterm>`](../../langRef/technicalContent/glossterm.md)
-   Definition of term: [`<glossdef>`](../../langRef/technicalContent/glossdef.md)
-   Glossary body: [`<glossBody>`](../../langRef/technicalContent/glossBody.md)

## Examples

This section contains examples of glossary entry topics.

The following code sample contains a simple glossary entry topic:

```
<glossentry id="ddl">
  <glossterm>data definition language</glossterm>
  <glossdef>A language used for defining database schemas</glossdef>
</glossentry>
```

The following code sample contains a glossary entry topic that is used, in conjunction with an `<abbreviated-form>` element, to render the expanded form on first usage and the acronym on later usages.

```
<glossentry id="glossary-aids">
  <glossterm>acquired immunodeficiency syndrome</glossterm>
    <glossBody>
      <glossSurfaceForm>acquired immunodeficiency syndrome (AIDS)</glossSurfaceForm>
      <glossAlt>
        <glossAcronym>AIDS</glossAcronym>
      </glossAlt>
  </glossBody>
</glossentry>
```

Assume that a key-definition map specifies a value of aids for this glossary entry topic. On the first usage of `<abbreviated-form keyref="aids"/>`, the processor renders the content of the `<glossSurfaceForm>` element. On the second and later usages, the processor renders the content of the `<glossAcronym>` element.

**Parent topic:**[Topic and map document types](../../archSpec/technicalContent/dita-technicalContent-InformationTypes.md)

