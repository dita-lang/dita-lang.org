---
author: OASIS DITA Technical Committee
---

# Example: Replace a base element with the domain extensions using RNG

In this scenario, the DITA architect wants to remove the `<ph>` element but allow the extensions of `<ph>` that exist in the highlight, programming, software, and user interface domains.

## Example

1.  They open the document-type shell for topic in an XML editor, and then they modify the "MODULE INCLUSIONS" division to exclude `<ph>`:

    ```
    <div>
      <a:documentation>MODULE INCLUSIONS</a:documentation>    
      <include href="urn:pubid:oasis:names:tc:dita:rng:topicMod.rng:2.0">
        **&lt;define name="ph.element"&gt;
          &lt;notAllowed/&gt;
        &lt;/define&gt;**
      </include>
      <!-- ... -->
    </div>
    ```

2.  They make similar changes to all the other document-type shells in which they want `<ph>` to not be available

**Parent topic:**[Examples: Constraints implemented using RNG](../../archSpec/base/examples-constraints-implemented-using-rng.md)

