#import "../src/block_by_block.typ": *

#set page(
  margin: (
    top: 30pt,
    bottom: 0pt,
    left: 50pt,
    right: 50pt,
  ),
  background: [#page_border(green)],
)

// Do not change the font size.
#set text(size: 13pt)

// Add the name of the file.
#logo("early_return")

// Add name + block number here
#block_header(9, [Use Early Return])\
// Fill text in the 'what' section
#why
\ Because your main logic shouldn’t be wrapped in layers of `if`:
#bad_code[```rust
fn watch_movie(user: User) -> Result<(), WatchMovieError> {
    if user.is_authenticated() {
        if user.is_premium_plan() {
            if user.pay().is_ok() {
                user.watch_movie()
            }
        }
    }
    Err(WatchMovieError::AccessDenied)
}
```]
And imagine the main logic wasn’t just one line... pretty messy, right?
// Fill text in the 'how' section
\ #how
\ Just flip the condition, add an early return and let the main logic breath.
#good_code[```rust
fn watch_movie(user: User) -> Result<(), WatchMovieError> {
    let AuthStatus::Authenticated(u) = user.auth_status() else {
        return Err(WatchMovieError::NotAuthenticated);
    };
    if !user.is_premium_plan() {
        return Err(WatchMovieError::NonPremiumUser);
    }
    user.pay()?;
    user.watch_movie()
}
```]
\ This code is easier to understand - a simple list of checks, each with its corresponding error, followed by the main logic.
#tip[
   1. The `?` operator is another form of early return. It's a shortcut for:
       #code[```rust
        match user.pay() { Ok(x) => x, Err(e) => { return Err(e); } }
    ```]
  2. *Note:* `continue` = early return for loops!
  3. If your function needs to handle one enum variant, use the let-else syntax as shown in the example above.
  4. Try to avoid early returns in the middle of a large function — they usually make the flow harder to follow instead of clearer. Consider refactoring the function first.
  ]
// Add slack logo on the bottom right corner, play with the negative number to find the right location.
#v(-16pt)
#slack
