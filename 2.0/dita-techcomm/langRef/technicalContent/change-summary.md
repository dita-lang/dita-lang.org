---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# `<change-summary>`

The `<change-summary>` element includes a brief description of the change.

## Usage information

The `<change-summary>` element contains the portion of the release note that might appear in a document.

## Specialization hierarchy

The `<change-summary>` element is specialized from `<data>`. It is defined in the release-management domain module.

## Content model

\(Text \| `<audio>` \| `<cite>` \| `<include>` \| `<keyword>` \| `<ph>` \| `<q>` \| `<term>` \| `<text>` \| `<tm>` \| `<xref>` \| `<data>` \| `<draft-comment>` \| `<foreign>` \| `<image>` \| `<object>` \| `<required-cleanup>` \| `<title>` \| `<video>`\)\*

Contained by

[`<change-item>`](../content-models/../technicalContent/change-item.md)

Zero or more of the following

-   Text
-   `<audio>`
-   `<cite>`
-   `<data>`
-   `<draft-comment>`
-   `<foreign>`
-   `<image>`
-   `<include>`
-   `<keyword>`
-   `<object>`
-   `<ph>`
-   `<q>`
-   `<required-cleanup>`
-   `<term>`
-   `<text>`
-   `<title>`
-   `<tm>`
-   `<video>`
-   `<xref>`

Contained by

-   [`<change-item>`](../content-models/../technicalContent/change-item.md)

## Inheritance

+ topic/data relmgmt-d/change-summary

The `<change-summary>` element is specialized from `<data>`. It is defined in the relmgmt-domain module.

## Attributes

The following attributes are available on this element: [universal attributes](../../baseSpec/specification/common/../langRef/attributes/universalAttributes.md) and [`@name`](../../baseSpec/specification/common/../langRef/attributes/commonAttributes.md#attr-name).

The following attributes are available on this element: [universal attributes](../../baseSpec/specification/common/../langRef/attributes/universalAttributes.md) and the attributes defined below.

-   **`@name` \(data-element attributes\)**

    Defines a unique name for the object.

    **Draft comment:**robander   
    Do we need to specify the scope of "unique" here?

    **Draft comment:**robander   
    TO RESOLVE 13 May 2026: ha, it often won't be unique because you often use the same name for all instances of a specific type of metadata. Maybe we just get rid of "unique"


## Example

The following code sample shows how the `<change-summary>` element can be used to provide a brief description of a change:

```
<change-historylist>
  <change-item product="productA">
    <change-person>Tom Cihak</change-person>
    <change-completed>2019-06-07</change-completed>
    **&lt;change-summary&gt;Made change 2 to product A&lt;/change-summary&gt;**
    <data>Details of change 2</data>
  </change-item>
</change-historylist>
```

**Parent topic:**[Release management domain](../../langRef/containers/Release-management-domain-elements.md)

