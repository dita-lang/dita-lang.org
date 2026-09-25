---
author: OASIS DITA Technical Committee
---

# Example: Filtering based on groups

In this scenario, groups are used for filtering within a conditional processing attribute.

The following code sample illustrates a list item that applies to two different types of product. It applies to one application server and two database applications:

```
<ol>
  <li>Common step</li>
  <li product="appServer(mySERVER) database(dbOne dbOther)">
    <ph>Do something special for databases dbOne or dbOther when installing on mySERVER</ph>
  </li>
  <!-- additional list items -->
</ol>
```

If a publisher decides to exclude the application server mySERVER, then the `appServer()` group evaluates to exclude. This can be done by setting `product="mySERVER"` to exclude *or* by setting `appServer="mySERVER"` to exclude. This means the item is excluded, regardless of how the values dbOne or dbOther evaluate. If a rule is specified for both `product="mySERVER"` and `appServer="mySERVER"`, the rule for the more specific group name "appServer" takes precedence.

Similarly, if both dbOne and dbOther evaluate to exclude, then the `database()` group evaluates to exclude and the element is excluded regardless of how the "mySERVER" value is set.

In more advanced usage, a DITAVAL can be used to specify a rule for a group name. For example, an author could create a DITAVAL rule that sets `product="database"` to "exclude". This is equivalent to setting a default of "exclude" for any individual value in a `database()` group; it also excludes the more common usage of "database" as a single value within the `@product` attribute. Thus when "myDB" appears in a `database()` group within the `@product` attribute, the full precedence for determining whether to include or exclude the value is as follows:

1.  Check for a DITAVAL rule for `database="dbOne"`
2.  Check for a DITAVAL rule for `product="dbOne"`
3.  Check for a DITAVAL rule for `product="database"` \(default for the database group\)
4.  Check for a DITAVAL rule for "product" \(default for the `@product` attribute\)
5.  Check for a default rule for all conditions \(default of include or exclude for all attributes\)
6.  Otherwise, evaluate to "include"

**Parent topic:**[Examples of conditional processing](../../archSpec/base/examples-of-conditional-processing.md)

