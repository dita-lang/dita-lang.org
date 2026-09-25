---
author: OASIS DITA Technical Committee
---

# Example: Constrain a domain module using RNG

In this scenario, a DITA architect wants to use only a subset of the elements defined in the highlighting domain. They want to use `<b>` and `<i>` but not any other of the elements in the domain. They want to integrate this constraint into the document-type shell for task.

Specifically, the DITA architect wants to redefine the content model in the following ways:

-   Use `<b>` and `<i>`
-   Remove `<line-through>`, `<overline>`, `<sup>`, `<sup>`, `<tt>`, and `<u>`

Note that when using RNG, domains can be constrained directly in the document-type shells.

1.  They open the document-type shell for topic in an XML editor, and then they modify the "MODULE INCLUSIONS" division to exclude the elements that they do not want the implementation to use:

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

    **Note:** The DITA architect made a choice as to where in the document-type shell they would implement the constraint. It can be placed either in the "Element-type configuration integration" or the "Module inclusions" section.

2.  They make similar changes to all the other document-type shells in which they want to constrain the highlighting domain.

**Parent topic:**[Examples: Constraints implemented using RNG](../../archSpec/base/examples-constraints-implemented-using-rng.md)

