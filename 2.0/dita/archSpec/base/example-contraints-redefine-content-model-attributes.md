---
author: OASIS DITA Technical Committee
---

# Example: Constrain attributes for the `<section>` element using DTD

In this scenario, a DITA architect wants to redefine the attributes for the `<section>` element. They want to make the `@id` attribute required.

## Example

1.  The DITA architect creates a constraint module: `idRequiredSectionContraint.mod`.
2.  They add the following content to `idRequiredSectionContraint.mod`:

    ```
    <!-- Declares the entities referenced in the constrained content  -->
    <!-- model.                                                       -->
    
    <!ENTITY % localization-atts
                  "translate
                              (no |
                               yes |
                               -dita-use-conref-target)
                                        #IMPLIED
                   xml:lang
                              CDATA
                                        #IMPLIED
                   dir
                              (lro |
                               ltr |
                               rlo |
                               rtl |
                               -dita-use-conref-target)
                                        #IMPLIED"
    >
    <!ENTITY % filter-atts
                  "props
                              CDATA
                                        #IMPLIED
                   %props-attribute-extensions;"
    >
    <!ENTITY % select-atts
                  "%filter-atts;
                   base
                              CDATA
                                        #IMPLIED
                   %base-attribute-extensions;
                   importance
                              (default |
                               deprecated |
                               high |
                               low |
                               normal |
                               obsolete |
                               optional |
                               recommended |
                               required |
                               urgent |
                               -dita-use-conref-target)
                                        #IMPLIED
                   rev
                              CDATA
                                        #IMPLIED
                   status
                              (changed |
                               deleted |
                               new |
                               unchanged |
                               -dita-use-conref-target)
                                        #IMPLIED"
    >
    <!ENTITY % conref-atts
                  "conref
                              CDATA
                                        #IMPLIED
                   conrefend
                              CDATA
                                        #IMPLIED
                   conaction
                              (mark |
                               pushafter |
                               pushbefore |
                               pushreplace |
                               -dita-use-conref-target)
                                        #IMPLIED
                   conkeyref
                              CDATA
                                        #IMPLIED"
    >
    <!-- Redefines the attributes available on section  -->
    
    <!ENTITY % section.attributes
                  "id
                              ID
                                        #REQUIRED
                   %conref-atts;
                   %select-atts;
                   %localization-atts;
                   outputclass
                              CDATA
                                        #IMPLIED"
    >
    ```

    Note that the DITA architect had to declare all the parameter entities that are referenced in the redefined attributes for `<section>`. If they did not do so, none of the attributes that are declared in the parameter entities would be available on the `<section>` element. Furthermore, since the `%select-atts;` parameter entity references the `%filter-atts;` parameter entity, the `%filter-atts;` must be declared and it must precede the declaration for the `%select-atts;` parameter entity. The `%props-attribute-extensions;` and `%base-attribute-extensions;` parameter entities do not need to be declared in the constraint module, because they are declared in the document-type shells before the inclusion of the constraint module.

3.  They add the constraint module to the `catalog.xml` file.
4.  They then integrate the constraint module into the applicable document-type shellsby adding the following code:

    ```
    <!-- ============================================================= -->
    <!--           ELEMENT-TYPE CONFIGURATION INTEGRATION              -->
    <!-- ============================================================= -->
    
    **&lt;!ENTITY % section-constraints-c-def  
      PUBLIC "-//ACME//ELEMENTS DITA 2.0 Section Constraint//EN" 
      "idRequiredSectionContraint.mod"&gt;
    %section-constraints-c-def;**
    ```

5.  They check their test topic to ensure that the attribute list is modified as expected.

**Parent topic:**[Examples: Constraints implemented using DTDs](../../archSpec/base/examples-constraints.md)

