---
author: OASIS DITA Technical Committee
---

# Imposing roles when referencing a map

When specialized `<topicref>` elements reference a map, they might imply a semantic role for the referenced content. The `@impose-role` attribute provides a mechanism to declare that such references impose their original role on referenced content.

In many cases the `<topicref>` element is specialized in order to create a specific role for the reference. exampleFor example, the `<keydef>` element creates a new role for the reference, but does not create a role for the target of the reference. In other cases, the element is specialized to create a role for the target of the reference. exampleFor example, in the Bookmap specialization from the DITA Technical Communication specializations, the `<chapter>` element creates a role for the target of the reference: it declares that the referenced content is a chapter in the context of this map.

The declaration of roles can be harder to follow when the target of a reference is a map or branch of a map. In such cases, a `<topicref>` element can reference a map, which in turn references content. When resolving those references, processors need to know which roles created by the `<topicref>` elements need to be preserved for the content.

For example, assume a `<setupProject>` element that is specialized from `<topicref>` indicates that the referenced content plays the "setup a project" role in a publication. This might result in special formatting or generated headings when the content is rendered. If that element refers to a map instead of a topic, that specialized role still needs to be passed on to topics in the referenced map - regardless of what `<topicref>` elements might be used in that referenced map.

The `@impose-role` attribute provides a way for specialized elements to declare whether processors should use this behavior. This attribute is only evaluated when a `<topicref>` element refers to a map or branch of a map. In that case, it indicates whether the element provides a role for content that should be passed on to content in the referenced map.

The role created by a `<topicref>` is reflected by the `@class` hierarchy of the element. Processors that need to do something with the role do it based on that `@class` attribute. In the `<setupProject>` example above, that might be a `@class` attribute like `"- map/topicref taskmap/setupProject "`. Processors working with the reference know to render the referenced content based on that value. When `<setupProject>` instead pulls in content from another map, processors need to preserve that intent. Effectively, they need to preserve awareness of that `@class` attribute value for topics that are indirectly referenced through the other map.

Specialized topic references achieve this behavior by setting up a default value for the `@impose-role` attribute on the new element: `impose-role="impose"`.

When a role is imposed in this manner, it does not apply to all content referenced by the element. If a `<topicref>` refers to a branch of a map, the role is imposed only on the root element of that branch. If a `<topicref>` refers to an entire map, the role is imposed only on the highest-level topic references within that map. The role does not cascade to other nested referencs within the map. For example, if a `<chapter>` element applied that role to every reference in another map, that map would be made up only of chapters nested within chapters.

For elements that do not create a role for the referenced content, the `@impose-role` attribute is defined with a default value indicating that the target of the reference keeps its original role: `impose-role="keeptarget"`. For example, the `<mapref>` element is a convenience element used to simplify references to other maps. It does not force the content in other maps to be treated as `<mapref>` - no special role is created for the referenced content. For this reason, it is defined in the grammar file with a fixed value of keeptarget.

In some cases, preserving the role of a referencing element might result in out-of-context content. For example, a `<chapter>` element in one bookmap could pull in a `<part>` element from another bookmap, where that referenced `<part>` also contains nested `<chapter>` elements. Treating the `<part>` element as a `<chapter>` will result in a chapter that nests other chapters, which is not valid in bookmap and might not be understandable by processors. The result is implementation specific. Processors MAY choose to treat this as an error, issue a warning, or simply assign new roles to the problematic elements.

## Defining a fixed role for a specialized element

In the Bookmap specialization from the OASIS DITA Technical Communications specializations, the `<chapter>` element creates a role for the referenced topic. In many contexts \(such as a PDF version of the map\), this will result in special formatting that identifies the topic as the start of a chapter.

When a chapter element refers to another map, topic references in that other map need to be treated as chapters in order to retain the structure of the book. The `@impose-role` attribute is set to a fixed value of impose, which lets processors know that the role needs to be preserved for content in the other map.

In an RNG grammar file, this default value can be set as follows:

