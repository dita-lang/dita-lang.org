---
author: OASIS DITA Technical Committee
---

# Element-by-element recommendations for translators

This topic contains a list of all elements in the base DITA edition. It includes recommendations on how to present the element type to translators, whether the element contents are likely to be suitable for translation, and whether the element has attributes with values that are likely to be suitable for translation. Examples of content that is not suitable for translation include code fragments and mailing addresses.

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

    Specifies whether the element represents a complete translatable segment. The value block indicates that the element is a single segment, while the value inline indicates that the element is part of a larger segment.

-   **Translatable content?**

    Whether the element contains one or both of the following:

    -   Text content that can be translated
    -   Child elements that contain content that can be translated
-   **Notes**

    This column contains any additional information, including the following items.This column only appears in tables when it is needed.

    -   Whether the element has any attributes with values that might need translation
    -   If specializations of the element might need translation,
    -   If the element is a "subflow" element for the purposes of translation

## Topic elements

The following table contains information about elements that are available within topics. Some elements are also available in DITA maps.

<table id="simpletable_body"><thead><tr><th align="left" id="d254081e254">

Element name

</th><th align="left" id="d254081e258">

Block/inline \(translation\)

</th><th align="left" id="d254081e262">

Translatable content?

</th><th align="left" id="d254081e266">

Notes

</th></tr></thead><tbody><tr><td>

`<abstract>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<alt>`

</td><td>

block

</td><td>

yes

</td><td>

