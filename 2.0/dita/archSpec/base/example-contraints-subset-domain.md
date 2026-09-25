---
author: OASIS DITA Technical Committee
---

# Example: Constrain a domain module using DTD

In this scenario, a DITA architect wants to use only a subset of the elements defined in the highlighting domain. They want to use `<b>` and `<i>` but not any other of the elements in the domain. They want to integrate this constraint into the document-type shell for task.

Specifically, the DITA architect wants to redefine the content model in the following ways:

-   Use `<b>` and `<i>`
-   Remove `<line-through>`, `<overline>`, `<sup>`, `<sup>`, `<tt>`, and `<u>`

1.  The DITA architect creates a constraint module: `acme-HighlightDomainConstraint.mod`.
2.  They add the following content to `acme-HighlightDomainConstraint.mod`:

    ```
    <!-- ============================================================= -->
    <!--      CONSTRAINED HIGHLIGHT DOMAIN ENTITIES                    -->
    <!-- ============================================================= -->
    
    <!ENTITY % HighlightingDomain-c-ph     "b | i"                 >  
    ```

3.  They add the constraint module to the `catalog.xml` file.
4.  They then integrate the constraint module into the company-specific, document-type shell for the task topic by adding the content in the "DOMAIN CONSTRAINT INTEGRATION" section:

    ```
    <!-- ============================================================= -->
    <!--                    DOMAIN CONSTRAINT INTEGRATION              -->
    <!-- ============================================================= -->
    
    <!ENTITY % HighlightDomain-c-dec  
      PUBLIC "-//ACME//ENTITIES DITA Highlighting Domain Constraint//EN" 
      "acme-HighlightDomainConstraint.mod"
    >%HighlightDomain-c-dec;
    ```

5.  In the "DOMAIN EXTENSIONS" section, they replace the parameter entity for the highlighting domain with the parameter entity for the constrained highlighting domain:

    ```
    <!ENTITY % ph           "ph |
                             **%HighlightDomain-c-ph;** |
                             %sw-d-ph; | 
                             %ui-d-ph;
                            ">
    ```

6.  They check their test topic to ensure that the content model is modified as expected.

**Parent topic:**[Examples: Constraints implemented using DTDs](../../archSpec/base/examples-constraints.md)

