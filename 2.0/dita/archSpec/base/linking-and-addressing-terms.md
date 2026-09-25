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

    An attribute, such as `@conref`, `@conkeyref`, `@keyref`, and `@href`, that specifies an address.

    **Draft comment:**robander 26 may 2021  
    Nit-picking: conkeyref / keyref do not specify an address, they specify a key that can indirectly result in an address. Maybe rephrase something like this, but not sure where to put the "such as" here:

    An attribute that specifies an address or a that specifies key that resolves to an address.

    or maybe

    An attribute that specifies an address or that specifies a key.

    **Draft comment:**robander   
    TO RESOLVE 12 May 2026: how about "An attribute that specifies an address, such as conref and href, or specifies an indirect reference to an address, such as conkeyref and keyref"


**Parent topic:**[DITA terminology, notation, and conventions](../../archSpec/base/dita-terminology.md)

