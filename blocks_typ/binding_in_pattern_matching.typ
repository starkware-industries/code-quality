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
\ The `@` operator lets you bind a name to a value while matching it against a pattern.
// Fill text in the 'why' section
#why
\ Cleaner code -> Cleaner logic.\
// Fill text in the 'how' section
#how
#bad_code[```rust
if let Some(v) = value {
    if (1..=10).contains(&v) { println!("Value {v} is in range"); }
}
```]
#good_code[```rust
if let Some(v @ 1..=10) = value {
    println!("Value {v} is in range");
}
```]
\
// If you need a bad code section, fill here with the correct language.
You can also match: an enum!
#good_code[```rust
match result {
    Err(e @ RecoverableError { .. }) =>
        println!("Failing due to recoverable error: {e:?}"),
    Err(e @ FatalError { .. }) =>
        println!("Fatal error! Shutting down: {e:?}"),
    Ok(_) =>
        println!("Success!"),
}
```]
A pattern inside a tuple!
#good_code[```rust
if let Some((x @ 1..i32::MAX, y @ 1..i32::MAX)) = pair {
        println!("Point is in the first quadrant with x = {x} and y = {y}");
}
```]
A part of a slice!
#good_code[```rust
fn sum_until_zero(nums: &[i32]) -> i32 {
    match nums {
        [] => 0,
        &[x, ref rest @ ..] if x == 0 => sum_until_zero(rest),
        &[x, ref rest @ ..] => x + sum_until_zero(rest),
    }
}
```]
#call_for_action([Find one place in your code to make it cleaner using the \@ operator, send a PR, and make your TL proud!])
// Add slack logo on the bottom right corner, play with the negative number to find the right location.
#v(-13pt)
#slack
