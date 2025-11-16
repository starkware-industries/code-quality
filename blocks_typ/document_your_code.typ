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
// Do not change the font size.
#set text(size: 13pt)
// Add the name of the file.
#logo("document_your_code")
// Add name + block number here
#block_header(11, [Document Your Code])\
// Fill text in the 'what' section
#what
\ *DOCUMENTATION = TL;DR.*\
// Fill text in the 'why' section
#why
\ It gives people the option to use your code without digging through the details.
// Fill text in the 'how' section
#how
\ *Documnetation comments (`///`)*: describes what the function does and how to use it — for someone reading the API, not the implementation.
// If you need a good code section, fill here with the correct language.
#good_code[```rust
/// Returns the factorial of a non-negative integer.
///
/// # Arguments
/// * `n` - The number to compute the factorial for.
///
/// # Panics
/// Panics if `n` is greater than 20 to avoid overflow.
fn factorial(n: u64) -> u64 {
```]
\ *Implementation comments (`//`)*: explains how the code works internally — for someone reading the logic.
#good_code[```rust
fn calculate_discount(price: u64, is_vip: bool) -> u64 {
    if is_vip { price * 0.8 } // VIP users get a 20% discount.
    else { price }
}
```]
// If you need a tip section, fill here
#tip[
  1. Remember- the code *doesn't* document itself, at least for the averge human.
  2. Put effort into *naming* your variables and functions. Stuck? Ask your good-at-names teammate for inspiration. If it feels impossibly hard - that might be a design problem in disguise.
  3. Break your code into *“paragraphs”* - logical chunks with blank lines. If it makes sense, add a short comment on top to explain what that “paragraph” does.
]
#call_for_action[
Pick a random file from your codebase.
Can you understand what it does without reading all of it?
If not, add documentation according to the key points above!
]

// Add slack logo on the bottom right corner, play with the negative number to find the right location.
#v(-1pt)
#slack
