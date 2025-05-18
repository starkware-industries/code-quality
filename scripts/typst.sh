# Get filename without extension
filename="${1%.*}"

# Remove old PDF if it exists
rm -f "$filename.pdf"
docker run --rm -v $(pwd):/work -w /work typst compile $1
