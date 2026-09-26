---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# `<change-request-id>`

The `<change-request-id>` element specifies an identifier associated with the change request, such as an issue ID or ticket number.

## Specialization hierarchy

The `<change-request-id>` element is specialized from `<data>`. It is defined in the release-management domain module.

## Content model

\(Text \| `<audio>` \| `<cite>` \| `<include>` \| `<keyword>` \| `<ph>` \| `<q>` \| `<term>` \| `<text>` \| `<tm>` \| `<xref>` \| `<data>` \| `<draft-comment>` \| `<foreign>` \| `<image>` \| `<object>` \| `<required-cleanup>` \| `<title>` \| `<video>`\)\*

Contained by

[`<change-request-reference>`](../content-models/../technicalContent/change-request-reference.md)

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

-   [`<change-request-reference>`](../content-models/../technicalContent/change-request-reference.md)

## Inheritance

+ topic/data relmgmt-d/change-request-id

The `<change-request-id>` element is specialized from `<data>`. It is defined in the relmgmt-domain module.

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

The following code sample shows how the `<change-request-id>` element can be used to specify a ticket ID that is applicable to the change request:

```
<change-historylist>
  <change-item product="productA productB">
    <change-request-reference>
      <change-request-system>example.com/my/queue/</change-request-system>
      **&lt;change-request-id&gt;TCKT-1313&lt;/change-request-id&gt;**
    </change-request-reference>
    <change-completed>2026-03-19</change-completed>
  </change-item>
</change-historylist>
```

**Parent topic:**[Release management domain](../../langRef/containers/Release-management-domain-elements.md)

