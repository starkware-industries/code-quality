
# 🧱 Block by Block – Typst Contribution Guide

Hello and thank you for helping us build a block! 🙌  
This guide walks you through creating, editing, and compiling a block using typst.  
Don't worry — we've made it super easy to use!


## 🚀 Step 1: Build the Docker Image

```bash
cd scripts
docker build -t typst .
```
## ✍️ Step 2: Create Your Blockide

1. Copy the template file named `block_typ/new_block.typ`.
2. Rename the copy to '<your_block_name>.typ'
3. Open the file and fill in the relevant sections with your content. For inspiration, you can browse existing PDFs in the blocks_pdf/ directory.


## 🛠️ Step 3: Compile Your Block

Once your `.typ` file is ready, compile it using the provided script:

```bash
./scripts/typst.sh <path_to_file>
```

## 📄 Step 4: Preview Your Block

After compiling, your block will be available as a PDF in the `blocks_pdf/` directory.

Open the file and make sure everything fits neatly on a single page. You can cut sections if needed.

##  📤 Step 5: Push your changes

Push both the `.typ` file and the generated PDF to the Git repository.
---

🎉 Thanks for sharing your knowledge with us — your block will help the whole team grow!