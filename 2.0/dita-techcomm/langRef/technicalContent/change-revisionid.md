---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# `<change-revisionid>`

The `<change-revisionid>` element specifies a string to identify the change.

## Specialization hierarchy

The `<change-revisionid>` element is specialized from `<data>`. It is defined in the release-management domain module.

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

+ topic/data relmgmt-d/change-revisionid

The `<change-revisionid>` element is specialized from `<data>`. It is defined in the relmgmt-domain module.

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

The following code sample shows how the `<change-revisionid>` element can be used to identify a particular change. In this example, change revision ID is used to note the release number for which the change is applicable.

```
<change-historylist>
  <change-item product="productA productB">
    <change-person>Tom Cihak</change-person>
    **&lt;change-revisionid&gt;r23.4&lt;/change-revisionid&gt;**
    <change-completed>2019-07-20</change-completed>
    <change-summary>Made change 3 to both products</change-summary>
    <data>Details of change 3</data>
  </change-item>
</change-historylist>
```

**Parent topic:**[Release management domain](../../langRef/containers/Release-management-domain-elements.md)

