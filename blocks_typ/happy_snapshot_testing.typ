#import "../src/block_by_block.typ": *

#set page(
  margin: (
    top: 30pt,
    bottom: 30pt,
    left: 50pt,
    right: 50pt,
  ),
  // Choose your block color here
  background: [#page_border(red)],
)
#set text(size: 14pt)
#logo("happy_snapshot_testing")
#block_header(7, [Making Peace With Snapshot Tests])
#what
\ Snapshot tests - although not ideal - are sometimes useful, like when testing the gas cost of a fixed transaction.\
#why
\ When snapshot tests break, the new correct hard-coded values are often already known — the computer just printed them! So why should we fix them manually?\
#how
\ All rise for the *expect-test* crate 🎉  — from now on, hard-coded values fix themselves with this magic command: ```rust UPDATE_EXPECT=1 cargo test```.
\ Instead of:
#bad_code(```rust assert_eq!(computed_value, 7)```)
\ Write this (running the fix command will-auto fix the number in code):
#good_code[```rust
expect!["7"].assert_debug_eq(computed_value);
```]
\ *Oh, you’ve got multiple test cases? No worries!*
#code[```rust
fn my_gas_test(#[values(2, 3)] gas_price: u8) {
    let result = execute_tx(gas_price).gas_price;
    if gas_price == 2 {
        expect!["18"].assert_debug_eq(result);
    } else {
        expect!["27"].assert_debug_eq(result);
    }
}
```]
\ *Wait, the expected output is in a file? No problem!*
#code[```rust
expect_file!["path_to_file.txt"].assert_debug_eq(computed_value);
```]
// If you need a tip section, fill here
#call_for_action([\ Remember that time you were copy-pasting expected values into a test,
  while quietly wondering why you spent 4 years studying for this?\
  *Do your teammates a favor—go fix this code now!*])
#v(-17pt)
#slack
