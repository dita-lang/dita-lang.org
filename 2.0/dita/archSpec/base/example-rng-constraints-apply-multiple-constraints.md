---
author: OASIS DITA Technical Committee
---

# Example: Apply multiple constraints to a single document-type shell using RNG

In this scenario, the DITA architect wants to apply multiple constraints to a document-type shell.

## Example

Here is a list of the constraint modules and what they do:

<table><thead><tr><th align="left" id="d234943e57">

File name

</th><th align="left" id="d234943e60">

What it constrains

</th><th align="left" id="d234943e63">

Details

</th></tr></thead><tbody><tr><td>

`example-TopicConstraint.mod`

</td><td>

`<topic>`

</td><td>

-   Removes `<abstract>`
-   Makes `<shortdesc>` required
-   Removes `<related-links>`
-   Disallows topic nesting

</td></tr><tr><td>

`example-SectionConstraint.mod`

</td><td>

`<section>`

</td><td>

Makes `@id` required

</td></tr><tr><td>

Not applicable

</td><td>

Highlighting domain

</td><td>

Reduces the highlighting domain elements to `<b>` and `<i>`

</td></tr><tr><td>

Not applicable

</td><td>

`<ph>`

</td><td>

Remove the `<ph>` element, allowing only domain extensions

</td></tr></tbody>
</table>The constraint modules that target the `<topic>` and `<section >` elements must be combined, since both elements are defined in `topicMod.rng`. The other constraints can be implemented directly in the document-type shell.

1.  The DITA architect creates a constraint module that combines the constraints from `example-TopicConstraint.mod` and `example-SectionConstraint.mod`:

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
        <include href="topicMod.rng">
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
          <define name="topic.content">
            <ref name="title"/>
            <ref name="shortdesc"/>
            <optional>
              <ref name="prolog"/>
            </optional>
            <optional>
              <ref name="body"/>
            </optional>
          </define>
        </include>
      </div>
    </grammar>
    ```

2.  In the document-type shell, they integrate the constraint module \(and remove the inclusion statement for `topicMod.rng`\):

    ```
    <div>
      <a:documentation>ELEMENT-TYPE CONFIGURATION INTEGRATION</a:documentation>
      <include href="acme-SectionTopicContraintMod.rng"/>
    </div>
    ```

3.  To constrain the highlight domain, they modify the include statement for the domain module:

    ```
    <div>
      <a:documentation>MODULE INCLUSIONS</a:documentation>
      <!-- ... -->
      <include href="highlightDomain.rng">
        <define name="line-through.element">
          <notAllowed/>
        </define>
        <define name="overline.element">
          <notAllowed/>
        </define>
        <define name="sub.element">
          <notAllowed/>
        </define>
        <define name="sup.element">
          <notAllowed/>
        </define>
        <define name="tt.element">
          <notAllowed/>
        </define>
        <define name="u.element">
          <notAllowed/>
        </define>
      </include>
      <!-- ... -->
    </div>
    ```

4.  Finally, to disallow `<ph>`, they add the following statement to the constraint module:

    ```
          <define name="ph.element">
            <notAllowed/>
          </define>
    ```


**Parent topic:**[Examples: Constraints implemented using RNG](../../archSpec/base/examples-constraints-implemented-using-rng.md)

