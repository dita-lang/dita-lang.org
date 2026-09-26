---
author: OASIS DITA Technical Committee
---

# Element-by-element recommendations for translators

This topic contains a list of all OASIS DITA elements that are available in the edition. It includes recommendations on whether the element contents are likely to be suitable for translation and whether the element has attributes whose values are likely to be suitable for translation. Examples of content that is not suitable for translation include code fragments and mailing addresses.

## Notes on the tables below

-   Note that an element might be a block element in one context and an inline element in another. In addition, specialized element types might be rendered in a way that varies from their specialization base. Accordingly, the distinctions presented in the tables are provided only as a guide to known behavior with the base DITA. For element specializations that are not distributed by OASIS, the suggested default is to fall back to the closest ancestor element that is part of the OASIS distribution.
-   For all elements, the `@translate` attribute overrides the suggested defaults specified in the tables below.
-   Certain block-level elements might appear in the middle of a translation segment. They are considered subflow elements in regard to translation. When located in the middle of a translation segment, these element should not be translated as part of that segment. Whenever possible, such elements should be placed only at sentence boundaries in order to aid translation. The subflow elements in base DITA are `<draft-comment>`, `<fn>`, `<index-see>`, `<index-see-also>`, `<indexterm>`, and `<required-cleanup>`
-   The `<keyword>` element \(as well as specializations of `<keyword>`\) is an inline, phrase-like element when it appears in the body of a document. It can also appear in the `<keywords>` element in `<topicmeta>` \(for maps\) or in the `<prolog>` \(for topic\). When it appears in the `<keywords>` element, each `<keyword>` represents an individual segment. In that location, `<keyword>` is considered a subflow element.

## Explanation of column headers

The following list explains the headers for the columns:

-   **Element name**

    The name of the element.

-   **Specialization base**

    The element from which the current element is specialized. This column only appears in tables for the domain elements.

-   **Same behavior as specialization base?**

    Indicates whether the element has the same behaviors in regard to translation as its specialization base. The behaviors are whether the element is formatted as a single block or as an inline element, whether the element represents a complete translatable segment, and whether the element contains translatable content. This column only appears in tables for the domain elements.

-   **Block/inline translation**

    Indicates whether the element represents a complete translatable segment.

-   **Translatable content?**

    Whether the element contains one or both of the following:

    -   Text content that can be translated
    -   Child elements that contain content that can be translated
-   **Notes**

    This column contains any additional information, including the following items.This column only appears in tables when it is needed.

    -   Whether the element has any attributes with values that might need translation
    -   If specializations of the element might need translation,
    -   If the element is a "subflow" element for the purposes of translation

## Bookmap elements

