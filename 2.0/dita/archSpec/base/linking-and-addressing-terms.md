---
author: OASIS DITA Technical Committee
---

# Linking and addressing terminology

Certain terminology is used for discussing linking and addressing.

-   **referenced element**

    An element that is referenced by another DITA element. See also referencing element.

    **Example**

    Consider the following code sample from a `installation-reuse.dita` topic. The `<step>` element that it contains is a referenced element; other DITA topics reference the `<step>` element by using the `@conref` attribute.

    ```
    <step id="run-startcmd-script">
    	<cmd>Run the startcmd script that is applicable to your operating-system environment.</cmd>
    </step>
    ```

-   **referencing element**

    An element that references another DITA element by specifying an addressing attribute. See also referenced element and addressing attribute

    **Example**

    The following `<step>` element is a referencing element. It uses the `@conref` attribute to reference a `<step>` element in the `installation-reuse.dita` topic.

    ```
    <step conref="installation-reuse.dita#reuse/run-startcmd-script">
    	<cmd/>
    </step>
    ```

-   **addressing attribute**

    An attribute that specifies an address, such as `@conref` or `@href`, or that specifies an indirect reference to an address, such as `@conkeyref` or `@keyref`.


**Parent topic:**[DITA terminology, notation, and conventions](../../archSpec/base/dita-terminology.md)

