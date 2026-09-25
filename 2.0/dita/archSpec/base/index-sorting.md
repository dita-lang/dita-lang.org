---
author: OASIS DITA Technical Committee
---

# Index sorting

The combination of an `<indexterm>` and a `<sort-as>` element specifies a sort phrase under which an index entry is grouped or sorted.

This gives an author the flexibility to sort an index entry in an index differently from how its text normally would be grouped or sorted. The common use for this scenario is to disregard insignificant leading text, such as punctuation or words like "the" or "a". For example, the author might want `<data>` to be sorted under the letter D rather than the left angle bracket \(&lt;\). An author might want to include such an entry under both the punctuation heading and the letter D, in which case there can be two index entries differentiated only by the sort-as value.

Certain languages have special sort order needs. For example, Japanese index entries might be written partially or wholly in kanji, but need to be sorted in phonetic order according to its hiragana/katakana rendition. There is no reliable automated way to map written to phonetic text: for kanji text, there can be multiple phonetic possibilities depending on the context. The only way to correctly sort Japanese index entries is to keep the phonetic counterparts with the written forms. The phonetic text would be presented as the sort-as value for indexing purposes.

**Parent topic:**[Indexes](../../archSpec/base/indexes.md)

