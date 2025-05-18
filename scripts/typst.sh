filename="$1"

input_dir="blocks_typ"
output_dir="blocks_pdf"

input_file="${input_dir}/${filename}.typ"
output_file="${output_dir}/${filename}.pdf"

# Remove old PDF if it exists
rm -f "$output_file"
docker run --rm -v $(pwd):/work -w /work typst compile --root /work "$input_file" "$output_file"
