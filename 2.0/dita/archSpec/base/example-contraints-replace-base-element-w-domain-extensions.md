---
author: OASIS DITA Technical Committee
---

# Example: Replace a base element with the domain extensions using DTD

In this scenario, a DITA architect wants to remove the `<ph>` element but allow the extensions of `<ph>` that exist in the highlighting, programming, software, and user interface domains.

## Example

1.  In the "DOMAIN EXTENSIONS" section, the DITA architect removes the reference to the `<ph>` element:

    ```
    <!-- Removed "ph | " so as to make <ph> not available, only the domain extensions. -->
    <!ENTITY % ph           "%pr-d-ph; |
                             %sw-d-ph; | 
                             %ui-d-ph;
                            ">
    ```


**Note:** Because no other entities are modified or declared outside of the usual "DOMAIN EXTENSIONS" section, this completes the architect's task. Because no new grammar file or entity is created that would highlight this change, adding a comment to highlight the constraint becomes particularly important, as shown in the example above.

**Parent topic:**[Examples: Constraints implemented using DTDs](../../archSpec/base/examples-constraints.md)

