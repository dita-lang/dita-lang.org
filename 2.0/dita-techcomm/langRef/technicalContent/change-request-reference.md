---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# `<change-request-reference>`

The `<change-request-reference>` element contains details about the change request, such as an ID or a reference to the system used to track the request.

## Specialization hierarchy

The `<change-request-reference>` element is specialized from `<metadata>`. It is defined in the release-management domain module.

## Content model

[`<change-request-system>`](../content-models/../technicalContent/change-request-system.md)?, [`<change-request-id>`](../content-models/../technicalContent/change-request-id.md)?

Contained by

[`<change-item>`](../content-models/../technicalContent/change-item.md)

In order

1.  Optional [`<change-request-system>`](../content-models/../technicalContent/change-request-system.md)
2.  Optional [`<change-request-id>`](../content-models/../technicalContent/change-request-id.md)

Contained by

-   [`<change-item>`](../content-models/../technicalContent/change-item.md)

## Inheritance

+ topic/data relmgmt-d/change-request-reference

The `<change-request-reference>` element is specialized from `<data>`. It is defined in the relmgmt-domain module.

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

The following code sample shows how the `<change-request-reference>` element can be used to specify the ticketing system used to manage the change request as well as the applicable ticket ID:

```
<change-historylist>
    <change-item product="productA productB">
      **&lt;change-request-reference&gt;**
        <change-request-system>example.com/my/queue/</change-request-system>
        <change-request-id>TCKT-1313</change-request-id>
      **&lt;/change-request-reference&gt;**
      <change-completed>2025-10-31</change-completed>
    </change-item>
  </change-historylist>
```

**Parent topic:**[Release management domain](../../langRef/containers/Release-management-domain-elements.md)

