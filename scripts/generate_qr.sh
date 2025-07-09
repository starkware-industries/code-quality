#!/bin/bash

FILE_NAME="$1"

# === Configuration ===
GIT_PDF_URL="https://github.com/starkware-industries/code-quality/tree/main/blocks_pdf"
QR_REPO="./src/images/qr"

FULL_PDF_URL="${GIT_PDF_URL}/$FILE_NAME.pdf"
OUTPUT_FILE="${QR_REPO}/$FILE_NAME.svg"

# === Generate QR Code as SVG ===
qrencode -o "$OUTPUT_FILE" -t SVG "$FULL_PDF_URL"

# === Confirm Output ===
if [ -f "$OUTPUT_FILE" ]; then
    echo "✅ QR code saved as $OUTPUT_FILE"
else
    echo "❌ Failed to create QR code"
fi
