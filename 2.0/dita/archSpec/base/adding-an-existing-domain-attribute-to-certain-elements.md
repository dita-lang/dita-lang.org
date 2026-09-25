---
author: OASIS DITA Technical Committee
---

# Example: Adding an existing domain attribute to certain elements using DTDs

In this scenario, a company wants to use the `@otherprops` attribute specialization. However, they want to make the attribute available **only** on certain elements: `<p>`, `<div>`, and `<section>`.

The DITA architect will need to create an extension module and integrate it into the appropriate document-type shells.

1.  The DITA architect creates an expansion module that adds the `@otherprops` attribute to the selected elements: `acme-otherpropsAttExpansion.mod`. The expansion module contains the following code:

    ```
    <?xml version="1.0" encoding="UTF-8"?>
    **
    &lt;!-- Add the otherprops attribute to certain elements --&gt;
    &lt;!ATTLIST p %otherpropsAtt-d-attribute;&gt;
    &lt;!ATTLIST div %otherpropsAtt-d-attribute;&gt;
    &lt;!ATTLIST section %otherpropsAtt-d-attribute;&gt;**
    ```

    Note that the `%otherpropsAtt-d-attribute;` is defined in the separate attribute-specialization module that defines the `@otherprops` attribute.

2.  They then update the `catalog.xml` file to include the expansion module.
3.  They integrate the extension module into the applicable document-type shell, **after** the declaration for the `@otherprops` attribute-specialization module:

    ```
    <!-- ============================================================= -->
    <!--             DOMAIN ATTRIBUTES DECLARATIONS                    -->
    <!-- ============================================================= -->
    <!-- ... -->
    
    <!ENTITY % otherpropsAtt-d-dec
      PUBLIC "-//OASIS//ENTITIES DITA 2.0 Otherprops Attribute Domain//EN"
             "otherpropsAttDomain.ent"
    >%otherpropsAtt-d-dec;
    **
    &lt;!ENTITY % otherprops-expansion-e-def  
      PUBLIC "-//ACME//DITA 2.0 Otherprops Expansion//EN" 
             "acme-otherpropsAttExpansion.mod"
      &gt;%otherprops-expansion-e-def;**
    
    <!-- ... -->
    
    ```

4.  They remove the reference to the `@otherprops` attribute from the `props-attribute-extension` entity:

    ```
    <!-- ============================================================= -->
    <!--                    DOMAIN ATTRIBUTE EXTENSIONS                -->
    <!-- ============================================================= -->
    
    <!ENTITY % base-attribute-extensions
      ""
    >
    
    <!ENTITY % props-attribute-extensions
      "%audienceAtt-d-attribute;
       %deliveryTargetAtt-d-attribute;
       **%otherpropsAtt-d-attribute;**
       %platformAtt-d-attribute;
       %productAtt-d-attribute;"
    >
    ```

5.  They ensure that the `included-domains` entity contains the `@otherprops` contribution to the `@specializations` attribute:

    ```
    <!-- ============================================================= -->
    <!--                 SPECIALIZATIONS ATTRIBUTE OVERRIDE            -->
    <!-- ============================================================= -->
    
    <!ENTITY included-domains
                              "&audienceAtt-d-att;
                               &deliveryTargetAtt-d-att;
                               **&amp;otherpropsAtt-d-att;**
                               &platformAtt-d-att;
                               &productAtt-d-att;"
    >
    ```

6.  After checking the test topic to ensure that the attribute lists are modified as expected, the work is done.

**Parent topic:**[Examples: Expansion implemented using DTDs](../../archSpec/base/examples-expansion-implemented-using-dtds.md)