```
<optional>
  <attribute name="impose-role" a:defaultValue="keeptarget">
    <value>keeptarget</value>
  </attribute>
</optional>
```

In a DTD grammar file, this default value can be set as follows:

```
impose-role
                          (impose)
                                    'impose'
```

With these fixed values, a `<chapter>` element that refers to a map will impose the role of "chapter" as expected.

## Imposing a role on a branch of a map

In this scenario, a specialized `<chapter>` element refers to a branch of another map. The chapter element does not need to set the `@impose-role` attribute directly, because it is defined with a default value in the XML grammar files. The element itself refers to a specific branch of the map, setting the `@format` attribute to indicate this is a map reference:

```
<bookmap>
  <!-- ... title, front matter, and other chapters -->
  <chapter href="reusemap.ditamap#examplebranch" format="ditamap"/>
  <!-- additional content -->
</bookmap>
```

The referenced map contains that branch along with other content:

```
<map>
  <title>Reusable map branches</title>
  <topicref> <!-- ... --> </topicref>
  <topicref href="parent.dita" id="examplebranch">
    <topicref href="child1.dita"/>
    <topicref href="child2.dita">
      <!-- more children -->
    </topicref>
  </topicref>
  <!-- ... more reusable branches -->
</map>
```

Because the `<chapter>` element is defined with a fixed value of impose for the `@impose-role` attribute, processors will impose the "chapter" role on the reference to `parent.dita` at the root of the referenced branch. The "chapter" role is not imposed on the child topics in that branch. While processors do not need to literally resolve the content in a normal map, the effective result is similar to this merged map:

```
<bookmap>
  <!-- ... title, front matter, and other chapters -->
  <chapter href="parent.dita">
    <topicref href="child1.dita"/>
    <topicref href="child2.dita">
      <!-- more children -->
    </topicref>
  </chapter>
  <!-- additional content -->
</bookmap>
```

## Imposing a role on a referenced map

In this scenario, a specialized `<chapter>` element refers to an entire submap. The chapter element does not need to set the `@impose-role` attribute directly, because it is defined with a default value in the XML grammar files. The element itself sets the `@format` attribute to indicate this is a map reference:

```
<bookmap>
  <!-- ... title, front matter, and other chapters -->
  <chapter href="nestedmap.ditamap" format="ditamap"/>
  <!-- additional content -->
</bookmap>
```

The referenced map contains three branches as children of the root `<map>` element:

```
<map>
  <title>Reusable map branches</title>
  <topicref href="branch1.dita"> <!-- ... --> </topicref>
  <topicref href="branch2.dita">
    <topicref href="child1.dita"/>
    <topicref href="child2.dita">
      <!-- more children -->
    </topicref>
  </topicref>
  <topicref href="branch3.dita"> <!-- ... --> </topicref>
</map>
```

Because the `<chapter>` element is defined with a fixed value of impose for the `@impose-role` attribute, processors will impose the "chapter" role on the highest-level references within the nested map. This means the processors imposes the role of "chapter" on all three branches in the nested map. As with the previous example, the "chapter" role is not imposed on the child topics in each branch. While processors do not need to literally resolve the content in a normal map, the effective result is similar to this merged map:

```
<bookmap>
  <!-- ... title, front matter, and other chapters -->
  <chapter href="branch1.dita"> <!-- ... --> </chapter>
  <chapter href="branch2.dita">
    <topicref href="child1.dita"/>
    <topicref href="child2.dita">
      <!-- more children -->
    </topicref>
  </chapter>
  <chapter href="branch3.dita"> <!-- ... --> </chapter>
  <!-- additional content -->
</bookmap>
```

-   **[Example: How topicref roles are imposed on referenced maps](../../archSpec/base/example-impose-topicref-roles.md)**  
In this scenario, a specialized `<topicref>` element references content in another map.

**Parent topic:**[DITA maps and their usage](../../archSpec/base/dita-maps-and-their-usage.md)

