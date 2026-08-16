#!/usr/bin/env python3
"""Replace or prepend to an XML element, matched by its "id" attribute
value, with an XML fragment -- preserving every other byte of the file
exactly as-is (including unusual whitespace/quoting in untouched tags).

Usage:
    python replace_by_attr.py <file> <id-value> <position> <replacement-xml>

`position` is one of:
    replace  - replace the matched element and its contents (default behavior)
    prepend  - insert the fragment immediately before the matched element,
               leaving the matched element itself untouched
"""
import sys
import xml.parsers.expat

POSITIONS = ("replace", "prepend")


def find_element_spans(data: bytes, attr: str, value: str):
    """Return [(start, end)] byte offsets of each element whose `attr`
    equals `value`, spanning the whole element including its end tag
    (or its self-closing '/>')."""
    spans = []
    stack = []  # [matched, start_offset]

    parser = xml.parsers.expat.ParserCreate()

    def start_element(name, attrs):
        start = parser.CurrentByteIndex
        matched = attrs.get(attr) == value
        stack.append([matched, start])

    def end_element(name):
        matched, start = stack.pop()
        idx = parser.CurrentByteIndex
        if data[idx - 2 : idx] == b"/>":
            # Self-closing tag: CurrentByteIndex already points just past '>'.
            end = idx
        else:
            # Normal end tag: CurrentByteIndex points at the '<' of '</name>'.
            end = data.index(b">", idx) + 1
        if matched:
            spans.append((start, end))

    parser.StartElementHandler = start_element
    parser.EndElementHandler = end_element
    parser.Parse(data, True)
    return spans


def replace_by_attr(
    data: bytes, attr: str, value: str, position: str, replacement: bytes
) -> bytes:
    """Return `data` with `replacement` applied at every element matching
    `attr`=`value`. Returns `data` unchanged if nothing matches.

    If `position` is "replace", each matched element (and its contents) is
    replaced by `replacement`. If `position` is "prepend", `replacement` is
    inserted immediately before each matched element, which is otherwise
    left untouched.
    """
    if position not in POSITIONS:
        raise ValueError(f"position must be one of {POSITIONS}, got {position!r}")

    spans = find_element_spans(data, attr, value)
    result = data
    for start, end in sorted(spans, reverse=True):
        cut_end = end if position == "replace" else start
        result = result[:start] + replacement + result[cut_end:]
    return result


def main():
    if len(sys.argv) != 5:
        raise SystemExit(
            f"Usage: {sys.argv[0]} <file> <id-value> <{'|'.join(POSITIONS)}> <replacement-xml>"
        )
    path, id_value, position, replacement_xml = sys.argv[1:5]

    if position not in POSITIONS:
        raise SystemExit(f"position must be one of {POSITIONS}, got {position!r}")

    with open(path, "rb") as f:
        data = f.read()

    result = replace_by_attr(data, "id", id_value, position, replacement_xml.encode("utf-8"))
    if result == data:
        print(f"No element found with id={id_value!r}; left {path} unchanged.", file=sys.stderr)

    with open(path, "wb") as f:
        f.write(result)


if __name__ == "__main__":
    main()
