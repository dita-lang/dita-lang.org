---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# `<change-request-system>`

The `<change-request-system>` element specifies the name of an information system that manages or serves the referenced change request, for example, an issue tracking system.

## Specialization hierarchy

The `<change-request-system>` element is specialized from `<data>`. It is defined in the release-management domain module.

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

+ topic/data relmgmt-d/change-request-system

The `<change-request-system>` element is specialized from `<data>`. It is defined in the relmgmt-domain module.

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

The following code sample shows how the `<change-request-system>` element can be used to specify the the ticketing system that manages the change request:

```
<change-historylist>
    <change-item product="productA productB">
      <change-request-reference>
        **&lt;change-request-system&gt;example.com/my/queue/&lt;/change-request-system&gt;**
        <change-request-id>TCKT-1313</change-request-id>
      </change-request-reference>
      <change-completed>2026-03-19</change-completed>
    </change-item>
  </change-historylist>
```

**Parent topic:**[Release management domain](../../langRef/containers/Release-management-domain-elements.md)

