#import "../src/block_by_block.typ": *

#set page(
  margin: (
    top: 30pt,
    bottom: 0pt,
    left: 50pt,
    right: 50pt,
  ),
  // Choose your block color here
  background: [#page_border(blue)],
)
#set text(size: 14pt)

// Add the name of the file.
#logo("git_like_a_surgeon")

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


// If you need a code section, fill here with the correct language.
#code[```bash
Example
```]

// If you need a bad code section, fill here with the correct language.
#bad_code[```bash
Example
```]

// If you need a good code section, fill here with the correct language.
#good_code[```bash
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

// Add slack logo on the bottom right corner, play with the negative number to find the right location.
#v(-20pt)
#slack
