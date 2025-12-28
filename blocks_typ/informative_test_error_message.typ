#import "../src/block_by_block.typ": *

#set page(
  margin: (
    top: 30pt,
    bottom: 0pt,
    left: 50pt,
    right: 50pt,
  ),
  // Choose your block color here
  background: [#page_border(green)],
)
// Do not change the font size.
#set text(size: 13pt)

// Add the name of the file.
#logo("informative_test_error_message")

// Add name + block number here
#block_header(13, [Informative Test Error Message])

On #what - this is the question you want to avoid when a test fails on ```rust assertion_failed``` !

#why
\ Which one you had preffered to debug:
// #bad_code[```rust
// #[test]
// fn my_test() {
//   let result = TransactionExecutor().add_tx(reverted_tx());
//   assert!(result.is_ok());
// }
// ```]
#bad_code[```
assertion failed: result.is_ok()
```]
#good_code[```
Transaction execution failed: Err(Reverted("impl detail"))
```]
#how
\ Add an error message argument to the `assert!` macro with an *extra* information..
#good_code[```rust
#[test]
fn my_readable_test() {
  let result = TransactionExecutor().add_tx(reverted_tx());
  assert!(result.is_ok(), "Transaction execution failed: {result:?}");
}
```]
Use `assert_matches!` for pattern matching assertions becuse it provides clearer error messages.
#good_code[```rust
#[test]
fn my_other_readable_test() {
    let result = TransactionExecutor().add_tx(test_tx());
    assert_matches!(
        result, Err(TxExecutorError::Reverted(message))
        if message.contains("impl detail")
    );
}
```]
#code[```
thread 'my_tests::my_other_readable_test' panicked my_tests.rs:58:5:
assertion failed: `Ok(())` does not match `Err(TxExecutorError::Reverted(message)) if message.contains("impl detail")`
```]
#tip[
  When writing the test, insert a bug and see how the error message prints.
]
#call_for_action[
  When maintaining a test and you encounter a non informative error message, provide one yourself.
]

#v(-18pt)
#slack
