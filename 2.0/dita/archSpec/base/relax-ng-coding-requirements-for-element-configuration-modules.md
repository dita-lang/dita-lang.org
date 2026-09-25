---
author: OASIS DITA Technical Committee
---

# RELAX NG: Coding requirements for element-configuration modules

An element-configuration module \(constraint and expansion\) redefines the content model or attribute list for one or more elements.

## Implementation of element-configuration modules

Element-configuration modules are implemented by importing the element-configuration modules into a document-type shell in place of the vocabulary module that is redefined. The element-configuration module itself imports the base vocabulary module; within the import, the module redefines the patterns as needed to implement the constraint, expansion, or both.

-   **Constraint modules**

    For example, a constraint module that modifies the `<topic>` element imports the base module `topicMod.rng`. Within that import, it constrains the `topic.content` pattern:

    ```
      <div>
        <a:documentation>ATTRIBUTES AND CONTENT MODEL OVERRIDES</a:documentation>
        <include href="urn:pubid:oasis:names:tc:dita:rng:topicMod.rng:2.0">
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
    ```

-   **Expansion modules**

    For example, an expansion module that modifies the content model of `<section>` imports the base module `topicMod.rng`. Within that import, it expands the `section.content` pattern:

    ```
        <a:documentation>CONTENT MODEL AND ATTRIBUTE LIST OVERRIDES</a:documentation>
        <include href="urn:pubid:oasis:names:tc:dita:rng:topicMod.rng:2.0">
          **&lt;define name="section.content"&gt;
            &lt;optional&gt;
              &lt;ref name="title"/&gt;
            &lt;/optional&gt;
            &lt;optional&gt;
              &lt;ref name="sectionDesc"/&gt;
            &lt;/optional&gt;
            &lt;zeroOrMore&gt;
              &lt;ref name="section.cnt"/&gt;
            &lt;/zeroOrMore&gt;
          &lt;/define&gt;**
        </include>
      </div>
    ```

    Note that the specialized element `<sectionDesc>` must be declared in an element-domain module that also is integrated into the document-type shell.


## Combining multiple element-configuration modules

Because the element-configuration module imports the module that it modifies, only one element-configuration module can be used per vocabulary module; otherwise the vocabulary module would be imported multiple times. If multiple element configurations are combined for a single vocabulary module, they need to be implemented in one of the following ways:

-   **Combined into a single element-configuration module**

    The element configurations can be combined into a single module.

    example

    For example, when combining separate constraints for `<section>` and `<shortdesc>`, a single module can be defined as follows:

    ```
    <include href="topicMod.rng">
      <define name="section.content">
        <!-- Constrained model for section -->
      </define>
      <define name="shortdesc.content">
        <!-- Constrained model for shortdesc -->
      </define>
    </include>
    
    ```

-   **Chaining element-configuration modules**

    Element-configuration modules can be chained so that each element-configuration module imports another, until the final element-configuration module imports the base vocabulary module.

    example

    For example, when combining separate constraints for `<section>`, `<shortdesc>`, and `<li>` from the base vocabulary, the `<section>` constraint can import the `<shortdesc>` constraint, which in turn imports the `<li>` constraint, which finally imports `topicMod.rng`.


**Parent topic:**[RELAX NG coding requirements](../../archSpec/base/relax-ng-requirements.md)

**Related information**  


[Examples: Constraints implemented using RNG](../../archSpec/base/examples-constraints-implemented-using-rng.md)

[Examples: Expansion implemented using RNG](../../archSpec/base/examples-expansion-implemented-using-rng.md)

