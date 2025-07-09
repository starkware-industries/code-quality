#import "../src/block_by_block.typ": *

#set page(
  margin: (
    top: 30pt,
    bottom: 0pt,
    left: 50pt,
    right: 50pt,
  ),
  background: [#page_border(blue)],
)
#set text(size: 13.9pt)

#logo("rust_stdlib")

#block_header(4, [Use the standard library])

#what
\ Rust (and Python) have large standard libraries. Use them to replace short loops and common patterns.

#why
\ When we use the standard library the code is shorter, easier to write and easier to understand. In addition, the standard library is already debugged and optimized :)

#how
#code[```rust
let mut index = 0;
for item in shopping_list.iter() {
    println!("{}. {item}", index + 1);
    index += 1;
}
```]
becomes
#code[```rust
for (index, item) in shopping_list.iter().enumerate() {
    println!("{}. {item}", index + 1);
}
```]
\
and
\
#code[```rust
if !words_per_length.contains_key(&len) {
    words_per_length.insert(len, 0);
}
*words_per_length.get_mut(&len).unwrap() += 1;
```]
becomes
#code[```rust
*words_per_length.entry(len).or_insert(0) += 1;
```]
\
\
#code[```rust
let mut index = 1;
for item in shopping_list.iter() {
    println!("{}. {}", index, item);
    index += 1
}
```]
becomes
#code[```rust
for (index, item) in shopping_list.iter().enumerate() {
    println!("{}. {}", index + 1, item);
}
```]
\ There are many others:
- `vec!["A", "B", "C"].join(", ")` #h(1em) #text(luma(35%))[( = #h(0.2em) `"A, B, C"` )]
- `vec![1, 2, 3, 4, 5].chunks(2)` #h(1.5em) #text(luma(35%))[( = #h(0.2em) `[[1, 2], [3, 4], [5]]` )]
- `487_u32.next_multiple_of(100)` #h(1.5em) #text(luma(35%))[( = #h(0.2em) `500` )]

#tip[
  Most of the examples here have Python equivalents
]
#v(-32pt)
#slack