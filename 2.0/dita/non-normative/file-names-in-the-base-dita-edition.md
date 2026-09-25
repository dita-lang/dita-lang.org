---
author: OASIS DITA Technical Committee
---

# File names in the base DITA edition

The OASIS DITA Technical Committee uses certain conventions for the names of XML grammar files. We suggest using these conventions as a way to facilitate the interchange of grammar files.

## DTD-based specialization modules

The DITA Technical Committee uses certain file-naming conventions for DTD-based specialization modules. While the grammar files shipped with DITA 2.0 do not include domain constraint or expansion modules, we suggest conventions for those modules also.

<table><thead><tr><th align="left" id="d267447e39">

Module type

</th><th align="left" id="d267447e43">

File name

</th><th align="left" id="d267447e47">

Example

</th></tr></thead><tbody><tr><td>

Structural

</td><td>

`*moduleName*.mod`

</td><td>

`topic.mod`

</td></tr><tr><td>

Element domain

</td><td>

`*domainName*Domain.*ext*`

</td><td>

-   `highlightDomain.ent`
-   `highlightDomain.mod`

</td></tr><tr><td>

Attribute domain

</td><td>

`*attriName*AttDomain.ent`

</td><td>

`deliveryTargetAttDomain.ent`

</td></tr><tr><td>

Constraint

</td><td>

`*qualifier**Target*Constraint.mod`

</td><td>

-   `strictTaskbodyConstraint.mod`
-   `acmeHighlightDomainConstraint.mod`

</td></tr><tr><td>

Expansion

</td><td>



</td><td>

-   `acme-SectionExpansion.mod`
-   `acme-CellPurposeAttExpansion.ent`
-   `acme-otherpropsAttExpansion.mod`
-   `example-dlentryModeAttExpansion.ent`

</td></tr></tbody>
</table>**Draft comment:**Kristen J Eberlein 19 September 2022  


The names of the expansion modules listed in the "Example" column are taken from the example topics. They do not follow a consistent pattern. I suspect that the same is true for file names used in the constraint example topics.

**Draft comment:**robander   
TO RESOLVE 13 May 2026: These rules are no longer mandatory and should not be mandatory, so we should just pick one pattern \(ideally matching our existing task constraint\) and use that in all the constraint/expansion module pattern recommendations

where:

-   *moduleName* is the name of the element type, such as "topic" or "map".
-   *domainName* is the short name of the domain, for example, "highlight" or "utilities".
-   *attrName* is the name of the specialized attribute, for example, "deliveryTarget".
-   *ext* is the file extension, for example, "ent" or "mod".
-   *qualifier* is a string that is specific to the constraints module and characterizes it, for example, "strict" or "requiredTitle" or "myCompany-".
-   *Target* is the target of the constraint with an initial capital, for example, "Topic" or "HighlightDomain".

## RELAX NG-based specialization modules

The DITA Technical Committee uses certain file-naming conventions for RNG-based specialization modules. While the grammar files shipped with DITA 2.0 do not include domain constraint or expansion modules, we suggest conventions for those modules also.

<table><thead><tr><th align="left" id="d267447e265">

Module type

</th><th align="left" id="d267447e269">

File name

</th><th align="left" id="d267447e273">

Example

</th></tr></thead><tbody><tr><td>

Structural

</td><td>

`*moduleName*Mod.*rng*`

</td><td>

`conceptMod.rng`

</td></tr><tr><td>

Element domain

</td><td>

`*domainName*DomainMod.rng`

</td><td>

`highlightDomainMod.rng`

</td></tr><tr><td>

Attribute domain

</td><td>

`*attrName*AttDomain.rng`

</td><td>

`deliveryTargetAttDomain.rng`

</td></tr><tr><td>

Constraint

</td><td>

`*qualifier**Target*ConstraintMod.rng`

</td><td>

-   `strictTaskbodyConstraintMod.rng`
-   `acmeHighlightDomainConstraintMod.rng`

</td></tr><tr><td>

Expansion

</td><td>



</td><td>

-   `sectionExpansionMod.rng`
-   `cellPurposeAtt.rng`
-   `acme-otherpropsAttExpansion.rng`
-   `tableCellAttExpansion.rng`

</td></tr></tbody>
</table>**Draft comment:**Kristen J Eberlein 19 September 2022  


The names of the expansion modules listed in the "Example" column are taken from the example topics. They do not follow a consistent pattern. I suspect that the same is true for file names used in the constraint example topics.

Also, is including "Mod" in element-domain or constraint files something we really want to do, or was it necessary for the RNG-to-DITA/XSD converter?

**Draft comment:**robander   
TO RESOLVE 13 May 2026: See comment in earlier draft comment. Also, "Mod" definitely isn't required in the name but is probably good to recommend for consistency, all the other content-model modules use it.

where:

-   *moduleName* is the name of the element type, such as "topic" or "map".
-   *domainName* is the short name of the domain, for example, "highlight" or "utilities".
-   *attrName* is the name of the specialized attribute, for example, "deliveryTarget".
-   *qualifier* is a string that is specific to the constraints module and characterizes it, for example, "strict" or "requiredTitle" or "myCompany-".
-   *Target* is the target of the constraint with an initial capital, for example, "Topic" or "HighlightDomain".

**Parent topic:**[OASIS grammar files](../non-normative/basedoctypes.md)

