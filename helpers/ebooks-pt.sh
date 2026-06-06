#!/usr/bin/env bash

set -e

EBOOK_NAME="Dar-Lugar-a-Intuicao"
EPUB_FILE="$EBOOK_NAME.epub"

cp book-pt.toml book.toml

mdbook-epub --standalone

rm book.toml

mv ./book/*.epub ./

# The epub is generated with the title as file name, but use a non-accented file name for storage.
mv "Dar Lugar à Intuição, à Revelação e à Visão Profunda.epub" "$EPUB_FILE"

~/bin/epubcheck "./$EPUB_FILE"

echo "OK"
