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
#logo("the_boy_scout_principle")

// Add name + block number here
\
#block_header(12, [The Boy Scout Principle])

// Fill text in the 'what' section
#what
\ The "Boy Scout principle" is the concept of leaving things better than you found them.
\ In code, that means - when you're already working on something, don’t ignore the mess nearby.

// Fill text in the 'why' section
\
#why
\ The code belongs to everyone, so every improvement you make helps the whole team.
\ If each of us sees our tasks not just as individual work, but as part of a shared goal —
we’ll build better products :)

// Fill text in the 'how' section
\
#how
\ 1. Fix that outdated comment that no longer makes sense.
\ 2. Rename the variable that made you squint for 3 minutes.
\ 3. Delete that ancient ```rust TODO``` that's not relevant anymore.
\ 4. Document the code that melted your brain.
\ 5. Came across a small ```rust TODO``` assigned to someone who left a year ago? Rename it or handle it.
\

\
Small fixes? just do them on the way in your current PR.
\ Woke up happy and feel like taking on a bigger task? Awesome! Those changes deserve their own PR.
\ Remember: no improvement is too small, and the maximum size is totally up to you.
\
\
// If you need a tip section, fill here
#tip[
  Try applying this rule in your life too.
]

// If you need a call for action section, fill here
#call_for_action[
  \ Come claim your Good Boy Scout badge once you deserve it🎖️
]
#v(30pt)
#slack
