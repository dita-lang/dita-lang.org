---
author: OASIS DITA Technical Committee
---

# Conditional processing attribute values with groups

For more advanced needs, groups can be used to organize metadata into subcategories within a conditional processing attribute.

Grouped values are intended to support situations where a metadata attribute applies to multiple specialized subcategories. exampleFor example, if content is classified into two distinct types of product, those distinct types can become named groups within the `@product` attribute. The grouping syntax exactly matches the syntax used for generalized attributes, making it valid inside `@props` and any attribute specialized from `@props`, including those integrated by default in the OASIS-provided document-type shells: `@audience`, `@deliveryTarget`, `@platform`, `@product`, `@otherprops`.

The following rules apply to groups within conditional processing attributes:

-   Groups consist of a name immediately followed by a parenthetical group of zero or more space-delimited string values. For example, `"groupName(valueOne valueTwo)"`.
-   Groups cannot be nested.
-   If two groups with the same name are found in a single attribute, they are treated as if all values are specified in the same group. The following values for the `@otherprops` attribute are equivalent:

    ```
    otherprops="groupA(a b) groupA(c) groupZ(APPNAME)"
    otherprops="groupA(a b c) groupZ(APPNAME)"
    ```

-   If both grouped values and ungrouped values are found in a single attribute, the ungrouped values belong to an implicit group; the name of that group matches the name of the attribute. Therefore, the following values for the `@product` attribute are equivalent:

    ```
    product="a database(dbA dbB) b appserver(mySERVER) c"
    product="product(a b c) database(dbA dbB) appserver(mySERVER)"
    ```


An empty group within an attribute is equivalent to omitting that group from the attribute. For example, `<ph product="database() A">` is equivalent to `<ph product="A">`. Similarly, `<ph product="operatingSystem()">` is equivalent to `<ph product="">`, which in turn is equivalent to `<ph>`.

If two groups with the same name exist on different attributes, a rule specified for that group will evaluate the same way on each attribute. For example, if the group "sample" is specified within both `@platform` and `@otherprops`, a DITAVAL rule for `sample="value"` will evaluate the same in each attribute. If there is a need to distinguish between similarly named groups on different attributes, the best practice is to use more specific group names such as *platformGroupname* and *productGroupname*. Alternatively, DITAVAL rules can be specified based on the attribute name rather than the group name.

If the same group name is used in different attributes, a complex scenario could be created where different defaults are specified for different attributes, with no rule set for a group or individual value. In this case a value might end up evaluating differently in the different attributes. For example, a DITAVAL can set a default of "exclude" for `@platform` and a default of "flag" for `@product`. If no rules are specified for group `oddgroup()`, or for the value `oddgroup="edgecase"`, the attribute `platform="oddgroup(edgecase)"` will evaluate to "exclude" while `product="oddgroup(edgecase)"` will resolve to "flag". See [DITAVAL elements](../../langRef/containers/ditaval-elements.md) for information on how to change default behaviors in DITAVAL profile.

**Parent topic:**[Conditional processing](../../archSpec/base/condproc.md)

