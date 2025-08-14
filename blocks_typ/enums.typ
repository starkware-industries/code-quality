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
\ Everyone knows what enums are — but knowing when to use them isn’t always obvious.
\ Here’s the rule of thumb: if your type can only take on a few known values, you should enum it.\
#why
\ Enums make your code self-documenting, more readable, and give the compiler a chance to catch your bugs before your teammate does.\
#how
#bad_code[```rust
struct LoggingConfig {
    enabled: bool,
    // If not enabled, we don't know the level.
    level: Option<LogLevel>,
}
impl LoggingConfig {
    fn log(&self, message: &str) {
        if self.enabled {
            // Why taking the risk of panicking here?
            let level = self.level.unwrap();
            log(level, message);
        }
    }
}
```]
Let's just enum it:
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
#tip[
  Planning to (de)serialize? Reach for a struct, not an enum.
Enums tend to confuse other languages.
]
#v(-20pt)
#slack
