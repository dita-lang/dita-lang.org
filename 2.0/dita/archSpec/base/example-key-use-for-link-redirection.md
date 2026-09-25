---
author: OASIS DITA Technical Committee
---

# Example: Link redirection

This scenario outlines how different authors can redirect links to a common topic by using key definitions. This could apply to `<xref>`, `<link>`, or any elements \(such as `<keyword>` or `<term>`\) that become navigation links.

A company wants to use a common DITA topic for information about recycling: `recycling.dita`. However, the topic contains a cross-reference to a topic that needs to be unique for each product line; each such topic contains product-specific URLs.

1.  The editing team creates a `recycling.dita` topic that includes a cross-reference to the product-specific topic. The cross reference is implemented using a key reference:

    ```
    <xref keyref="product-recycling-info" href="generic-recycling-info.dita"/>
    ```

    The value of the `@href` attribute provides a fallback in the event that a product team forgets to include a key definition for "product-recycling-info".

2.  Each product documentation group creates a unique key definition for "product-recycling-info". Each group authors the key definition in a DITA map, for example:

    ```
    <map>
      <!-- ... -->
      <keydef keys="product-recycling-info" href="acme-server-recycling.dita"/>
      <!-- ... -->
    </map>
    ```

    Each team can use the `recycling.dita` topic, and the cross reference in the topic resolves differently for each team.

3.  A year later, there is an acquisition. The newly-acquired team wants to reuse Acme's common material, but it needs to direct its users to an external Web site that lists the URLs, rather than a topic in the product documentation. Their key definition looks like the following:

    ```
    <topicref keys="product-recycling-info" 
              href="http://acme.example.com/server/recycling" 
              scope="external" format="html"/>
     
    ```

    When newly-acquired team uses the `recycling.dita` topic, it resolves to the external Web site; however for all other teams, the cross reference in the topic continues to resolves to their product-specific topic.

4.  A new product team is formed, and the team forgets to include a key definition for "product-recycling-info" in one of their root maps. Because the cross reference in the `recycling.dita` topic contains a value for the `@href` attribute, the link falls back to `generic-recycling-info.dita`, thus avoiding a broken cross reference in the output.


**Parent topic:**[Examples of keys](../../archSpec/base/examples-of-keys.md)

