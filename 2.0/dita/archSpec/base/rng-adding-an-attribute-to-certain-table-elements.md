---
author: OASIS DITA Technical Committee
---

# Example: Adding an attribute to certain table elements using RNG

In this scenario, a company makes extensive use of complex tables to present product listings. They occasionally highlight individual cells, rows, or columns for various purposes. The DITA architect wants to implement a semantically meaningful way to identify the purpose of various table elements.

The DITA architect decides to create a new attribute \(`@cellPurpose`\) and add it to the content model of the following elements:

-   `<entry>`
-   `<row>`
-   `<colspec>`
-   `<stentry>`
-   `<strow>`

The new attribute will be specialized from `@base`, and it will take a small set of tokens as values.

The DITA architect decides to integrate the attribute declaration and its assignment to elements into a single expansion module. An alternate approach would be to put each `<!ATTLIST` declaration in its own separate expansion module, thus allowing DITA architects who construct document-type shells to decide the elements to which to apply the attribute.

1.  The DITA architect creates an expansion module: `cellPurposeAtt.rng`. It contains the following code:

    ```
    <?xml version="1.0" encoding="UTF-8"?>
    <?xml-model href="urn:pubid:oasis:names:tc:dita:rng:vocabularyModuleDesc.rng"
                             schematypens="http://relaxng.org/ns/structure/1.0"?>
    <grammar 
      xmlns="http://relaxng.org/ns/structure/1.0"
      xmlns:a="http://relaxng.org/ns/compatibility/annotations/1.0"
      xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
      datatypeLibrary="http://www.w3.org/2001/XMLSchema-datatypes">
      
      <!-- DEFINE THE ATTRIBUTE SPECIALIZATION -->
      <define name="cellPurposeAtt">
        <optional>
          <attribute name="cellPurpose">
            <a:documentation>Specifies the purpose of the table cell. This is a specialized
              attribute for Acme Corporation.
            </a:documentation>
            <choice>
              <value>sale</value>
              <value>out-of-stock</value>
              <value>new</value>
              <value>last-chance</value>
              <value>inherit</value>
              <value>none</value>
            </choice>
          </attribute>
        </optional>
      </define>
      
      <!-- ASSIGN THE ATTRIBUTE TO CERTAIN ELEMENTS -->
      <define name="entry.attributes" combine="interleave">
        <ref name="cellPurposeAtt"/>
      </define>
      <define name="stentry.attributes" combine="interleave">
        <ref name="cellPurposeAtt"/>
      </define>
      <define name="row.attributes" combine="interleave">
        <ref name="cellPurposeAtt"/>
      </define>
      <define name="strow.attributes" combine="interleave">
        <ref name="cellPurposeAtt"/>
      </define>
      <define name="colspec.attributes" combine="interleave">
        <ref name="cellPurposeAtt"/>
      </define>
    </grammar>
    ```

2.  They then update the `catalog.xml` file to include the expansion module.

3.  They integrate the expansion module into the document-type shell:

    ```
    <div>
        <a:documentation>MODULE INCLUSIONS</a:documentation>
        <!-- ... -->
        **&lt;include href="urn:pubid:example:names:tc:dita:rng:cellPurposeAtt.rng:2.0"/&gt;**
      </div>
    ```

4.  They specify the value that the `@cellPurpose` attribute contributes to the `@specializations` attribute:

    ```
      <div>
        <a:documentation>SPECIALIZATIONS ATTRIBUTE</a:documentation>
        <define name="specializations-att">
          <optional>
            <attribute name="specializations" a:defaultValue="
                             @props/audience
                             @props/deliveryTarget
                             @props/otherprops
                             @props/platform
                             @props/product
                             **@base/cellPurpose**"/>
          </optional>
        </define>
      </div>
    ```

5.  After checking the test file to ensure that the attribute lists are modified as expected, the work is done.

**Parent topic:**[Examples: Expansion implemented using RNG](../../archSpec/base/examples-expansion-implemented-using-rng.md)