The following table contains information about the bookmap specialization. There are no translatable attributes.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<abbrevlist>`|`<topicref>`|yes|block|yes|
|`<amendments>`|`<topicref>`|yes|block|yes|
|`<appendix>`|`<topicref>`|yes|block|yes|
|`<approved>`|`<data>`|yes|block|no|
|`<backmatter>`|`<topicref>`|yes|block|yes|
|`<bibliolist>`|`<topicref>`|yes|block|yes|
|`<bookabstract>`|`<topicref>`|yes|block|yes|
|`<bookchangehistory>`|`<data>`|yes|block|no|
|`<bookevent>`|`<data>`|yes|block|no|
|`<bookeventtype>`|`<data>`|yes|block|no|
|`<bookid>`|`<data>`|yes|block|no|
|`<booklibrary>`|`<ph>`|yes|inline|yes|
|`<booklist>`|`<topicref>`|yes|block|yes|
|`<booklists>`|`<topicref>`|yes|block|yes|
|`<bookmap>`|`<map>`|no|block|yes|
|`<bookmeta>`|`<topicmeta>`|yes|block|yes|
|`<booknumber>`|`<data>`|yes|block|no|
|`<bookowner>`|`<data>`|yes|block|no|
|`<bookpartno>`|`<data>`|yes|block|no|
|`<bookrestriction>`|`<data>`|yes|block|no|
|`<bookrights>`|`<data>`|yes|block|no|
|`<booktitle>`|`<title>`|yes|block|yes|
|`<booktitlealt>`|`<ph>`|yes|inline|yes|
|`<chapter>`|`<topicref>`|yes|block|yes|
|`<colophon>`|`<topicref>`|yes|block|yes|
|`<completed>`|`<ph>`|no|inline|no|
|`<copyrfirst>`|`<data>`|yes|block|no|
|`<copyrlast>`|`<data>`|yes|block|no|
|`<day>`|`<ph>`|no|inline|no|
|`<dedication>`|`<topicref>`|yes|block|yes|
|`<draftintro>`|`<topicref>`|yes|block|yes|
|`<edited>`|`<data>`|yes|block|no|
|`<edition>`|`<data>`|yes|block|no|
|`<figurelist>`|`<topicref>`|yes|block|yes|
|`<frontmatter>`|`<topicref>`|yes|block|yes|
|`<glossarylist>`|`<topicref>`|yes|block|yes|
|`<indexlist>`|`<topicref>`|yes|block|yes|
|`<isbn>`|`<data>`|yes|block|no|
|`<mainbooktitle>`|`<ph>`|yes|inline|yes|
|`<maintainer>`|`<data>`|yes|block|no|
|`<month>`|`<ph>`|no|inline|no|
|`<notices>`|`<topicref>`|yes|block|yes|
|`<organization>`|`<data>`|yes|block|no|
|`<part>`|`<topicref>`|yes|block|yes|
|`<person>`|`<data>`|yes|block|no|
|`<preface>`|`<topicref>`|yes|block|yes|
|`<printlocation>`|`<data>`|yes|block|no|
|`<published>`|`<data>`|yes|block|no|
|`<publisherinformation>`|`<publisher>`|yes|block|yes|
|`<publishtype>`|`<data>`|yes|block|no|
|`<reviewed>`|`<data>`|yes|block|no|
|`<revisionid>`|`<ph>`|no|inline|no|
|`<started>`|`<ph>`|no|inline|no|
|`<summary>`|`<ph>`|yes|inline|yes|
|`<tablelist>`|`<topicref>`|yes|block|yes|
|`<tested>`|`<data>`|yes|block|no|
|`<toc>`|`<topicref>`|yes|block|yes|
|`<trademarklist>`|`<topicref>`|yes|block|yes|
|`<volume>`|`<data>`|yes|block|no|
|`<year>`|`<ph>`|no|inline|no|

## Concept elements

The following table contains information about the concept specialization. There are no translatable attributes.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<conbody>`|`<body>`|yes|block|yes|
|`<conbodydiv>`|`<bodydiv>`|yes|block|yes|
|`<concept>`|`<topic>`|yes|block|yes|

## Glossary entry elements

The following table contains information about the glossary entry specialization.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|Notes|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|-----|
|`<glossAcronym>`|`<title>`|yes|block|yes||
|`<glossAlt>`|`<section>`|yes|block|yes||
|`<glossBody>`|`<body>`, `<conbody>`|yes|block|yes||
|`<glossdef>`|`<abstract>`|yes|block|yes||
|`<glossentry>`|`<topic>`, `<concept>`|yes|block|yes||
|`<glossSurfaceForm>`|`<p>`|yes|block|yes||
|`<glossSymbol>`|`<image>`|yes|block when `@placement`= break, otherwise inline|yes||
|`<glossSynonym>`|`<title>`|yes|block|yes||
|`<glossterm>`|`<title>`|yes|block|yes||
|`<glossUsage>`|`<note>`|yes|block|yes|`@othertype` can specify translatable content.|

## Glossary group elements

The following table contains information about the glossary group specialization. There are no translatable attributes.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<glossgroup>`|`<topic>`|yes|block|yes|

## Reference elements

The following table contains information about the reference specialization. There are no translatable attributes.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<propdesc>`|`<stentry>`|yes|block|yes|
|`<propdeschd>`|`<stentry>`|yes|block|yes|
|`<properties>`|`<simpletable>`|yes|block|yes|
|`<property>`|`<strow>`|yes|block|yes|
|`<prophead>`|`<sthead>`|yes|block|yes|
|`<proptype>`|`<stentry>`|yes|block|yes|
|`<proptypehd>`|`<stentry>`|yes|block|yes|
|`<propvalue>`|`<stentry>`|yes|block|yes|
|`<propvaluehd>`|`<stentry>`|yes|block|yes|
|`<refbody>`|`<body>`|yes|block|yes|
|`<refbodydiv>`|`<bodydiv>`|yes|block|yes|
|`<reference>`|`<topic>`|yes|block|yes|
|`<refsyn>`|`<section>`|yes|block|yes|

## Task elements

