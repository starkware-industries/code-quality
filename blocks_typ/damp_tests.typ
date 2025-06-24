#import "../src/block_by_block.typ": *

#set page(
  margin: (
    top: 30pt,
    bottom: 30pt,
    left: 50pt,
    right: 50pt,
  )
)
#set text(size: 12pt)

#logo("damp_tests")

// Add name + block number here
#block_header(4, [Don't make your tests too DRY])
\ by guy.f@

// Fill text in the 'what' section
#what
\  The DRY principle (“Don’t Repeat Yourself”), is a best practice that encourages code reuse rather
than duplication, e.g., by extracting helper methods or by using loops. But is it also the best
thing for tests?
\ Is it clear what this test does just from reading its code?

#bad_code[```rust
#[test]
fn verify_positive_balance_on_transfer() {
  let mut account = create_default_account();  // Test helper method.
  make_transfers(&mut account);                // Test helper method.
  assert!(account.has_positive_balance());
}

```]


#why
\ While the test body above is concise, the reader cannot understand what it does without context
switching to another place. Since tests don't have tests, it should be easy for humans to manually
inspect them for correctness, even at the expense of greater code duplication.

#how
\ Make your tests *DAMP*! (Descriptive and Meaningful Phrases).
\ In the context of unit tests, this test would be easier to read and verify for correctness:

#good_code[```rust
#[test]
fn verify_positive_balance_on_transfer() {
  const BALANCE : u32 = 50;
  let mut new_account = Account::new(AccountType::NO_OUTGOING_TRANSFERS(0));
  let mut account_with_balance =
      Account::new(AccountType::SUPPORTS_TRANSFERS(BALANCE));

  assert!(!new_account.has_positive_balance());
  account_with_balance.transfer_to(&mut new_account, BALANCE);
  assert!(new_account.has_positive_balance());
}

```]

#tip[
  The DRY principle is still relevant in tests. Ideally,
  test code should be both readable and unique, but sometimes there’s a trade-off. When writing unit
  tests and faced with a choice between the DRY and DAMP principles, lean more heavily toward DAMP.
]

