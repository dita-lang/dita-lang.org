---
author: OASIS DITA Technical Committee
---

# Example: Restrict the content model for the `<topic>` element using DTD

In this scenario, the DITA architect for Acme Incorporated wants to redefine the content model for the topic document type. They wantto omit certain elements, make the `<shortdesc>` element required, and disallow topic nesting.

Specifically, the DITA architect wants to redefine the content model in the following ways:

-   Remove `<abstract>`
-   Require `<shortdesc>`
-   Remove `<related-links>`
-   Remove the `%task-info-types;` entity in order to disallow topic nesting

1.  The DITA architect creates a constraint module: `acme-TopicConstraint.mod`.
2.  They add the following content to `acme-TopicConstraint.mod`:

    ```
    
    <!-- ============================================================= -->
    <!--                    CONSTRAINED TOPIC ENTITIES                 -->
    <!-- ============================================================= -->
    
    <!-- Declares the entities referenced in the constrained content  -->
    <!-- model.                                                       -->
    
    <!ENTITY % title            "title">
    <!ENTITY % shortdesc        "shortdesc">
    <!ENTITY % prolog           "prolog">
    <!ENTITY % body             "body">
    
    <!-- Defines the constrained content model for <topic>.            -->
    
    <!ENTITY % topic.content
                           "((%title;),
                             (%shortdesc;), 
                             (%prolog;)?, 
                             (%body;)?)"
    >
    ```

3.  They add the constraint module to the `catalog.xml` file.
4.  They then integrate the constraint module into the document-type shell for topic by adding the following content to the "Element-Type Configuration Integration section:

    ```
    <!-- ============================================================= -->
    <!--           ELEMENT-TYPE CONFIGURATION INTEGRATION              -->
    <!-- ============================================================= -->
    
    **&lt;!ENTITY % topic-constraints-c-def  
      PUBLIC "-//ACME//ELEMENTS DITA Topic Constraint//EN" 
      "acme-TopicConstraint.mod"&gt;
    %topic-constraints-c-def;**
    ```

5.  They check their test topic to ensure that the content model is modified as expected.

**Parent topic:**[Examples: Constraints implemented using DTDs](../../archSpec/base/examples-constraints.md)

