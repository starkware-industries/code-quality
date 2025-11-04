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
#set text(size: 13pt)

// Add the name of the file.
#logo("binding_in_pattern_matching")

// Add name + block number here
#block_header(10, [Binding in Pattern Matching])
// Fill text in the 'what' section
#what
\ The \@ operator lets you bind a name to a value while matching it against a pattern.
// Fill text in the 'why' section
#why
\ Fewer branches -> Fewer lines -> Cleaner logic.\
// Fill text in the 'how' section
#how
#bad_code[```rust
if let Some(v) = value {
    if (1..=10).contains(&v) {
        println!("Value {v} is in range");
    }
}
```]
#good_code[```rust
if let Some(v @ 1..=10) = value {
    println!("Value {v} is in range");
}
```]
\
// If you need a bad code section, fill here with the correct language.

You can also match: An enum variant!
#good_code[```rust
match result {
    Err(e @ RecoverableError { .. }) =>
        println!("Failing due to recoverable error: {:?}", e),
    Err(e @ FatalError { .. }) =>
        println!("Fatal error! Shutting down: {e}"),
    Ok(_) =>
        println!("Success!"),
}
```]
A pattern inside a tuple!
#good_code[```rust
if let Some(point @ (x, y)) = pair {
    println!("Got point with x = {x}, y = {y}");
}
```]
A struct field!
#good_code[```rust
if let u @ User { age: 18..=30, .. } = user {
    println!("{u.name} is a young user");
}
```]
#call_for_action([Find one place in your code to make the it cleaner using the \@ operator, send a PR, and make your TL proud!])
// Add slack logo on the bottom right corner, play with the negative number to find the right location.
#v(-12pt)
#slack
