#import "../src/block_by_block.typ": *

#set page(
  margin: (
    top: 30pt,
    bottom: 0pt,
    left: 50pt,
    right: 50pt,
  ),
  // Choose your block color here
  background: [#page_border(purple)],
)
#set text(size: 13pt)
// Add the name of the file.
#logo("snapshot_tests")
// Add name + block number here
#block_header(6, [Snapshot Testing])
// Fill text in the 'what' section]
\ #what
\ Snapshot tests compare a value against a hard-coded expected output, stored right there in the codebase. If the output changes — the test fails and shows you the diff, as if to say: “Here’s what the output used to be. Here’s what it is now. Are you cool with this?”
// Fill text in the 'why' section
\ #why
\ Imagine you've just finished writing a fancy function:
#code[```rust
  fn div_ceil(x, y) { x / y }
```]
and now it's time to test it!
#bad_code[```rust
  #[test]
  fn test_div_ceil() {
    assert_eq!(div_ceil(7, 2), 7 / 2);
  }
```]
If the function is wrong, the test is wrong *in the exact same way* — and you’ll never catch it.

#good_code[```rust
  #[test]
  fn test_div_ceil() {
    assert_eq!(div_ceil(7, 2), 4);
  }
```]
This snapshot test checks the expected result without repeating the implementation. It's also easier to review the test this way.
// Fill text in the 'how' section
\ #how
\ Just find an output you know is correct and compare it to the result of the function.
\ How *NOT* to do it ?
\ ❌ Don’t assume snapshot tests give you full coverage, they only check specific cases!
\ ❌ Don’t snapshot non-deterministic output, for example, hashmaps!
\ ❌ Don’t snapshot output that changes over time, for example, timestamps!
\ ❌ Don’t snapshot output that depends on the environment, for example, file paths!

// If you need a tip section, fill here
#tip[
  Snapshot tests are also known as golden tests. Why “golden”? Because you're comparing the current output to a "golden" version — a known-good result saved from a previous run.
]


// Add slack logo on the bottom right corner, play with the negative number to find the right location.
#v(-11pt)
#slack
