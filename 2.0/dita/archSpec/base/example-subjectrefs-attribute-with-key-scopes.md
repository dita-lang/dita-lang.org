---
author: OASIS DITA Technical Committee
---

# Example: `@subjectrefs` attribute with key scopes

A subject scheme map can be included in a map as either a normal sub map or as a peer root map and associated with a key scope on the map reference.

Consider the following map, in which a subject scheme map is included as a sub map with a key scope:

```
<map>
 <title>User assistance for the Acme Widget</title>
 <!-- ... -->
 <mapref keyscope="subjects" href="subjectschemes/subject-scheme-01.ditamap"/>
 <topicref keyref="install-overview" subjectrefs="subjects.installing">
   <topicref keyref="install-linux"/>
   <topicref keyref="install-macosx"/>
   <topicref keyref="install-windows"/>
   <topicref keyref="install-troubleshooting" subjectrefs="subjects.troubleshooting"/>
 </topicref>
 <!-- ... --> 
</map>
```

The keys defined in referenced subject scheme map are included in the referencing map's key space. References to the subject keys must be scope qualified \(i.e., "subjects.installing"\). Putting the subject scheme keys in a key scope ensures that the keys defined in the subject scheme do not conflict with any keys defined elsewhere in the referencing map \(although the referencing map could still override any keys defined in the subject scheme map\).

The subject scheme map can also be referenced as a peer-scope root map in a key scope:

```
<map>
 <title>User assistance for the Acme Widget</title>
 <!-- ... -->
 <mapref keyscope="subjects" scope="peer" href="subjectschemes/subject-scheme-01.ditamap"/>
 <topicref keyref="install-overview" subjectrefs="subjects.installing">
   <topicref keyref="install-linux"/>
   <topicref keyref="install-macosx"/>
   <topicref keyref="install-windows"/>
   <topicref keyref="install-troubleshooting" subjectrefs="subjects.troubleshooting"/>
 </topicref>
 <!-- ... --> 
</map>
```

As a peer map, the keys defined in the subject scheme map are not included in the referencing map's key space but may be resolved using normal cross-deliverable key reference resolution. Processors that support cross-deliverable linking may also choose to resolve references from @"subjectrefs" to keys in peer subject scheme maps, for example to report keys specified on @"subjectrefs" that cannot be found in the peer subject scheme map.

**Parent topic:**[Examples of scoped keys](../../archSpec/base/examples-of-scoped-keys.md)

