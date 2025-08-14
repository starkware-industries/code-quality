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
\ Rust enums let you to name and limit the valid states a variable can take in your domain.
\ If your type can only take on a few known values- you should enum it!\
#why
\ Enums make your code self-documenting, more readable, and give the compiler a chance to catch your bugs before your teammate does.\
#how
#bad_code[```rust
struct LoggingConfig {
    enabled: bool,
    level: Option<LogLevel>,
}
impl LoggingConfig {
    fn log(&self, message: &str) {
        if self.enabled {
            let level = self.level.unwrap(); // Can panic here!
            log(level, message);
        }
    }
}
```]
\ This struct enables invalid configurations like LoggingConfig { enabled: true, level: None } or { enabled: false, level: Some}.
 Let's *Enum* it:
#good_code[```rust
enum LoggingConfig {
    Disabled,
    Enabled(LogLevel),
}
impl LoggingConfig {
    fn log(&self, message: &str) {
          if let Self::Enabled(level) = self { // No risk of panicking.
              log(level, message);
        }
    }
}
```]
#call_for_action[ Use enums rather then strings in the config, and you’l never has to spel corectly agan.
#code[```rust error: invalid value 'executble' for '--program_type <PROGRAM_TYPE>'
  [possible values: executable, json]``` ]
]
#v(-810pt)
#slack
