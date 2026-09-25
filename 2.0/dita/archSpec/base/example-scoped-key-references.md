---
author: OASIS DITA Technical Committee
---

# Example: References to scoped keys

You can address scoped keys from outside the key scope in which the keys are defined.

```
<map xml:lang="en">
  <title>Examples of scoped key references</title>

  <!-- Key scope #1 -->
  <topicgroup keyscope="scope-1">
    **&lt;keydef keys="key-1" href="topic-1.dita"/&gt;**
    <topicref keyref="key-1"/>
    <topicref keyref="scope-1.key-1"/>
    <topicref keyref="scope-2.key-1"/>
  </topicgroup>

  <!-- Key scope #2 -->
  <topicgroup keyscope="scope-2">
    **&lt;keydef keys="key-1" href="topic-2.dita"/&gt;**
    <topicref keyref="key-1"/>
    <topicref keyref="scope-1.key-1"/>
    <topicref keyref="scope-2.key-1" />
  </topicgroup>

  <topicref keyref="key-1" />
  <topicref keyref="scope-1.key-1" />
  <topicref keyref="scope-2.key-1" />

</map>
```

For this example, the effective key definitions are listed in the following tables.

|Key reference|Resource|
|-------------|--------|
|key-1|`topic-1.dita`|
|scope-1.key-1|`topic-1.dita`|
|scope-2.key-1|`topic-2.dita`|

|Key reference|Resource|
|-------------|--------|
|key-1|`topic-2.dita`|
|scope-1.key-1|`topic-1.dita`|
|scope-2.key-1|`topic-2.dita`|

|Key reference|Resource|
|-------------|--------|
|key-1|Undefined|
|scope-1.key-1|`topic-1.dita`|
|scope-2.key-1|`topic-2.dita`|

**Parent topic:**[Examples of scoped keys](../../archSpec/base/examples-of-scoped-keys.md)

