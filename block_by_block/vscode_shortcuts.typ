#import "block_by_block.typ": *

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

#block_header(1, [VSCode Shortcuts])

#what
\ Visual Studio Code is like a video game — the real magic starts when you learn the secret moves.\ 
Learn a few shortcuts and level up your workflow instantly!

#why
\ Coding faster isn't about typing faster — it's about thinking less about your tools.\
Master your tools, and free your mind to focus on what matters.

#how
\ \*\*\*This exercise assumes that the Sublime Keymap extension is installed.\ 
You can also customize your shortcuts by opening:
Ctrl+Shift+P → Preferences: Open Keyboard Shortcuts and edit them manually.

#code[```bash
const max_block_size: u32 = 1000;
// The maximal size of the block.
const default_timeout: u64 = 5000;
// The default timeout for a block in milliseconds.
const transaction_version: u32 = 3;
// The supported transaction version.
```]

*Let's fix this code to follow the standard — constants must be uppercase, and comments should be written above them.*

1. Place cursor on const.\ 
2. Press Ctrl+D multiple times to multi-select all the const keywords.\ 
3. Press Right twice and then Ctrl+Shift+Right to select all the names.\ 
4. Hit "Ctrl+K Ctrl+U" → boom, all names are uppercased.\ 
5. Press Ctrl+Shift+Down → boom, all comments are in place.\ 

// *Curious to learn a few more magic tricks?* 🪄
// 1. In addition to Ctrl+D, multiple cursors can be created with Alt+Shift+Up/Down and Alt+mouse click.\ 
// 2. Use Ctrl+C, Ctrl+V, Ctrl+X without selecting anything to operate on a full line.\ 
// 3. Use Ctrl+Shift+Space to increase the selection scope. Subword -> word -> expression -> function body -> entire function.\ 
// 4. Use Shift+Del or Ctrl+Shift+K to delete the current line.\ 
// 5. Use Ctrl+Shift+D to duplicate the current line.\

#tip[Wanna build muscle memory?
Repetition turns motion into instinct! Train yourself to use shortcuts instead of reaching for the mouse.]
