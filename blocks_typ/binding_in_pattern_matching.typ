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
        println!("Value {} is in range", v);
    }
}
```]
#good_code[```rust
if let Some(v @ 1..=10) = value {
    println!("Value {} is in range", v);
}
```]
\
// If you need a bad code section, fill here with the correct language.
Or match pattern of enum:
#good_code[```rust
match result {
    Err(e @ RecoverableError { .. }) =>
        println!("Failing due to recoverable error: {:?}", e),
    _ => {...}
}
```]
Or match pattern of tuple:
#good_code[```rust
if let Some(point @ (x, y)) = pair {
    println!("Got point {:?} with x = {}, y = {}", point, x, y);
}
```]
Or match pattern of field in struct:
#good_code[```rust
struct User {
    name: String,
    age: u8,
}
if let u @ User { age: 18..=30, .. } = user {
    println!("{:?} is a young user", u.name);
}
```]
#call_for_action([Find one place in your code to use the \@ operator, open a PR, and make your TL proud!])
// Add slack logo on the bottom right corner, play with the negative number to find the right location.
#v(-18pt)
#slack