The following table contains information about the task specialization. There are no translatable attributes.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<chdesc>`|`<stentry>`|yes|block|yes|
|`<chdeschd>`|`<stentry>`|yes|block|yes|
|`<chhead>`|`<sthead>`|yes|block|yes|
|`<choice>`|`<li>`|yes|block|yes|
|`<choices>`|`<ul>`|yes|block|yes|
|`<choicetable>`|`<simpletable>`|yes|block|yes|
|`<choption>`|`<stentry>`|yes|block|yes|
|`<choptionhd>`|`<stentry>`|yes|block|yes|
|`<chrow>`|`<strow>`|yes|block|yes|
|`<cmd>`|`<ph>`|no|block|yes|
|`<context>`|`<section>`|yes|block|yes|
|`<info>`|`<div>`|no|block|yes|
|`<postreq>`|`<section>`|yes|block|yes|
|`<prereq>`|`<section>`|yes|block|yes|
|`<result>`|`<section>`|yes|block|yes|
|`<step>`|`<li>`|yes|block|yes|
|`<stepresult>`|`<div>`|no|block|yes|
|`<steps>`|`<ol>`|yes|block|yes|
|`<steps-informal>`|`<section>`|yes|block|yes|
|`<steps-unordered>`|`<ul>`|yes|block|yes|
|`<stepsection>`|`<li>`|yes|block|yes|
|`<steptroubleshooting>`|`<div>`|yes|block|yes|
|`<stepxmp>`|`<div>`|no|block|yes|
|`<task>`|`<topic>`|yes|block|yes|
|`<taskbody>`|`<body>`|yes|block|yes|
|`<tasktroubleshooting>`|`<section>`|yes|block|yes|
|`<tutorialinfo>`|`<div>`|no|block|yes|

## Troubleshooting elements

The following table contains information about the troubleshooting specialization. There are no translatable attributes.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<cause>`|`<section>`|yes|block|yes|
|`<condition>`|`<section>`|yes|block|yes|
|`<remedy>`|`<section>`|yes|block|yes|
|`<responsibleParty>`|`<p>`|yes|block|yes|
|`<troublebody>`|`<body>`|yes|block|yes|
|`<troubleshooting>`|`<topic>`|yes|block|yes|
|`<troubleSolution>`|`<bodydiv>`|yes|block|yes|

## Abbreviated form domain \(abbrev-d\)

The following table contains information about the abbreviated form domain. There are no translatable attributes in this domain.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<abbreviated-form>`|`<term>`|yes|n/a \(empty element\)|n/a \(empty element\)|

## Equation domain \(equation-d\)

The following table contains information about the equation domain. There are no translatable attributes in this domain.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<equation-inline>`|`<ph>`|yes|inline|yes|
|`<equation-block>`|`<div>`|yes|block|yes|
|`<equation-number>`|`<ph>`|yes|inline|yes|
|`<equation-figure>`|`<fig>`|yes|block|yes|

## Glossary reference domain \(glossref-d\)

The following table contains information about the glossary reference domain. There are no translatable attributes in this domain.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<glossref>`|`<topicref>`|yes|block|yes|

## Hardware domain \(hw-d \)

The following table contains information about the hardware domain. There are no translatable attributes in this domain.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<hwcontrol>`|`<ph>`|yes|inline|yes|
|`<partno>`|`<ph>`|yes|inline|yes|

## Markup domain \(markup-d\)

The following table contains information about the markup domain. There are no translatable attributes in this domain.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<markupname>`|`<keyword>`|no|inline|no|

## MathML domain \(mathml-d\)

The following table contains information about the MathML domain. There are no translatable attributes in this domain.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<mathml>`|`<foreign>`|yes|Depends on math content|Follow rules established for MathML standard|
|`<mathmlref>`|`<include>`|yes|n/a \(empty element\)|n/a \(empty element\)|

## Programming domain \(pr-d\)

