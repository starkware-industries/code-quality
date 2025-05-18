input_file="$1"

# Extract the base filename without directory and extension
filename=$(basename "$input_file" .typ)

output_dir="blocks_pdf"

output_file="${output_dir}/${filename}.pdf"

# Remove old PDF if it exists
rm -f "$output_file"

docker run --rm -v $(pwd):/work -w /work typst compile --root /work "$input_file" "$output_file"
