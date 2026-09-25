---
author: OASIS DITA Technical Committee
---

# Example: Using the -dita-use-conref-target value

In this scenario, an element in a map is reused, with some of the attributes resolved using the -dita-use-conref-target token.

Consider the following scenario, where a `<topichead>` element in a DITA map uses `@conref`. It specifies the `@deliveryTarget` attribute as well as the `@toc` attribute.

```
<map><title>Conref demonstration</title>
  <topichead id="heading"
             deliveryTarget="pdf"
             toc="yes"
             linking="normal">
    <topicmeta>
       <navtitle>This is a heading</navtitle>
    </topicmeta>
    <topicref href="topic.dita"/>
  </topichead>

  <topichead conref="#heading"
             deliveryTarget="-dita-use-conref-target"
             toc="no">
  </topichead>
</map>
```

When the content reference is resolved, the `@deliveryTarget` attribute from the referencing element is not preserved because it uses -dita-use-conref-target. Instead, it uses the value pdf from the referenced element. The `@linking` attribute, which is not specified on the referencing element, is also resolved based on the referenced element. The `@toc` attribute from the referencing element overrides the `@toc` attribute on the referenced element using normal conref resolution rules:

```
<map><title>Conref demonstration</title>
  <topichead id="heading"
             deliveryTarget="pdf"
             toc="yes"
             linking="normal">
    <topicmeta>
       <navtitle>This is a heading</navtitle>
    </topicmeta>
    <topicref href="topic.dita"/>
  </topichead>

  <topichead deliveryTarget="pdf"
             toc="no"
             linking="normal">
    <topicmeta>
       <navtitle>This is a heading</navtitle>
    </topicmeta>
    <topicref href="topic.dita"/>
  </topichead>
</map>

```

**Parent topic:**[Examples of content referencing](../../archSpec/base/examples-conref.md)

