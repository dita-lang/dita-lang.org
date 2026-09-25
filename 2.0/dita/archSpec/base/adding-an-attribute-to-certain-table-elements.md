---
author: OASIS DITA Technical Committee
---

# Example: Adding an attribute to certain table elements using DTDs

In this scenario, a company makes extensive use of complex tables to present product listings. They occasionally highlight individual cells, rows, or columns for various purposes. The DITA architect wants to implement a semantically meaningful way to identify the purpose of various table elements.

The DITA architect decides to create a new attribute \(`@cellPurpose`\) and add it to the attribute lists of the following elements:

-   `<colspec>`
-   `<entry>`
-   `<row>`
-   `<stentry>`
-   `<strow>`

The new attribute will be specialized from `@base`, and it will take a small set of tokens as values.

The DITA architect decides to integrate the attribute declaration and its assignment to elements into a single expansion module. An alternate approach would be to put each attribute-list pattern in its own separate expansion module, thus allowing DITA architects who construct document-type shells to decide the elements to which to apply the attribute.

1.  First, the DITA architect creates the expansion module for the `@cellPurpose` attribute: `acme-cellPurposeAttExpansion.ent`.

    ```
    <!-- Define the attribute -->
    <!ENTITY % cellPurposeAtt-d-attribute-expansion
      "cellPurpose  (sale | out-of-stock | new | last-chance | inherit | none)  #IMPLIED"
    >
    
    <!-- Declare the entity to be used in the @specializations attribute -->
    <!ENTITY cellPurposeAtt-d-att "@base/cellPurpose" >
    
    <!-- Add the attribute to the elements. -->
    <!ATTLIST entry %cellPurposeAtt-d-attribute-expansion;>
    <!ATTLIST row %cellPurposeAtt-d-attribute-expansion;>
    <!ATTLIST colspec %cellPurposeAtt-d-attribute-expansion;>
    <!ATTLIST strow %cellPurposeAtt-d-attribute-expansion;>
    <!ATTLIST stentry %cellPurposeAtt-d-attribute-expansion;>
    ```

    **Note:** The attribute definition entity is optional. It is used here to enable the DITA architect to add the same attribute with the same tokens to several elements.

2.  They then update the `catalog.xml` file to include the expansion module.
3.  They integrate this module into the applicable document-type shell.

    ```
    <!-- ============================================================= -->
    <!--             DOMAIN ATTRIBUTES DECLARATIONS                    -->
    <!-- ============================================================= -->
    
    <!-- ... other domains ... -->
    **
    &lt;!ENTITY % cellPurposeAttExpansion-d-dec
      PUBLIC "-//ACME//ENTITIES DITA Cell Purpose Attribute Expansion//EN"
             "cellPurposeAttExpansion.ent"
    &gt;%cellPurposeAttExpansion-d-dec;**
    ```

4.  They add the entity for the contribution to the `@specializations` attribute.

    ```
    <!-- ============================================================= -->
    <!--                 SPECIALIZATIONS ATTRIBUTE OVERRIDE            -->
    <!-- ============================================================= -->
    
    <!ENTITY included-domains
                              "&audienceAtt-d-att;
                               **&amp;cellPurposeAtt-d-att;**
                               &deliveryTargetAtt-d-att;
                               &otherpropsAtt-d-att;
                               &platformAtt-d-att;
                               &productAtt-d-att;"
    >
    ```

5.  After checking the test topic to ensure that the attribute lists are modified as expected, the work is done.

**Parent topic:**[Examples: Expansion implemented using DTDs](../../archSpec/base/examples-expansion-implemented-using-dtds.md)

