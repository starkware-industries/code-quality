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
#logo("document_your_code")
// Add name + block number here
#block_header(11, [Document Your Code])\
// Fill text in the 'what' section
#what
\ *DOCUMENTATION = TL;DR.*\
// Fill text in the 'why' section
#why
\ It gives people the option to use your code without digging through the details.
// Fill text in the 'how' section
#how
\ *Documentation comments (`///`)*: describes what the function does and how to use it — for someone reading the API, not the implementation.
\ *Implementation comments (`//`)*: explains how the code works internally — for someone reading the logic. Break your code into *"paragraphs"* - logical chunks with blank lines and add an implementation comment on top.
// If you need a good code section, fill here with the correct language.
#good_code[```rust
/// Calculate the total price for a given order.
fn calculate_price(user: User, order: Order) -> u64 {

    // Sum the price of all items in the order.
    let mut price = order.items.iter().map(|i| i.price).sum::<u64>();

    // Apply discount if the user is eligible.
    let discount = calculate_discount(&user, price);
    price-=discount;

    // Add tax based on the user's tax rate.
    price += calculate_tax(&user, price);

    price
}
```]
// If you need a tip section, fill here
#tip[
  1. Remember- the code *doesn't* document itself, at least for the average human. Make sure you document your structs/enums, their members and functions.
  2. Put effort into *naming* your variables and functions. Stuck? Ask your good-at-names teammate for inspiration or your favourite AI tool. If it feels impossibly hard - that might be a design problem in disguise.
]
#call_for_action[
  Next time you're frustrated by undocumented code?
  Don’t just complain — add a doc and save someone else the pain.
]

// Add slack logo on the bottom right corner, play with the negative number to find the right location.
#v(-10pt)
#slack
