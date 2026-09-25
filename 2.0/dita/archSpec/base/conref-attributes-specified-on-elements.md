---
author: OASIS DITA Technical Committee
---

# Processing attributes when resolving conrefs

When resolving conrefs, processors need to combine the attributes that are specified on the referencing and referenced element.

The attribute specifications on the resolved element are drawn from both the referencing element and the referenced element, according to the following priority:

1.  All attributes as specified on the referencing element, except for attributes set to "-dita-use-conref-target".
2.  All attributes as specified on the referenced element except the `@id` attribute.
3.  The `@xml:lang` attribute has special treatment as described in [The xml:lang attribute](xmllang.md).

The token -dita-use-conref-target is defined by the specification to enable easier use of `@conref` on elements with required attributes. The only time the resolved element would include an attribute whose specified value is "-dita-use-conref-target" is when the referenced element had that attribute specified with the "-dita-use-conref-target" value and the referencing element either had no specification for that attribute or had it also specified with the "-dita-use-conref-target" value.

If the final resolved element \(after the complete resolution of any conref chain\) has an attribute with the "-dita-use-conref-target" value, that element MUST be treated as equivalent to having that attribute unspecified.

A given attribute value on the resolved element comes in its entirety from either the referencing element or the referenced element. The attribute values of the referencing and referenced elements for a given attribute are never additive, even if the property \(such as `@audience`\) takes a list of values.

If the referenced element has a content referencing attribute specified, the above rules MUST be applied recursively with the resolved element from one referencing/referenced combination becoming one of the two elements participating in the next referencing/referenced combination. The result should preserve without generalization all elements that are valid in the originating context, even if they are not valid in an intermediate context.

exampleFor example, if topic A and topic C allow highlighting, and topic B does not, then a content reference chain of topic A-to-topic B-to-topic C should preserve any highlighting elements in the referenced content. The result, however it is achieved, is equivalent to the result of resolving the conref pairs recursively starting from the original referencing element in topic A.

-   **[Using the -dita-use-conref-target value](../../archSpec/base/ditauseconreftarget.md)**  
When an element uses `@conref` to pull in content, for any of its attributes assigned a value of -dita-use-conref-target, the resulting value for those attributes is also pulled in from the referenced element.

**Parent topic:**[Content reference \(conref\)](../../archSpec/base/conref.md)

**Related information**  


[Using the -dita-use-conref-target value](../../archSpec/base/ditauseconreftarget.md)

[Example: Using the -dita-use-conref-target value](../../archSpec/base/example-conref-ditauseconreftarget.md)

