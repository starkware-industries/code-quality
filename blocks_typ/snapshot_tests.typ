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
\ Snapshot tests are tests that compare a value against a hard-coded expected output, stored right there in your code (or in a separate file). If the output changes — the test fails and shows you the diff, as if to say: “Here’s what the output used to be. Here’s what it is now. Are we still cool with this?”
// Fill text in the 'why' section
\ #why
\ Imagine ou have just finished to write a fancy function:
#code[```bash
  fn square(x: i32) -> i32 {
    x * x
}
```]
and now it time to test it!
#bad_code[```bash
  #[test]
  fn test_square() {
    assert_eq!(square(3), 3 * 3);
  }
```]
If the function is wrong, the test will be wrong *in the exact same way* — and you’ll never catch it.

#good_code[```bash
  #[test]
  fn test_square() {
    assert_eq!(square(3), 9);
  }
```]
This snapshot test checks what the result should be, not just repeats how it's computed.
// Fill text in the 'how' section
\ #how
\ Just find an output you know is correct and compare it to the result of the function.
\ How *NOT* to do it ?
\ ❌ Don’t snapshot non-deterministic output- for example hashmaps!
\ ❌ Don’t snapshot output that changes over time, for example timestamps!
\ ❌ Don’t snapshot output that depends on the environment/user, for example file paths!

// If you need a tip section, fill here
#tip[
  Snapshot tests are also known as golden tests. Why “golden”? Because you're comparing the current output to a "golden" version — a known-good result saved from a previous run.
]


// Add slack logo on the bottom right corner, play with the negative number to find the right location.
#v(-15pt)
#slack