This element is considered a[subflow](#subflow) element.

</td></tr><tr><td>

`<audience>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<audio>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<author>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<body>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<bodydiv>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<brand>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<category>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<cite>`

</td><td>

inline

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<colspec>`

</td><td>

n/a \(empty\)

</td><td>

n/a \(empty\)

</td><td>



</td></tr><tr><td>

`<component>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<copyrholder>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<copyright>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<copyryear>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<created>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<critdates>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<data>`

</td><td>

block

</td><td>

no

</td><td>

Specializations of `<data>` might contain translatable content.

</td></tr><tr><td>

`<dd>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<ddhd>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<desc>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<div>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<dl>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<dlentry>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<dlhead>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<draft-comment>`

</td><td>

block

</td><td>

no

</td><td>

This element is considered a[subflow](#subflow) element.

</td></tr><tr><td>

`<dt>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<dthd>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<entry>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<example>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<fallback>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<featnum>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<fig>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<figgroup>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<fn>`

</td><td>

block

</td><td>

yes

</td><td>

This element is considered a[subflow](#subflow) element.

</td></tr><tr><td>

`<foreign>`

</td><td>

block

</td><td>

yes

</td><td>

The block vs. inline designation for the `<foreign>` element is likely to change for some specializations.

The `<foreign>` element might contain DITA elements, such

`<desc>`, `<object>`, and `<image>`, in addition to non-DITA elements. Such elements can contain translatable content; they provide an alternative display if the foreign content cannot be processed.

</td></tr><tr><td>

`<image>`

</td><td>

n/a \(container element\)

</td><td>

yes

</td><td>

The nested `<alt>` element has translatable text, and the referenced image might require translation.

</td></tr><tr><td>

`<include>`

</td><td>

inline

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<index-see>`

</td><td>

block

</td><td>

yes

</td><td>

This element is considered a[subflow](#subflow) element.

</td></tr><tr><td>

`<index-see-also>`

</td><td>

block

</td><td>

yes

</td><td>

This element is considered a[subflow](#subflow) element.

</td></tr><tr><td>

`<indexterm>`

</td><td>

block

</td><td>

yes

</td><td>

This element is considered a[subflow](#subflow) element.

</td></tr><tr><td>

`<keytext>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<keyword>`

</td><td>

inline \(except when within `<keywords>` – see note above the table\)

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<keywords>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<li>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<lines>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<link>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<linkinfo>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<linklist>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<linkpool>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<linktext>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<lq>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<media-source>`

</td><td>

block

</td><td>

n/a

</td><td>



</td></tr><tr><td>

`<media-track>`

</td><td>

block

</td><td>

n/a

</td><td>



</td></tr><tr><td>

`<metadata>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<no-topic-nesting>`

</td><td>

n/a \(empty\)

</td><td>

n/a \(empty\)

</td><td>



</td></tr><tr><td>

`<note>`

</td><td>

block

</td><td>

yes

</td><td>

`@othertype` can specify translatable content.

</td></tr><tr><td>

`<object>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<ol>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<othermeta>`

</td><td>

block

</td><td>

yes

</td><td>

`@content` can specify translatable content.

</td></tr><tr><td>

`<p>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<param>`

</td><td>

block

</td><td>

n/a

</td><td>



</td></tr><tr><td>

`<permissions>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<ph>`

</td><td>

inline

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<platform>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<pre>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<prodinfo>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<prodname>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<prognum>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<prolog>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<publisher>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<q>`

</td><td>

inline

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<related-links>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<required-cleanup>`

</td><td>

block

</td><td>

no

</td><td>

This element is considered a[subflow](#subflow) element.

</td></tr><tr><td>

`<resourceid>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<revised>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<row>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<section>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<series>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<shortdesc>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<simpletable>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<sl>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<sli>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<source>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<stentry>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<sthead>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<strow>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<table>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<tbody>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<term>`

</td><td>

inline

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<text>`

</td><td>

inline

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<tgroup>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<thead>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<title>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<titlealt>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<tm>`

</td><td>

inline

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<topic>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<ul>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<video>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<vrm>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<vrmlist>`

</td><td>

block

</td><td>

yes

</td><td>



</td></tr><tr><td>

`<xref>`

</td><td>

inline

</td><td>

yes

</td><td>



</td></tr></tbody>
</table>## Map elements

The following table contains information about the elements that are defined in the map module.

|Element name|Block/inline \(translation\)|Translatable content?|
|------------|----------------------------|---------------------|
|`<map>`|block|yes|
|`<navref>`|n/a \(empty\)|n/a \(empty\)|
|`<relcell>`|block|yes|
|`<relcolspec>`|block|yes|
|`<relheader>`|block|yes|
|`<relrow>`|block|yes|
|`<reltable>`|block|yes|
|`<shortdesc>`|block|yes|
|`<topicmeta>`|block|yes|
|`<topicref>`|block|yes|
|`<ux-window>`|n/a \(empty\)|n/a \(empty\)|

## Alternative title domain elements \(alternativetitles-d\)

There are no translatable attributes or other special considerations for elements in this domain. With the exception of the `<subtitle>` element, all elements represent metadata.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<linktitle>`|`<titlealt>`|yes|block|yes|
|`<navtitle>`|`<titlealt>`|yes|block|yes|
|`<searchtitle>`|`<titlealt>`|yes|block|yes|
|`<subtitle>`|`<titlealt>`|yes|block|yes|
|`<titlehint>`|`<titlealt>`|yes|block|yes|

## Emphasis domain elements \(emphasis-d\)

There are no translatable attributes or other special considerations for elements in this domain.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<em>`|`<ph>`|yes|inline|yes|
|`<strong>`|`<ph>`|yes|inline|yes|

## Hazard statement domain elements \(hazard-d\)

There are no translatable attributes or other special considerations for elements in this domain.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<consequence>`|`<div>`|yes|block|yes|
|`<hazardstatement>`|`<note>`|yes|block|yes|
|`<hazardsymbol>`|`<image>`|yes|n/a \(container element\)|yes|
|`<howtoavoid>`|`<div>`|yes|block|yes|
|`<messagepanel>`|`<div>`|yes|block|yes|
|`<typeofhazard>`|`<div>`|yes|block|yes|

## Highlight domain elements \(hi-d\)

There are no translatable attributes or other special considerations for elements in this domain.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<b>`|`<ph>`|yes|inline|yes|
|`<line-through>`|`<ph>`|yes|inline|yes|
|`<i>`|`<ph>`|yes|inline|yes|
|`<overline>`|`<ph>`|yes|inline|yes|
|`<sub>`|`<ph>`|yes|inline|yes|
|`<sup>`|`<ph>`|yes|inline|yes|
|`<tt>`|`<ph>`|yes|inline|yes|
|`<u>`|`<ph>`|yes|inline|yes|

## Utilities domain elements \(ut-d\)

There are no translatable attributes for elements in this domain.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|Notes|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|-----|
|`<area>`|`<figgroup>`|yes|block|yes||
|`<coords>`|`<ph>`|no|inline|no||
|`<imagemap>`|`<fig>`|yes|block|yes|This element can contain translatable alternate text.|
|`<shape>`|`<keyword>`|no|inline|no||
|`<sort-as>`|`<data>`|no|block|yes|This element is considered a[subflow](#subflow) element.|

## DITAVALref domain elements \(ditavalref-d\)

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<ditavalmeta>`|`<topicmeta>`|yes|block|yes|
|`<ditavalref>`|`<topicref>`|yes|block|yes|
|`<dvrKeyscopePrefix>`|`<data>`|yes|block|no|
|`<dvrKeyscopeSuffix>`|`<data>`|yes|block|no|
|`<dvrResourcePrefix>`|`<data>`|yes|block|no|
|`<dvrResourceSuffix>`|`<data>`|yes|block|no|

## Map group domain elements \(mapgroup-d\)

There are no translatable attributes or other special considerations for elements in this domain.

|Element name|Specialization base|Same behavior as specialization base?|Block/inline \(translation\)|Translatable content?|
|------------|-------------------|-------------------------------------|----------------------------|---------------------|
|`<keydef>`|`<topicref>`|yes|block|yes|
|`<mapref>`|`<topicref>`|yes|block|yes|
|`<mapresources>`|`<topicref>`|yes|block|yes|
|`<topicgroup>`|`<topicref>`|yes|block|yes|
|`<topichead>`|`<topicref>`|yes|block|yes|

## DITAVAL elements

There are no translatable attributes in the DITAVAL element set. The only element that directly contains translatable text is `<alt-text>`.

|Element name|Block/inline \(translation\)|Translatable content?|
|------------|----------------------------|---------------------|
|`<alt-text>`|block|yes|
|`<endflag>`|block|yes|
|`<prop>`|block|yes|
|`<revprop>`|block|yes|
|`<startflag>`|block|yes|
|`<style-conflict>`|n/a \(empty\)|n/a \(empty\)|
|`<val>`|block|yes|

