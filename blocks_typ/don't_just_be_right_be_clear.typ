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

// Add name + block number here
#block_header(3, [Don't Just Be Right - Be Clear!])

// Fill text in the 'what' section
#what
\ is the question you want to avoid when people read your code.

// Fill text in the 'why' section
#why
\ Code should show the reader what’s happening and why — not just make the machine run correctly.
\ When logic reads like natural language, it becomes something you can follow, trust, and build on.

// Fill text in the 'how' section
#how
\ *Choose the version that tells the story  and reads like a natural sentence*
// If you need a code section, fill here with the correct language
#code[```py
❌ assert expiration_time > time.time(), "Transaction expired."
```]
\ It reads: "The expiration time is in the future".
#code[```py
✅ assert time.time() < expiration_time, "Transaction expired."
```]
\ It reads: "We're before the expiration time".

\ #code[```py
❌ assert has_write_permissions or is_read_operation, "No write permissions."
```]
\ It reads: "Does the user have write permissions or they are performing a read operation?"
#code[```py
❌ if not has_write_permissions: 
      assert is_read_operation, "No write permissions."
```]
\ It reads: "If the user doesn't have write permissions, assert the operation is read".
#code[```py
✅ if is_write_operation:
      assert has_write_permissions, "No write permissions."
```]
\ It reads: "If the user is performing a write operation, assert they have write permissions".

// If you need a tip section, fill here
#tip[
  Submit code your mom could understand!
]
