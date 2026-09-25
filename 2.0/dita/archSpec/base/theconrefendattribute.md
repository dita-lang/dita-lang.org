---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Reusing a range of elements

The `@conrefend` attribute is used in a conref range. A `@conref` or `@conkeyref` attribute references the first element in the range, while `@conrefend` references the last element in the range.

## Using `@conref` together with `@conrefend`

The following markup rules apply when using or implementing `@conrefend`:

-   The start and end elements of a range MUST be of the same type as the referencing element or generalizable to the referencing element.
-   The start and end elements in a range MUST share the same parent, and the start element MUST precede the end element in document order.
-   The parent of the referencing element MUST be the same type as the parent of the referenced range or generalizable to the parent of the referencing element.

In addition, several other items must be taken into account:

-   Processors will resolve the range by pulling in the starting referenced element and following sibling XML nodes up to and including the ending referenced element.
-   As with `@conref`, if the `@conrefend` attribute references a more specialized version of the referencing element, applications can generalize the target when resolving.
-   As with `@conref`, it is not valid to use `@conrefend` to reference a more general version of an element \(such as using `<step>` to reference an `<li>` element\).
-   Other nodes \(such as elements or text\) between the start and end of a range do not have to match the referencing element.
-   With single conref, an `@id` attribute from the referenced element will not be preserved on the resolved content. With a range, an `@id` on both the start and the end elements will not be preserved. `@id` attributes on intermediate or child nodes should be preserved; if this results in duplicate `@id` values, an application can recover by changing the `@id`, warning the user, or implementing another strategy.
-   With a single conref, attributes specified on the referencing element can be used to override attributes on the referenced element. With a conref range, the same is true, with the following clarifications:
    -   When an `@id` attribute is specified on the referencing element, it will only be preserved on the first element of the resolved range.
    -   When other attributes are specified, they will only apply to referenced elements of the same type. For example, if `<step>` is used to pull in a range of sequential `<step>` elements, locally specified attributes apply to all steps in the range. If `<ol>` is used to pull in a series of \(`<ol>`, `<p>`, `<ol>`\), locally specified attributes apply only to the `<ol>` elements in that range.

## Using `@conrefend` together with `@conkeyref`

When the `@conkeyref` attribute is used in place of `@conref`, a key is used to address the target of the reference. The `@conrefend` attribute, which indicates the end of a `@conref` range, cannot use a key. Instead the map or topic element addressed by the key name component of the `@conkeyref` is used in place of whatever map or topic element is addressed by the `@conrefend` attribute.

For example, if the value of the `@conkeyref` attribute is config/step1 and the value of the `@conrefend` is defaultconfig.dita\#config/laststep, the conref range will end with the step that has `id="laststep"` in whatever topic is addressed by the key name config. If the key name config is not defined, and the `@conref` attribute itself is not present for fallback, the `@conrefend` attribute is ignored.

**Parent topic:**[Content reference \(conref\)](../../archSpec/base/conref.md)

