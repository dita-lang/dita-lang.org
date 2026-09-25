---
author: OASIS DITA Technical Committee
---

# Example: Restrict the content model for the `<topic>` element using RNG

In this scenario, the DITA architect for Acme Incorporated wants to redefine the content model for the topic document type. They wantto omit certain elements, make the `<shortdesc>` element required, and disallow topic nesting.

Specifically, the DITA architect wants to redefine the content model in the following ways:

-   Remove `<abstract>`
-   Require `<shortdesc>`
-   Remove `<related-links>`
-   Remove the `task-info-types`pattern in order to disallow topic nesting

1.  The DITA architect creates a constraint module: `acme-TopicConstraintMod.rng`.
2.  They update the `catalog.xml` file to include the new constraint module.
3.  They add the following content to `acme-TopicConstraint.mod`:

    ```
    <div>
      <a:documentation>CONTENT MODEL OVERRIDES</a:documentation>
      <include href="urn:pubid:oasis:names:tc:dita:rng:topicMod.rng:2.0">
        <define name="topic.content" combine="interleave">
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
    ```

    **Draft comment:**Kristen J Eberlein 21 April 2021  
    

    I know that the override won't happen without `combine="interleave"`, but I don't know if we cover that in the coding requirements topic. If people start with copying-and-pasting from the module that they are overriding, they won't have that and will get errors.

    **Draft comment:**robander   
    TO RESOLVE 12 May 2026: we cover it for attribute lists. Recommend updating the "overview of coding requirements" for RNG, and add a comment about how it is used, then delete this draft comment.

4.  They then integrate the constraint module into the document-type shell for topic by adding an `<include>` element in the "ELEMENT-TYPE CONFIGURATION INTEGRATION" section:

    ```
    <div>
      <a:documentation>ELEMENT-TYPE CONFIGURATION INTEGRATION</a:documentation>
      <include href="acme-TopicConstraintMod.rng"/>
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

