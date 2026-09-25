---
author: OASIS DITA Technical Committee
---

# Example: Adding an existing domain attribute to certain elements using RNG

In this scenario, a company wants to use the `@otherprops` attribute specialization. However, they want to make the attribute available **only** on certain elements: `<p>`, `<div>`, and `<section>`.

The DITA architect will need to create an extension module and integrate it into the appropriate document-type shells.

1.  The DITA architect creates an expansion module that adds the `@otherprops` attribute to the selected elements: `acme-otherpropsAttExpansion.rng`. The expansion module contains the following content:

    ```
    <?xml version="1.0" encoding="UTF-8"?>
    <?xml-model href="urn:pubid:oasis:names:tc:dita:rng:vocabularyModuleDesc.rng"
                             schematypens="http://relaxng.org/ns/structure/1.0"?>
    <grammar xmlns="http://relaxng.org/ns/structure/1.0"
      xmlns:a="http://relaxng.org/ns/compatibility/annotations/1.0"
      xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
      datatypeLibrary="http://www.w3.org/2001/XMLSchema-datatypes">
      <div>
        <a:documentation>CONTENT MODEL AND ATTRIBUTE LIST OVERRIDES</a:documentation>
        <include href="urn:pubid:oasis:names:tc:dita:rng:topicMod.rng:2.0">
          <define name="topic-info-types">
            <ref name="topic.element"/>
          </define>
          **&lt;define name="p.attributes" combine="interleave"&gt;
            &lt;optional&gt;
              &lt;attribute name="otherprops"/&gt;
            &lt;/optional&gt;
          &lt;/define&gt;
          &lt;define name="div.attributes" combine="interleave"&gt;
            &lt;optional&gt;
              &lt;attribute name="otherprops"/&gt;
            &lt;/optional&gt;
          &lt;/define&gt;
          &lt;define name="section.attributes" combine="interleave"&gt;
            &lt;optional&gt;
              &lt;attribute name="otherprops"/&gt;
            &lt;/optional&gt;
          &lt;/define&gt;**
        </include>
      </div>
    </grammar>
    
    ```

2.  They then update the `catalog.xml` file to include the expansion module.
3.  They integrate the extension module into the applicable document-type shell, and remove the `<include>` element for `topicMod.rng:`

    ```
      <div>
        <a:documentation>ELEMENT-TYPE CONFIGURATION INTEGRATION</a:documentation>
          **&lt;include href="acme-otherpropsAttExpansion.rng"/&gt;**
      </div>
      <div>
        <a:documentation>MODULE INCLUSIONS</a:documentation>
        **&lt;include href="urn:pubid:oasis:names:tc:dita:rng:topicMod.rng:2.x"/&gt;**
        <!-- ... -->
        <include href="urn:pubid:oasis:names:tc:dita:rng:otherpropsAttDomain.rng:2.0">
        </include>
      </div>
    ```

4.  They remove the reference to the `@otherprops` attribute from the `props-attribute-extension` pattern:

    ```
      <div>
        <a:documentation>MODULE INCLUSIONS</a:documentation>
        <!-- ... -->
        <include href="urn:pubid:oasis:names:tc:dita:rng:otherpropsAttDomain.rng:2.0">
          **&lt;define name="props-attribute-extensions" combine="interleave"&gt;
          &lt;empty/&gt;
          &lt;/define&gt;**
        </include>
    ```

5.  They ensure that the `included-domains` entity contains the `@otherprops` contribution to the `@specializations` attribute:

    ```
      <div>
        <a:documentation>SPECIALIZATIONS ATTRIBUTE</a:documentation>
        <define name="specializations-att">
          <optional>
            <attribute name="specializations" a:defaultValue="
                             @props/audience
                             @props/deliveryTarget
                             **@props/otherprops**
                             @props/platform
                             @props/product"/>
          </optional>
        </define>
      </div>
    ```

6.  After checking the test topic to ensure that the attribute lists are modified as expected, the work is done.

**Parent topic:**[Examples: Expansion implemented using RNG](../../archSpec/base/examples-expansion-implemented-using-rng.md)

