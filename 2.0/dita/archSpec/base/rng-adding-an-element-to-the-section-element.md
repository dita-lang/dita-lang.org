---
author: OASIS DITA Technical Committee
---

# Example: Adding an element to the `<section>` element using RNG

In this scenario, a DITA architect wants to modify the content model for the `<section>` element. He wants to add an optional `<sectionDesc>` element that is specialized from `<p>`; the `<sectionDesc>` can occur once and must be directly after the section title.

## Example

To accomplish this, the DITA architect needs to create the following modules and integrate them into the document-type shells:

-   An element domain module that defines the `<sectionDesc>` element
-   An expansion module that adds the `<sectionDesc>` element to the content model for `<section>`

1.  First, the DITA architect creates the element domain module: `sectionDescDomain.rng`. It contains the following code:

    ```
    <?xml version="1.0" encoding="UTF-8"?>
    <?xml-model href="urn:pubid:oasis:names:tc:dita:rng:vocabularyModuleDesc.rng"
                             schematypens="http://relaxng.org/ns/structure/1.0"?>
    <grammar xmlns:a="http://relaxng.org/ns/compatibility/annotations/1.0"
      xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
      xmlns="http://relaxng.org/ns/structure/1.0">
      <div>
        <a:documentation>DOMAIN EXTENSION PATTERNS</a:documentation>
      </div>
      <div>
        <a:documentation>ELEMENT TYPE NAME PATTERNS</a:documentation>
        <define name="sectionDesc">
          <ref name="sectionDesc.element"/>
        </define>   
      </div>
      <div>
        <a:documentation>ELEMENT TYPE DECLARATIONS</a:documentation>
        <div>
          <a:documentation>LONG NAME: Section Description</a:documentation>
          <define name="sectionDesc.content">
            <zeroOrMore>
                <ref name="para.cnt"/>
              </zeroOrMore>
          </define>
          <define name="sectionDesc.attributes">
            <ref name="univ-atts"/>
          </define>
          <define name="sectionDesc.element">
            <element name="sectionDesc" dita:longName="Section Description">
              <a:documentation/>
              <ref name="sectionDesc.attlist"/>
              <ref name="sectionDesc.content"/>
            </element>
          </define>
          <define name="sectionDesc.attlist" combine="interleave">
            <ref name="sectionDesc.attributes"/>
          </define>
        </div>
      </div>
      <div>
        <a:documentation>SPECIALIZATION ATTRIBUTE DECLARATIONS</a:documentation>
        <define name="sectionDesc.attlist" combine="interleave">
          <optional>
            <attribute name="class" a:defaultValue="+ topic/p sectionDesc-d-p/sectionDesc "/>
          </optional>
        </define>
      </div>
    </grammar>
    ```

2.  The DITA architect adds the element domain module to the `catalog.xml` file.
3.  Next, the DITA architect modifies the document-type shell \(in this example, the one for topic\) to integrate the element domain module:

    ```
      <div>
        <a:documentation>MODULE INCLUSIONS</a:documentation>
        <!-- ... -->
        **&lt;include href="urn:pubid:example:names:tc:dita:rng:sectionDescDomain.rng:2.0"/&gt;**
      </div>
    ```

    At this point, the new domain is integrated into the document-type shell. However, the new element is not added to the content model for `<section>`.

4.  Next, the DITA architect created an expansion module \(`sectionExpansionMod.rng`\) that adds the `<sectionDesc>` element to the content model of `<section>`:

    ```
    <?xml version="1.0" encoding="UTF-8"?>
    <?xml-model href="urn:pubid:oasis:names:tc:dita:rng:vocabularyModuleDesc.rng"
                             schematypens="http://relaxng.org/ns/structure/1.0"?>
    <grammar xmlns="http://relaxng.org/ns/structure/1.0"
      xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
      xmlns:a="http://relaxng.org/ns/compatibility/annotations/1.0"
      datatypeLibrary="http://www.w3.org/2001/XMLSchema-datatypes">
      <div>
        <a:documentation>CONTENT MODEL AND ATTRIBUTE LIST OVERRIDES</a:documentation>
        <include href="urn:pubid:oasis:names:tc:dita:rng:topicMod.rng:2.0">  
          <define name="topic-info-types">
            <ref name="topic.element"/>
          </define>    
          <define name="section.content">
            <optional>
              <ref name="title"/>
            </optional>
            <optional>
              <ref name="sectionDesc"/>
            </optional>
            <zeroOrMore>
              <ref name="section.cnt"/>
            </zeroOrMore>
          </define>
        </include>
      </div>
    </grammar>
    
    ```

    Note that the expansion module directly integrates `topicMod.rng`.

5.  Finally, the DITA architect integrates the expansion module into the document-type shell and removes the inclusion statement for `topicMod.rng`:

    ```
      <div>
        <a:documentation>ELEMENT-TYPE CONFIGURATION INTEGRATION</a:documentation>
        **&lt;include href="sectionExpansionMod.rng"/&gt;**
      </div>
      <div>
        <a:documentation>MODULE INCLUSIONS</a:documentation>
        &lt;include href="urn:pubid:oasis:names:tc:dita:rng:topicMod.rng:2.0"&gt;
          &lt;define name="topic-info-types"&gt;
            &lt;ref name="topic.element"/&gt;
          &lt;/define&gt;
        &lt;/include&gt;
        <!-- ... -->
        <include href="urn:pubid:example:names:tc:dita:rng:sectionDescDomain.rng:2.0"/>
      </div>
    ```

6.  After updating the `catalog.xml` file to include the expansion module and testing, the work is done.

**Parent topic:**[Examples: Expansion implemented using RNG](../../archSpec/base/examples-expansion-implemented-using-rng.md)

