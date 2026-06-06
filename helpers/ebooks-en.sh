#!/usr/bin/env bash

set -e

EBOOK_NAME="Allowing-Intuition"
EPUB_FILE="$EBOOK_NAME.epub"

cp book-en.toml book.toml

mdbook-epub --standalone

rm book.toml

mv ./book/*.epub ./

# The epub is generated with the title as file name, but use a non-accented file name for storage.
mv "Allowing Intuition, Revelation, and Insight.epub" "$EPUB_FILE"

~/bin/epubcheck "./$EPUB_FILE"

echo "OK"
