#!/usr/bin/env python3
"""Replace an XML element (and its contents), matched by its "id" attribute
value, with a replacement XML fragment -- preserving every other byte of the
file exactly as-is (including unusual whitespace/quoting in untouched tags).

Usage:
    python replace_by_attr.py <file> <id-value> <replacement-xml>
"""
import sys
import xml.parsers.expat


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


def replace_by_attr(data: bytes, attr: str, value: str, replacement: bytes) -> bytes:
    """Return `data` with every element matching `attr`=`value` replaced by
    `replacement`. Returns `data` unchanged if nothing matches."""
    spans = find_element_spans(data, attr, value)
    result = data
    for start, end in sorted(spans, reverse=True):
        result = result[:start] + replacement + result[end:]
    return result


def main():
    if len(sys.argv) != 4:
        raise SystemExit(f"Usage: {sys.argv[0]} <file> <id-value> <replacement-xml>")
    path, id_value, replacement_xml = sys.argv[1:4]

    with open(path, "rb") as f:
        data = f.read()

    result = replace_by_attr(data, "id", id_value, replacement_xml.encode("utf-8"))
    if result == data:
        print(f"No element found with id={id_value!r}; left {path} unchanged.", file=sys.stderr)

    with open(path, "wb") as f:
        f.write(result)


if __name__ == "__main__":
    main()
