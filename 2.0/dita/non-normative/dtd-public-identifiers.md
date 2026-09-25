---
author: OASIS DITA Technical Committee
---

# Globally-unique identifiers in the base DITA edition

Each DITA grammar file has a globally-unique identifier. This identifier can reference either the latest version or a specific version of the grammar file.

Each of the following grammar files has globally-unique identifier:

-   Document-type shell
-   Structural vocabulary module
-   Element- or attribute domain module
-   Element-configuration module \(constraint or expansion\)

## DTD-based grammar files

The public identifiers for the DTD files that are maintained by OASIS use the following format:

```
"-//OASIS//DTD DITA *version* *information-type*//EN"
```

where:

-   *version* either is the specific version number \(for example, 2.0\) or 2.x, which represents the most recent version of DITA 2.x. Omitting the version number entirely is also equivalent to the most recent version of DITA 2.x.
-   *information-type* is the name of the topic or map type, for example, Base Topic.

Note that "OASIS" is the owner identifier; this indicates that the artifacts are owned by OASIS. The keyword "DITA" is a convention that indicates that the artifact is DITA-related.

## RNG-based grammar files

The URNs for the RNG files that are maintained by OASIS use the following format:

```
"urn:pubid:oasis:names:tc:dita:rng:*information-type*.rng:*version*"
```

where:

-   *version* either is the specific version number \(for example, 2.0\) or 2.x, which represents the most recent version of DITA 2.x. Omitting the version number entirely is also equivalent to the most recent version of DITA 2.x.
-   *information-type* is the name of the topic or map type, for example, basetopic

Note that oasis is the owner identifier; this indicates that the artifacts are owned by OASIS. The keyword dita is a convention that indicates that the artifact is DITA-related.

**Parent topic:**[OASIS grammar files](../non-normative/basedoctypes.md)