The following table contains information about the programming domain. There are no translatable attributes in this domain.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<apiname>`|`<keyword>`|yes|inline|yes|
|`<codeblock>`|`<pre>`|yes|block|yes|
|`<codeph>`|`<ph>`|yes|inline|yes|
|`<coderef>`|`<include>`|yes|n/a \(empty element\)|n/a \(empty element\)|
|`<option>`|`<keyword>`|yes|inline|yes|
|`<parml>`|`<dl>`|yes|block|yes|
|`<parmname>`|`<keyword>`|yes|inline|yes|
|`<pd>`|`<dd>`|yes|block|yes|
|`<plentry>`|`<dlentry>`|yes|block|yes|
|`<pt>`|`<dt>`|yes|block|yes|

## Release management domain \(relmgmt-d\)

The following table contains information about the release management domain. There are no translatable attributes in this domain.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<change-historylist>`|`<metadata>`|no|n/a|no|
|`<change-completed>`|`<data>`|yes|n/a|no|
|`<change-item>`|`<data>`|yes|n/a|no|
|`<change-person>`|`<data>`|yes|n/a|no|
|`<change-organization>`|`<data>`|yes|n/a|no|
|`<change-revisionid>`|`<data>`|yes|n/a|no|
|`<change-request-reference>`|`<data>`|yes|n/a|no|
|`<change-request-system>`|`<data>`|yes|n/a|no|
|`<change-request-id>`|`<data>`|yes|n/a|no|
|`<change-started>`|`<data>`|yes|n/a|no|
|`<change-summary>`|`<data>`|yes|n/a|no|

## Software domain \(sw-d\)

The following table contains information about the software domain. There are no translatable attributes in this domain.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<cmdname>`|`<keyword>`|yes|inline|yes|
|`<filepath>`|`<ph>`|yes|inline|yes|
|`<msgblock>`|`<pre>`|yes|block|yes|
|`<msgnum>`|`<keyword>`|yes|inline|yes|
|`<msgph>`|`<ph>`|yes|inline|yes|
|`<systemoutput>`|`<ph>`|yes|inline|yes|
|`<userinput>`|`<ph>`|yes|inline|yes|
|`<varname>`|`<keyword>`|yes|inline|yes|

## SVG domain \(svg-d\)

The following table contains information about the SVG domain. There are no translatable attributes in this domain.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<svg-container>`|`<foreign>`|yes|Depends on SVG content|Follow rules established for SVG standard|
|`<svgref>`|`<include>`|yes|n/a \(empty element\)|n/a \(empty element\)|

## Syntax diagram domain \(syntaxdiagram-d\)

The following table contains information about the syntax diagram domain. There are no translatable attributes in this domain.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<delim>`|`<ph>`|yes|inline|yes|
|`<fragment>`|`<figgroup>`|yes|block|yes|
|`<fragref>`|`<xref>`|yes|inline|yes|
|`<groupchoice>`|`<figgroup>`|yes|block|yes|
|`<groupcomp>`|`<figgroup>`|yes|block|yes|
|`<groupseq>`|`<figgroup>`|yes|block|yes|
|`<kwd>`|`<keyword>`|yes|inline|yes|
|`<oper>`|`<ph>`|yes|inline|yes|
|`<repsep>`|`<ph>`|yes|inline|yes|
|`<sep>`|`<ph>`|yes|inline|yes|
|`<synblk>`|`<figgroup>`|yes|block|yes|
|`<synnote>`|`<fn>`|yes|block|yes|
|`<synnoteref>`|`<xref>`|yes|inline|yes|
|`<synph>`|`<ph>`|yes|inline|yes|
|`<syntaxdiagram>`|`<fig>`|yes|block|yes|
|`<var>`|`<ph>`|yes|inline|yes|

## User interface domain \(ui-d\)

The following table contains information about the user interface domain. There are no translatable attributes in this domain.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<menucascade>`|`<ph>`|yes|inline|yes|
|`<screen>`|`<pre>`|yes|block|yes|
|`<shortcut>`|`<keyword>`|yes|inline|yes|
|`<uicontrol>`|`<ph>`|yes|inline|yes|
|`<wintitle>`|`<keyword>`|yes|inline|yes|

## XML mention domain \(xml-d\)

The following table contains information about the XML mention domain. There are no translatable attributes in this domain.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<numcharref>`|`<keyword>`, `<markupname>`|no|inline|no|
|`<parameterentity>`|`<keyword>`, `<markupname>`|no|inline|no|
|`<textentity>`|`<keyword>`, `<markupname>`|no|inline|no|
|`<xmlatt>`|`<keyword>`, `<markupname>`|no|inline|no|
|`<xmlelement>`|`<keyword>`, `<markupname>`|no|inline|no|
|`<xmlnsname>`|`<keyword>`, `<markupname>`|no|inline|no|
|`<xmlpi>`|`<keyword>`, `<markupname>`|no|inline|no|

