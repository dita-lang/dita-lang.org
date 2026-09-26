---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# `<change-completed>`

The `<change-completed>` element specifies the date on which the change was completed.

## Usage information

The recommended best practice is to use date strings that conform to the ISO 8601 standard, unless an epoch timestamp is used. The string might contain a date and time \(for example, `2017-04-05T12:30-02:00`\) or just a date \(for example, `2019-03-04`\).

## Specialization hierarchy

The `<change-completed>` element is specialized from `<data>`. It is defined in the release-management domain module.

## Content model

\(Text \| `<text>`\)\*

Contained by

[`<change-item>`](../content-models/../technicalContent/change-item.md)

Zero or more of the following

-   Text
-   `<text>`

Contained by

-   [`<change-item>`](../content-models/../technicalContent/change-item.md)

## Inheritance

+ topic/data relmgmt-d/change-completed

The `<change-completed>` element is specialized from `<data>`. It is defined in the relmgmt-domain module.

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

The following code sample shows how the `<change-completed>` element can be used to note when the change was completed:

```
<change-historylist>
  <change-item product="productA productB">
    <change-person>Tom Cihak</change-person>
    <change-organization>JEDEC</change-organization>
    <change-started>2019-01-15</change-started>
    **&lt;change-completed&gt;2019-03-23&lt;/change-completed&gt;**
    <change-summary>Made change 1 to both products</change-summary>
    <data>Details of change 1</data>
  </change-item>
</change-historylist>
```

**Parent topic:**[Release management domain](../../langRef/containers/Release-management-domain-elements.md)

