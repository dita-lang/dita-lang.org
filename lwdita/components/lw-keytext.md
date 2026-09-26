---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Key text

Key text is variable or link text that is used when resolving key references. It also specifies alternate text for images that are referenced by keys.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d36075e39">

Authoring format

</th><th align="left" id="d36075e43">

Syntax and example

</th></tr></thead><tbody><tr><td id="d36075e50">

**XDITA**

</td><td>

`<keytext>`

 ```
<keydef keys="product-name">
  <topicmeta>
    **&lt;keytext&gt;Remote Network Lighting&lt;/keytext&gt;**
  </topicmeta>
</keydef>
```

</td></tr><tr><td id="d36075e72">

**HDITA**

</td><td>

`<span data-class="keytext">`

 ```
div data-class="keydef">
  **&lt;span data-class="keytext" data-keys="product-name"&gt;Remote Lighting Network&lt;/span&gt;**
</div>
```

</td></tr><tr><td id="d36075e94">

**MDITA**

</td><td>

There is no specific support in the MDITA core profile. If needed, use an HDITA snippet.

</td></tr></tbody>
</table>## Processing expectations

See "Processing key reference to generate text or link text" in the **DITA 2.0 specification**.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes) and [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes).

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

This section contains examples of how the key text component can be used.

The following code sample shows how the `<keytext>` element can be used to create variable text for a product name, as well as alternate text for an image referenced by `@keyref`:

```
**&lt;!-- Key definitions for images --&gt;**
  <keydef keys="icon-save" href="icons/save.gif" format="gif" scope="local">
    **&lt;keytext&gt;Save icon&lt;/keytext&gt;**
  </keydef>
  **&lt;!-- Variable text definition --&gt;**
  <keydef keys="product-greenhouse">
    <topicmeta>
      **&lt;keytext&gt;Acme Greenhouse&lt;/keytext&gt;**
    </topicmeta>
  </keydef>
```

The following code sample shows how the `<keytext>` element can be used to create variable text for a product name, as well as alternate text for an image referenced by `@keyref`:

```
**&lt;!-- Key definitions for images --&gt;**
  <div data-class="keydef" 
       data-keys="icon-save" 
       href="icons/save.gif" format="gif" scope="local">
    <span data-class="keytext">Acme Greenhouse</span>
  </div>
  **&lt;!-- Variable text definition --&gt;**
  <div data-class="keydef" data-keys="product-greenhouse">
    <span data-class="keytext">Acme Greenhouse</span>
  </div>
```

The following code sample shows how the `<keytext>` element can be used to create variable text for a product name, as well as alternate text for an image referenced by `@keyref`:

```
**&lt;!-- Key definitions for images --&gt;**
  <div data-class="keydef" 
       data-keys="icon-save" 
       href="icons/save.gif" format="gif" scope="local">
    <span data-class="keytext">Acme Greenhouse</span>
  </div>
  **&lt;!-- Variable text definition --&gt;**
  <div data-class="keydef" data-keys="product-greenhouse">
    <span data-class="keytext">Acme Greenhouse</span>
  </div>
```

**Parent topic:**[Map components](../components/containers/map-components.md)

