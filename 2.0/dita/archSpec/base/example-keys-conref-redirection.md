---
author: OASIS DITA Technical Committee
---

# Example: conref redirection

The `@conkeyref` attribute enables authors to share DITA topics that reuse content. It also enables map authors to specify different key definitions for common keys.

In this scenario, Acme produces content for a product that is also resold through a business partner. When the DITA content is published for the partner, several items must be different, including the following:

-   Product names
-   Standard notes that contain admonitions

Simply using the `@conref` attribute would not be possible for teams that use a component content management system where every DITA topic is addressed by a globally-unique identifier \(GUID\).

1.  Authors reference the reusable content in their topics by using the `@conkeyref` attribute, for example:

    ```
    <task id="reusable-product-content">
      <title><keyword conkeyref="reuse/product-name"/> prerequisites</title>
      <taskbody>
        <prereq><note conkeyref="reuse/warning-1"/></prereq>
        <!-- ... -->
      </taskbody>
    </task>
    
    ```

2.  Authors create two different topics; one topic contains elements appropriate for Acme, and the other topic contains elements appropriate for the partner. Note that each reuse topic must use the same element types \(or compatible specializations\) and values for the `@id` attribute. For example, the following reuse file is appropriate for use by Acme:

    ```
    <topic id="acme-reuse">
      <title>Reuse topic for Acme</title>
      <body>
        <note **id="warning-1"**>Admonitions for Acme</note>
        <p><keyword **id="product-name"**>Acme product name</keyword></p>
        <!-- ... -->
      </body>
    </topic>
    ```

    The following reuse file is appropriate for use by the OEM partner:

    ```
    <topic id="oem-reuse">
      <title>Reuse topic for OEM partner</title>
      <body>
        <note **id="warning-1"**>Admonitions for partner</note>
        <p><keyword **id="product-name"**>OEM product name</keyword></p>
        <!-- ... -->
      </body>
    </topic>
    ```

3.  The two versions of the DITA maps each contain different key definitions for the key name "reuse". \(This associates a key with the topic that contains the appropriate reusable elements.\) For example:

    ```
    <map>
      <!-- ... -->
      <keydef keys="reuse" href="acme-reuse.dita"/>
      <!-- ... -->
    </map>
    ```

    ```
    <map>
      <!-- ... -->
      <keydef keys="reuse" href="oem-reuse.dita"/>
      <!-- ... -->
    </map>
    ```


When each of the DITA maps is published, the elements that are referenced by `@conkeyref` will use the reuse topic that is referenced by the `<keydef>` element in the map. The product names and warnings will be different in the output.

**Parent topic:**[Examples of keys](../../archSpec/base/examples-of-keys.md)

