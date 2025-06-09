#import "../src/block_by_block.typ": *

#set page(
  margin: (
    top: 30pt,
    bottom: 30pt,
    left: 50pt,
    right: 50pt,
  )
)
#set text(size: 14pt)

#logo

#block_header(4, [Use the standard library])

#what
\ Rust (and Python) have large standard libraries. Use them to replace short loops and common patterns.

#why
\ When we use the standard library the code is shorter, easier to write and easier to understand.

#how
#code[```rust
let mut index = 1;
for item in shopping_list.iter() {
    println!("{}. {}", index, item);
    index += 1;
}
```]
becomes
#code[```rust
for (index, item) in shopping_list.iter().enumerate() {
    println!("{}. {}", index + 1, item);
}
```]
\
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
\ There are many others:
- `vec!["A", "B", "C"].join(", ")` #h(0.5em) #sym.arrow #h(0.5em) `"A, B, C"`
- `vec![1, 2, 3, 4, 5].chunks(2)` #h(0.5em) #sym.arrow #h(0.5em) `[[1, 2], [3, 4], [5]]`
- `(487 as u32).next_multiple_of(100)` #h(0.5em) #sym.arrow #h(0.5em) `500`

#tip[
  Most of the examples here have Python equivalents
]
