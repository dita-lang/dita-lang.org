---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# `<change-person>`

The `<change-person>` element specifies the name of the person who made the change.

## Specialization hierarchy

The `<change-person>` element is specialized from `<data>`. It is defined in the release-management domain module.

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

+ topic/data relmgmt-d/change-person

The `<change-person>` element is specialized from `<data>`. It is defined in the relmgmt-domain module.

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

The following code sample shows how the `<change-person>` element can be used to specify who made the change:

```
<change-historylist>
    <change-item product="productA productB">
      **&lt;change-person&gt;Tom Cihak&lt;/change-person&gt;**
      <change-organization>JEDEC</change-organization>
      <change-started>2019-01-15</change-started>
      <change-completed>2019-03-23</change-completed>
      <change-summary>Made change 1 to both products</change-summary>
      <data>Details of change 1</data>
    </change-item>
  </change-historylist>
```

**Parent topic:**[Release management domain](../../langRef/containers/Release-management-domain-elements.md)

