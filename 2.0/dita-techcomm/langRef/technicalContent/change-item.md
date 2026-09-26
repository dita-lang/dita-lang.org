---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# `<change-item>`

The `<change-item>` element represents a record of a change to a DITA topic or map.

## Specialization hierarchy

The `<change-item>` element is specialized from `<data>`. It is defined in the release-management domain module.

## Content model

\([`<change-person>`](../content-models/../technicalContent/change-person.md) \| [`<change-organization>`](../content-models/../technicalContent/change-organization.md)\)\*, [`<change-revisionid>`](../content-models/../technicalContent/change-revisionid.md)?, [`<change-request-reference>`](../content-models/../technicalContent/change-request-reference.md)?, [`<change-started>`](../content-models/../technicalContent/change-started.md)?, [`<change-completed>`](../content-models/../technicalContent/change-completed.md), [`<change-summary>`](../content-models/../technicalContent/change-summary.md)\*, `<data>`\*

Contained by

[`<change-historylist>`](../content-models/../technicalContent/change-historylist.md)

In order

1.  Zero or more of the following
    -   [`<change-organization>`](../content-models/../technicalContent/change-organization.md)
    -   [`<change-person>`](../content-models/../technicalContent/change-person.md)
2.  Optional [`<change-revisionid>`](../content-models/../technicalContent/change-revisionid.md)
3.  Optional [`<change-request-reference>`](../content-models/../technicalContent/change-request-reference.md)
4.  Optional [`<change-started>`](../content-models/../technicalContent/change-started.md)
5.  [`<change-completed>`](../content-models/../technicalContent/change-completed.md)
6.  Zero or more [`<change-summary>`](../content-models/../technicalContent/change-summary.md)
7.  Zero or more `<data>`

Contained by

-   [`<change-historylist>`](../content-models/../technicalContent/change-historylist.md)

## Inheritance

+ topic/data relmgmt-d/change-item

The `<change-item>` element is specialized from `<data>`. It is defined in the relmgmt-domain module.

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

The following code sample shows how the `<change-item>` element can be used to detail a change. This example includes two changes, one that is applicable to products A and B and one that is applicable to only product A.

```
<change-historylist>
  **&lt;change-item product="productA productB"&gt;**
    <change-person>Tom Cihak</change-person>
    <change-organization>JEDEC</change-organization>
    <change-started>2019-01-15</change-started>
    <change-completed>2019-03-23</change-completed>
    <change-summary>Made change 1 to both products</change-summary>
    <data>Details of change 1</data>
  **&lt;/change-item&gt;**
  **&lt;change-item product="productA"&gt;**
    <change-person>Tom Cihak</change-person>
    <change-completed>2019-06-07</change-completed>
    <change-summary>Made change 2 to product A</change-summary>
    <data>Details of change 2</data>
  **&lt;/change-item&gt;**
</change-historylist>
```

**Parent topic:**[Release management domain](../../langRef/containers/Release-management-domain-elements.md)

