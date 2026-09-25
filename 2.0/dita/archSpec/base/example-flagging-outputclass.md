---
author: OASIS DITA Technical Committee
---

# Example: Flagging with `@add-outputclass`

In this scenario, the `@add-outputclass` attribute in a DITAVAL document is used to enable CSS based flagging.

An additional expectation for this scenario is that the processor rendering DITA content preserves `@outputclass` values as CSS `@class` tokens in HTML5. For example, the phrase `<ph outputclass="bird">eagle</ph>` might be rendered in HTML5 as `<span class="bird">eagle</span>`.

The following code sample illustrates a simple DITAVAL document that sets up two rules for flagging using `@outputclass`.

```
<val>
  <prop action="flag" att="product" val="myProduct" add-outputclass="myProductToken"/>
  <prop action="flag" att="product" val="myOtherProduct" add-outputclass="myOtherProductToken"/>
</val>
```

Now, assume the following DITA content is processed using the rules from that DITAVAL document:

```
<ol>
  <li>This list item applies to all content</li>
  <li product="myProduct">This list item is specific to my product</li>
  <li product="myProduct" outputclass="example">This list item is an example of an edge case</li>
  <li product="myOtherProduct">This list item is specific to my OTHER product</li>
  <li product="myProduct myOtherProduct">This list item is specific to both of my products</li>
</ol>
```

Based on the rules from that DITAVAL document, the topic content is processed as follows:

1.  The first item does not specify any conditional processing attributes, and is handled normally.
2.  The second item specifies `product="myProduct"`. Based on the DITAVAL document, this results in a setting of `outputclass="myProductToken"`. The content is processed as if the original element was: `<li product="myProduct" outputclass="myProductToken">`.
3.  The third item specifies `product="myProduct"`, but already has an `@outputclass` attribute specified in the source. Based on the DITAVAL document, the content is processed as if the original element was: `<li product="myProduct" outputclass="myOtherProductToken example">`. Note that the value supplied by the DITAVAL document is placed before any value already in the source.
4.  The fourth item specifies `product="myOtherProduct"`. Based on the DITAVAL document, this results in a setting of `outputclass="myOtherProductToken"`. The content is processed as if the original element was: `<li product="myOtherProduct" outputclass="myOtherProductToken">`.
5.  The fifth item specifies both products with `product="myProduct myOtherProduct"`. Based on the DITAVAL document, this results in a setting of either `outputclass="myProductToken myOtherProductToken"` *or* `outputclass="myOtherProductToken myProductToken"`. The order of the two tokens is unspecified; if a processor chooses the first, the content is processed as if the original element was: `<li product="myProduct myOtherProduct" outputclass="myProductToken myOtherProductToken">`.

With the expectation that the processor maps `@outputclass` values onto the HTML `@class` attribute, the rendered HTML5 result would look like this:

```
<ol>
  <li>This list item applies to all content</li>
  <li class="myProductToken">This list item is specific to my product</li>
  <li class="myProductToken example">This list item is an example of an edge case</li>
  <li class="myOtherProductToken">This list item is specific to my OTHER product</li>
  <li class="myProductToken myOtherProductToken">This list item is specific to both of my products</li>
</ol>
```

**Parent topic:**[Examples of conditional processing](../../archSpec/base/examples-of-conditional-processing.md)

