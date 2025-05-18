#import "../src/block_by_block.typ": *

#set page(
  margin: (
    top: 30pt,
    bottom: 30pt,
    left: 50pt,
    right: 50pt,
  )
)
#set text(size: 14pt)

#logo

// Add name + block number here
#block_header(0, [Git Like a Surgeon])

// Fill text in the 'what' section
#what
\ Example

// Fill text in the 'why' section
#why
\ Example

// Fill text in the 'how' section
#how
\ Example


// If you need a code section, fill here with the correct language
#code[```bash
Example
```]

// If you need a tip section, fill here
#tip[
  Example
]

// If you need a call for action section, fill here
#call_for_action[
  Example
]
