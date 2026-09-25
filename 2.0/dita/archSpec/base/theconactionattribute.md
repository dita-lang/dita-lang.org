---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Pushing reusable content to a new location

The `@conaction` attribute allows users to push content from one location into another. It causes the `@conref` attribute to work in reverse, so that content is pushed from the referencing element into another location, rather than pulled from another location to replace the referencing element.

**Note:** In the descriptions below, the word *target* always refers to the element referenced by a `@conref` or `@conkeyref` attribute.

There are three possible functions using the `@conaction` attribute: replacing an element, pushing content before an element, or pushing content after an element. The `@conaction` attribute always declares the desired function while the `@conref` or `@conkeyref` attribute provides the target of the reference using standard syntax for that attribute.

In each case, an element pushed using `@conref` or `@conkeyref`must be of the same type as, or more specialized than, its target. If the pushed element is more specialized than the target, then it should be generalized when the `@conref` or `@conkeyref` is resolved. This ensures that the content will be valid in the target topic.

-   It is valid to push using `@conref` or `@conkeyref` when the two elements involved are of the same type. For example, a `<step>` element can use the conref push feature with another `<step>` as the target of the `@conref` or `@conkeyref`.
-   The target element can be more general than the source. For example, it is legal to push a `<step>` element to replace a general list item \(`<li>`\); the `<step>` element should be generalized back to a list item during the process.
-   It is not possible to push a more general element into a specialized context. For example, it is not legal to push a list item \(`<li>`\) in order to replace a `<step>`, because the list item allows many items that are not valid in the specialized context.

## Replacing content in another topic

When the `@conaction` attribute is set to pushreplace, the referencing element will replace the referenced element specified by the `@conref` or `@conkeyref` attribute. The pushed content remains in the source topic where it was originally authored.

When resolving a conref push action, attributes are resolved using the same precedence as for normal `@conref`, with one exception. Attributes on the element with the `@conref` or `@conkeyref` attribute \(in this case, the source doing the push\) will take priority over those on the referenced element. The exception is that if the source element does not specify an ID, the ID on the referenced element remains; if the source element does specify an ID then that replaces the ID on the referenced element.

It is an error for two source topics to replace the same element. Applications MAY warn users if more than one element attempts to replace a single target.

## Pushing content before or after another element

Setting the `@conaction` attribute to pushbefore allows an element to be pushed before the element referenced by the `@conref` or `@conkeyref` attribute. Likewise, setting the `@conaction` attribute to pushafter allows an element to be pushed after the element referenced by the `@conref` or `@conkeyref` attribute. Multiple sources can push content before or after the same referenced element; the order in which that content is pushed is undefined.

When an element is pushed before or after a referenced element, the resulting document will have at least two of that element. Because this is not always valid, a document attempting to push content before or after a target must take an extra step to ensure that the result will be valid. The extra step makes use of the `conaction="mark"` value. For example, this restriction prevents a topic from trying to push a `<body>` element before or after another `<body>` element, because it is not valid to have two body elements in sequence.

When pushing before, the `@conref` or `@conkeyref` attribute itself looks just as it did when replacing, but the `@conaction` attribute is set to mark because it is marking the referenced element. This element remains empty; its purpose is to ensure that it is legal to have more than one of the current element. The element immediately before the marking element is the content that will actually be pushed. This element will set the `@conaction` attribute to pushbefore.

When pushing after, the procedure is the same, except that the order of the elements is reversed. The element with `conaction="pushafter"` comes immediately after the element which marks the target.

Attributes on the element which is pushed \(the one with `conaction="pushbefore"` or `conaction="pushafter"`\) must be retained on the target, apart from the `@conaction` attribute itself. If this causes the result document to end up with duplicate IDs, an application can recover by changing the `@id`, warning the user, or implementing another strategy.

The following restrictions apply when pushing content before or after an element:

-   The elements that use `conaction="mark"` and `conaction="pushbefore"` are the same type as each other and appear in sequence.
-   Either the container elements of the source and target match, or the container of the source element is a specialization of the target's container. This is also to ensure validity of the target; for example, while it is possible to include multiple titles in a `<section>`, it is not possible to do so in a figure. Comparing the parents prevents a second `<section>` title from being pushed before a figure title. This restriction only applies to the pushbefore orpushafter actions, not to the pushreplace action.

When content is pushed from one topic to another, it is still rendered in the original context. Processors might choose not to render the empty element that has the `conaction="mark"` attribute. In order to push content from a topic without actually rendering that topic on its own, the topic should be referenced from the map with the `@processing-role` attribute set to "resource-only".

## Combining `@conaction` with `@conkeyref` or `@conrefend`

The `@conkeyref` attribute can be used as an indirect way to specify a `@conref` target. If the `@conkeyref` attribute is specified on an element that also uses the `@conaction` attribute, the `@conkeyref` attribute is used to determine the target of the conref push \(as it would normally be used to determine the target of `@conref`\).

The conref push function does not provide the ability to push a range of elements, so it is an error to specify the `@conrefend` attribute together with the `@conaction` attribute. If the two are specified together an application can recover by warning the user, ignoring the `@conrefend` attribute, or with some other implementation strategy.

**Parent topic:**[Content reference \(conref\)](../../archSpec/base/conref.md)

