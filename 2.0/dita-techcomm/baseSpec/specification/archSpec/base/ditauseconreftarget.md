# Using the -dita-use-conref-target value

When an element uses `@conref` to pull in content, for any of its attributes assigned a value of -dita-use-conref-target, the resulting value for those attributes is also pulled in from the referenced element.

Ordinarily, when an element uses `@conref`, any other attributes specified locally will be preserved when the reference is resolved. This causes problems when attributes are required, because required attributes must be specified regardless of whether the `@conref` attribute is present. The purpose of the -dita-use-conref-target value is to allow the author to specify a value for a required attribute while still allowing the conref resolution process to use the matching attribute from the referenced element. The value has the same result when the attribute is not required.

The-dita-use-conref-target token is allowed on any attribute where it is not prohibited by the XML grammar files or by the specification. For example, while `@cols` on the `<tgroup>` element is defined as being a number, this token is implicitly allowed in order to support conref processing for `<tgroup>`. However, the token is not allowed for the `@id` attribute on the `<topic>` element, because "-dita-use-conref-target" does not fit the syntax required by the XML grammar files.

