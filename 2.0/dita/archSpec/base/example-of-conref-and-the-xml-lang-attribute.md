---
author: OASIS DITA Technical Committee
---

# Example: content reference and the `@xml:lang` attribute

This example outlines how processors determine the effective value of the `@xml:lang` attribute for content that is referenced by the `@conref` or `@conkeyref` attribute.

In this scenario, a company has a notices topic that contains warnings in multiple languages. The notices topic specifies an `@xml:lang` attribute of en. However, it contains content that is reused from topics that explicitly set the `@xml:lang` attribute to frand de.

The following code block shows the content of the DITA topic that contains the referencing elements:

```
<topic xml:lang="en" id="notices">
 <title>NOTICES</title>
 <shortdesc>Be sure to read all product safety information before using the product.</shortdesc>
 <body>
   <note id="warning-english" conref="warnings-en.dita#warnings/general"/>
   **&lt;note id="warning-french" conref="warnings-fr.dita\#warnings/general"/&gt;**
   **&lt;note id="warning-german" conref="warnings-de.dita\#warnings/general"/&gt;**
   <!-- ... All supported languages for the product ... -->
 </body>
</topic>
```

The following code blocks show the content of the topics that contains the referenced elements:

```
<topic id="warnings" xml:lang="en">
 <title>Reusable warnings (English)</title>
 <body>
  <note id="general">General notice about using the product...</note>
  <note id="water">Warning about using the product near water...</note>
  <!-- Other reusable warnings -->
 </body>
</topic>

```

```
<topic id="warnings" xml:lang="fr">
 <title>Reusable warnings (French)</title>
 <body>
  <note id="general">(French translation of: General notice about using the product...)</note>
  <note id="water">(French translation of: Warning about using the product near water...)</note>
  <!-- Other reusable warnings -->
 </body>
</topic>

```

```
<topic id="warnings" xml:lang="de">
 <title>Reusable warnings (German)</title>
 <body>
  <note id="general">(German translation of: General notice about using the product...)</note>
  <note id="water">(German translation of: Warning about using the product near water...)</note>
  <!-- Other reusable warnings -->
 </body>
</topic>

```

When the topic that contains the conrefed notes is processed, the following occurs:

-   The `<note>` element with the `@id` attribute set to warning-french has an effective value for the `@xml:lang` attribute of fr.
-   The `<note>` element with the `@id` attribute set to warning-german has an effective value for the `@xml:lang` attribute of de.

In each case, the effective value of the `@xml:lang` attribute for the note is determined by the value of the `@xml:lang` attribute that is specified on the topic that contains the referenced element, instead of the value of the `@xml:lang` attribute that is specified on the notices topic that contains the referencing elements.

**Parent topic:**[The xml:lang attribute](../../archSpec/base/xmllang.md)

