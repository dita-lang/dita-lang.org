---
author: OASIS DITA Technical Committee
---

# Example: Adding an element to the `<section>` element using DTDs

In this scenario, a DITA architect wants to modify the content model for the `<section>` element. The DITA architect wants to add an optional `<sectionDesc>` element that is specialized from `<p>`.

## Example

To accomplish this, the DITA architect needs to create the following modules and integrate them into the document-type shell:

-   An element-domain specialization module that defines the `<sectionDesc>` element
-   An expansion module that adds the `<sectionDesc>` element to the content model for `<section>`

1.  First, the DITA architect creates the element specialization module: `sectionDescDomain.mod`. This single `.mod` file defines the parameter entity, content model, attributes, and value for the `@class` attribute for `<sectionDesc>`.

    ```
    <?xml version="1.0" encoding="UTF-8"?>
    
    <!ENTITY % sectionDesc "sectionDesc">
    
    <!ENTITY % sectionDesc.content "(%para.cnt;)*">
    <!ENTITY % sectionDesc.attributes "%univ-atts;">
    
    <!ELEMENT sectionDesc %sectionDesc.content;>
    <!ATTLIST sectionDesc %sectionDesc.attributes;>
    
    <!ATTLIST sectionDesc    class CDATA "+ topic/p sectionDesc-d/sectionDesc ">
    ```

2.  The DITA architect adds the element specialization module to the `catalog.xml` file.
3.  Next, the DITA architect modifies the applicable document-type shell to integrate the applicable element specialization module:

    ```
    <!-- ============================================================= -->
    <!--                    DOMAIN ELEMENT INTEGRATION                 -->
    <!-- ============================================================= -->
    
    <!-- ... other domains ... -->
    
    **&lt;!ENTITY % sectionDesc-d-def
      PUBLIC "-//ACME//ELEMENTS DITA 2.0 Section Description Domain//EN"
             "sectionDescDomain.mod"
    &gt;%sectionDesc-d-def;**
    ```

    At this point, the new domain is integrated into the topic document-type shell. However, the new element is not added to the content model for `<section>`.

4.  Next, the DITA architect creates an expansion module: `acme-SectionExpansion.mod`. This module adds the `<sectionDesc>` element to the content model of `<section>`.

    ```
    <?xml version="1.0" encoding="UTF-8"?>
    
    <!-- Declares the entities referenced in the modified content  -->
    <!-- model.                                                    -->
    
    <!ENTITY % dl "dl">
    <!ENTITY % div "div">
    <!ENTITY % fig "fig">
    <!ENTITY % image "image">
    <!ENTITY % lines "lines">
    <!ENTITY % lq "lq">
    <!ENTITY % note "note">
    <!ENTITY % object "object">
    <!ENTITY % ol "ol">
    <!ENTITY % p "p">
    <!ENTITY % pre "pre">
    <!ENTITY % simpletable "simpletable">
    <!ENTITY % sl "sl">
    <!ENTITY % table "table">
    <!ENTITY % ul "ul">
    <!ENTITY % cite "cite">
    <!ENTITY % include "include">
    <!ENTITY % keyword "keyword">
    <!ENTITY % ph "ph">
    <!ENTITY % q "q">
    <!ENTITY % term "term">
    <!ENTITY % text "text">
    <!ENTITY % tm "tm">
    <!ENTITY % xref "xref">
    <!ENTITY % data "data">
    <!ENTITY % foreign "foreign">
    <!ENTITY % title "title">
    <!ENTITY % draft-comment "draft-comment">
    <!ENTITY % fn "fn">
    <!ENTITY % indexterm "indexterm">
    <!ENTITY % required-cleanup "required-cleanup">
    **&lt;!ENTITY % sectionDesc "sectionDesc"&gt;**
    
    <!-- Defines the modified content model for <section>.       -->
    
    <!ENTITY % section.content
                  "(#PCDATA |
                   %dl; |
                   %div; |
                   %fig; |
                   %image; |
                   %lines; |
                   %lq; |
                   %note; |
                   %object; |
                   %ol; |
                   %p; |
                   %pre; |
                   %simpletable; |
                   %sl; |
                   %table; |
                   %ul; |
                   %cite; |
                   %include; |
                   %keyword; |
                   %ph; |
                   %q; |
                   %term; |
                   %text; |
                   %tm; |
                   %xref; |
                   %data; |
                   %foreign; |
                   %title; |
                   %draft-comment; |
                   %fn; |
                   %indexterm; |
                   %required-cleanup; |
                   **%sectionDesc;**)*"
    >
    ```

    Note that the DITA architect needed to explicitly declare all the elements, rather than using the `%section.cnt;` parameter entity that is used in the definition of `<section>`. Because the element-configuration modules are integrated into the document-type shell before the base grammar modules, none of the parameter entities that are used in the base DITA vocabulary modules are available.

5.  Finally, the DITA architect integrates the expansion module into the document-type shell:

    ```
    <!-- ============================================================= -->
    <!--           ELEMENT-TYPE CONFIGURATION INTEGRATION              -->
    <!-- ============================================================= -->
    
    <!-- Other constraint and expansion modules -->
    **
    &lt;!ENTITY % acmeSection-def
      PUBLIC "-//ACME//ELEMENTS DITA 2.0 Section Expansion//EN"
             "acme-SectionExpansion.mod"
    &gt;%acmeSection-def;**
    ```

6.  After updating the `catalog.xml` file to include the expansion module and testing it, the work is done.

**Parent topic:**[Examples: Expansion implemented using DTDs](../../archSpec/base/examples-expansion-implemented-using-dtds.md)

