---
author: OASIS DITA Technical Committee
---

# Example: Constrain attributes for the `<section>` element using RNG

In this scenario, a DITA architect wants to redefine the attributes for the `<section>` element. They want to make the `@id` attribute required.

## Example

1.  The DITA architect creates a constraint module: `id-requiredSectionContraintMod.rng`.
2.  They update the `catalog.xml` file to include the new constraint module.
3.  They add the following content to the constraint module:

    ```
    <?xml version="1.0" encoding="UTF-8"?>
    <grammar 
      xmlns="http://relaxng.org/ns/structure/1.0"
      xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
      xmlns:a="http://relaxng.org/ns/compatibility/annotations/1.0"
      datatypeLibrary="http://www.w3.org/2001/XMLSchema-datatypes">
    
      <div>
        <a:documentation>ATTRIBUTE LIST OVERRIDES</a:documentation>
        <include href="urn:pubid:oasis:names:tc:dita:rng:topicMod.rng:2.0">      
          <define name="section.attributes">
              <attribute name="id">
                <data type="NMTOKEN"/>
              </attribute>        
            <ref name="conref-atts"/>
            <ref name="select-atts"/>
            <ref name="localization-atts"/>
            <optional>
              <attribute name="outputclass"/>
            </optional>
          </define>
        </include>
      </div>
    
    </grammar>  
    ```

    Note that unlike a constraint module that is implemented using DTD, this constraint module did not need to re-declare the patterns that are referenced in the redefinition of the content model for `<section>`

4.  They then integrate the constraint module into the document-type shell for topic by adding an `<include>` element in the "CONTENT CONSTRAINT INTEGRATION" section:

    ```
    <div>
      <a:documentation>CONTENT CONSTRAINT INTEGRATION</a:documentation>
      <include href="id-requiredSectionConstraintMod.rng"/>
    </div>
    ```

5.  They then remove the `<include>` statement that references `topicMod.rng` from the "MODULE INCLUSIONS" section:

    ```
    <div>
      <a:documentation>MODULE INCLUSIONS </a:documentation>
        &lt;include href="urn:pubid:oasis:names:tc:dita:rng:topicMod.rng:2.0"/&gt;
        <include href="urn:pubid:oasis:names:tc:dita:rng:audienceAttDomain.rng:2.0"/>
        <include href="urn:pubid:oasis:names:tc:dita:rng:deliveryTargetAttDomain.rng:2.0"/>
        <include href="urn:pubid:oasis:names:tc:dita:rng:platformAttDomain.rng:2.0"/>
        <include href="urn:pubid:oasis:names:tc:dita:rng:productAttDomain.rng:2.0"/>
        <include href="urn:pubid:oasis:names:tc:dita:rng:otherpropsAttDomain.rng:2.0"/>
        <include href="urn:pubid:oasis:names:tc:dita:rng:highlightDomain.rng:2.0"/>
      </div>
    ```

6.  They check their test topic to ensure that the content model is modified as expected.

**Parent topic:**[Examples: Constraints implemented using RNG](../../archSpec/base/examples-constraints-implemented-using-rng.md)

