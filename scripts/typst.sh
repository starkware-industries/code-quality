input_file="$1"

# Extract the base filename without directory and extension
filename=$(basename "$input_file" .typ)

output_dir="blocks_pdf"

output_file="${output_dir}/${filename}.pdf"

# Generate file qr code
docker run --rm -v $(pwd):/work -w /work --entrypoint bash typst ./scripts/generate_qr.sh "$filename"

docker run --rm -v $(pwd):/work -w /work typst compile --root /work "$input_file" "$output_file"
