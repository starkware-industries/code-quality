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
#logo("informative_test_error_message")

// Add name + block number here
#block_header(13, [Informative Test Error Message])

#what
\ When a test fails, the error message should provide enough information to help understand the issue.

#why
\ Help future developers debug and maintain the code.

The following code prints a non informative error message.
#bad_code[```rust
#[test]
fn my_test() {
  let result = TransactionExecutor().add_tx(reverted_tx());
  assert!(result.is_ok());
}
```]
#code[```
thread 'my_tests::my_test' panicked at my_tests.rs:37:5:
assertion failed: result.is_ok()
```]

Provide an error message argument to the `assert!` macro. Print what matters.
#good_code[```rust
#[test]
fn my_readable_test() {
  let result = TransactionExecutor().add_tx(reverted_tx());
  assert!(result.is_ok(), "Transaction execution failed: {result:?}");
}
```]
#code[```
thread 'my_tests::my_readable_test' panicked at my_tests.rs:43:5:
Transaction execution failed: Err(Reverted("impl detail"))
```]

The following code uses `assert_matches!` which provides clear error messages when the assertion fails.
#bad_code[```rust
#[test]
fn my_other_test() {
  let result = TransactionExecutor().add_tx(test_tx());
  if let Err(TxExecutorError::Reverted(message)) = result {
    assert!(message.contains("impl detail"));
  } else {
    panic!("Expected Reverted error, got: {:?}", result);
  }
}
```]
#code[```
thread 'my_tests::my_other_test' panicked at my_tests.rs:49:5:
Expected Reverted error, got: Ok(())
```]

Use `assert_matches!` for pattern matching assertions. It provides clearer error messages.
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

#v(-20pt)
#slack
