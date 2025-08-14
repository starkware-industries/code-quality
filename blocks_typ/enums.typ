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
#logo("enums")
#block_header(7, [Rust enums are great!])\
#what
\ Rust enums let you name and limit the valid states a variable can take.
\ If your type can only take on a few known values - you should enum it!\
#why
\ Enums make your code self-documenting, more readable, and give the compiler a chance to catch your bugs before your teammate does.\
#how
#bad_code[```rust
struct InputSource {
    is_stdin: bool, // Either a file or stdin.
    path: Option<String>,
}
...
let input = if input.is_stdin {
    read_from_stdin();
} else if let Some(path) = &input.path {
    read_from_file(path);
} else {
    panic!("Invalid InputSource configuration!");
};
```]
\ This struct enables invalid configurations like:  `InputSource{is_stdin:false, path:None}`.
 Let's *Enum* it:
#good_code[```rust
enum InputSource {
    Stdin,
    File(String),
}
...
let input = match input {
    InputSource::Stdin => read_from_stdin(),
    InputSource::File(path) => read_from_file(path),
};
```]
#call_for_action[ Use enums rather than strings in the config, and you’l never has to spel corectly agan.
#code[```rust error: invalid value 'executble' for '--program_type <PROGRAM_TYPE>'
  [possible values: executable, json]``` ]
]
#v(-15pt)
#slack
