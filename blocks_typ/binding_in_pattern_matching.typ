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
#set text(size: 14pt)

// Add the name of the file.
#logo("git_like_a_surgeon")

// Add name + block number here
#block_header(8, [Binding in Pattern Matching])

// Fill text in the 'what' section
#what
\ Use \@ in pattern matching to bind a name to the value you're matching.

// Fill text in the 'why' section
#why
\ Make your pattern matching shorter and more readable.

// Fill text in the 'how' section
#how
\ Simplify your code!
// If you need a code section, fill here with the correct language.
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
\ You can also use it to pattern match while still being able to use the value. For example:
// If you need a bad code section, fill here with the correct language.
#code[```rust
match result {
    Err(e @ RecoverableError { .. })
        if fail_on_recoverable_error =>
    {
        return Err(ManagerError::RecoverableError(e));
    }
    Err(err) => {
        // Handle other errors
    }
}
```]

// If you need a call for action section, fill here
#call_for_action[
  \ Take a quick look at the matching in your area of code.\
  *Maybe it could use a \@!*
]

// Add slack logo on the bottom right corner, play with the negative number to find the right location.
#v(-10pt)
#slack
