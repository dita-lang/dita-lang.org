---
author: OASIS DITA Technical Committee
---

# DITAVAL elements

A DITAVAL document identifies content that is filtered and flagged at rendering time. The DITAVAL document has an extension of `.ditaval`.

-   **[alt-text](../../langRef/ditaval/alt-text.md)**  
The `<alt-text>` element in a DITAVAL document specifies alternate text for an image that is used to flag content. If an image is not specified, the text is used to mark the flagged content.
-   **[endflag](../../langRef/ditaval/endflag.md)**  
The `<endflag>` element in a DITAVAL document specifies information that identifies the end of flagged content. The information can be an image, alternate text, or both.
-   **[prop](../../langRef/ditaval/prop.md)**  
The `<prop>` element in a DITAVAL document specifies filtering or flagging actions that occur when rendering. The actions target the `@props` attribute or specializations of `@props`, including `@audience`, `@deliveryTarget`, `@otherprops`, `@platform`, and `@product`.
-   **[revprop](../../langRef/ditaval/revprop.md)**  
The `<revprop>` element in a DITAVAL document identifies a value of the `@rev` attribute for flagging. Unlike the conditional processing attributes, which can be used for both filtering and flagging, the `@rev` attribute can only be used for flagging.
-   **[startflag](../../langRef/ditaval/startflag.md)**  
The `<startflag>` element in a DITAVAL document specifies information that identifies the beginning of flagged content. The information can be an image, alternate text, or both.
-   **[style-conflict](../../langRef/ditaval/style-conflict.md)**  
The `<style-conflict>` element in a DITAVAL document declares the behavior to be used when one or more flagging methods collide on the same element..
-   **[val](../../langRef/ditaval/val.md)**  
The `<val>` element is the root element of a DITAVAL document.

**Parent topic:**[Other elements](../../langRef/other-elements.md)

