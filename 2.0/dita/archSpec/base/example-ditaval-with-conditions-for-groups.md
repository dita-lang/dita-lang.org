---
author: OASIS DITA Technical Committee
---

# Example: DITAVAL with conditions for groups

In this advanced scenario, grouped values are used for filtering within a conditional processing attribute.

## Example

```
<val>
   <prop action="exclude" att="product" val="appServer"/>
   <prop action="include" att="product" val="mySERVER"/>
   <prop action="include" att="database" val="dbFIRST"/>
   <prop action="include" att="database" val="dbSECOND"/>
   <prop action="exclude" att="database" val="newDB"/>
</val>
```

Assume that "database" and "appServer" are used as group names within the `@product` attribute. In that case, the sample DITAVAL above performs the following actions:

-   The first `<prop>` element excludes the value "appServer" when used within the `@product` attribute. It also sets a default of "exclude" for values within any appServer\(\) group inside of the `@product` attribute.
-   The second `<prop>` element sets "mySERVER" to include; this applies whether "mySERVER" appears alone in the `@product` attribute \(`product="mySERVER"`\) or inside of any group \(`product="appServer(mySERVER)"` or `product="otherGroup(mySERVER)"`\).
-   The third and fourth `<prop>` elements set the database values "dbFIRST" and "dbSECOND" to include. If those values appear inside of a "database" group, they are explicitly set to "include". If they appear elsewhere in a conditional attribute \(such as `product="dbFIRST"` or `platform="dbSECOND"`\), this rule does not apply.
-   The final `<prop>` element sets the database value "newDB" to exclude. If that value appears inside of a database group, it is explicitly set to "exclude". If it appears in any other group or attribute, this rule does not apply.

Remember that with groups, if all values inside of a single group evaluate to "exclude", that is equivalent to an entire attribute evaluating to "exclude", which results in the removal of the content. Using the above sample DITAVAL:

-   `<p product="appServer">` is filtered out, because this value is excluded.
-   `<p product="appServer(A B)">` is filtered out, because there is no explicit rule for A or B, and values in the "appServer" group inside of `@product` default to exclude.
-   `<p product="appServer(A B mySERVER)">` is included, because `product="mySERVER"` evaluates to "include", which means the entire group evaluates to "include".
-   `<p product="newDB">` is included, because no rule in the DITAVAL applies, so the "newDB" token defaults to "include".
-   `<p product="database(newDB)">` is filtered out, because the token "newDB" is excluded when found in the database group.
-   `<p product="database(dbFIRST dbSECOND newDB)">` is included, because both "dbFIRST" and "dbSECOND" are included, so the group evaluates to include.
-   `<p product="database(newDB) appServer(mySERVER)">` is filtered out, because the token "newDB" is excluded when found in the database group. The entire "database" group on this paragraph evaluates to "exclude", so the element is excluded, regardless of how the "appServer" group evaluates.

**Note:** If two groups with the same name exist on different attributes, each group will evaluate the same way. For example, rules for the database group in this sample would evaluate the same whether the group is used within `@product` or `@platform`. See [Conditional processing](condproc.md) for suggestions on how to handle similar groups on different attributes.

**Parent topic:**[Examples of conditional processing](../../archSpec/base/examples-of-conditional-processing.md)

