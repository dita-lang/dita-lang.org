---
author: OASIS DITA Technical Committee
---

# Processing key references

Key references can resolve as links, as text, or as both. Within a map, they also can be used to create or supplement information on a topic reference. This topic covers information that is common to all key processing, regardless of how the key is used.

## Processing of undefined keys

If both `@keyref` and `@href` attributes are specified on an element, the `@href` value MUST be used as a fallback address when the key name is undefined. If both `@conkeyref` and `@conref` attributes are specified on an element, the `@conref` value MUST be used as a fallback address when the key name is undefined.

## Determining effective attributes on the key-referencing element

The attributes that are common to the key-defining element and the key-referencing element, other than the `@keys`, `@processing-role`, and `@id` attributes, are combined as for content references, including the special processing for the `@xml:lang`, `@dir`, and `@translate` attributes.

## Keys and conditional processing

The effective key definitions for a key space might be affected by conditional processing \(filtering\). Processors SHOULD perform conditional processing before determining the effective key definitions. However, processors might determine effective key definitions before filtering. Consequently, different processors might produce different effective bindings for the same map when there are key definitions that might be filtered out based on their filtering attributes.

**Note:** In order to retain backwards compatibility with DITA 1.0 and 1.1, the specification does not mandate a processing order for different DITA features. This makes it technically possible to determine an effective key definition, resolve references to that key definition, and then filter out the definition. However, the preferred approach is to take conditional processing into account when resolving keys, so that key definitions which are excluded by processing are not used in resolving key references.

## Reusing a topic in multiple key scopes

If a topic that contains key references is reused in multiple key scopes within a given root map such that its references resolve differently in each use context, processors MUST produce multiple copies of the source topic in resolved output for each distinct set of effective key definitions that are referenced by the topic.

In such cases, authors can use `<resourceid>` within topic references to specify distinct anchor components for each instance of the topic.

with the `@appid-role` attribute set to deliverable-anchor to specify different source URIs for each reference to a topic.

## Error conditions

If a referencing element contains a key reference with an undefined key, it is processed as if there were no key reference, and the value of the `@href` attribute is used as the reference. If the `@href` attribute is not specified, the element is not treated as a navigation link. If it is an error for the element to be empty, an implementation MAY give an error message; it also MAY recover from this error condition by leaving the key reference element empty.

**Parent topic:**[Indirect key-based addressing](../../archSpec/base/key-based-addressing.md)

