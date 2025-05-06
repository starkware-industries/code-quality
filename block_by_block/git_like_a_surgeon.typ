#set page(
  margin: (
    top: 30pt,
    bottom: 30pt,
    left: 50pt,
    right: 50pt,
  )
)

#align(
  right,
)[
  #image("block_by_block.svg", width:180pt)
]

#v(-15pt)

#text(font: "Comic Neue")[
=
 #set text(size: 20pt)
 #underline[*BLOCK NONCE \#0: Git Like a Surgeon*]
]
#text()[
 #set text(size: 11pt)
#image("what.png", width:80pt)
Git isn't just for saving work - it's a time machine for code!\
Every commit is a snapshot of your thinking.\
Every branch is a playground for your ideas. \
Every PR carries your work toward a shared creation.

#image("why.png", width:80pt)
Master Git. Develop fearlessly.

#image("how.png", width:80pt)
- *  Commit Surgery:* \
Just committed a change, but realized it should be two separate commits❓

#box(
  inset: 6pt,
  stroke: white,
  fill: rgb(240, 240, 240) ,
  width: 100%
)[
   ```bash
# Store the current commit hash in a variable.
CMT=$(git rev-parse HEAD)
# Go back one commit.
git reset --hard HEAD~1
# Go over the changes in $CMT and pick the ones you want.
# Explore the options in `git checkout -p`, such as e (edit) and s (split).
git checkout -p $CMT
# Commit the first part
git commit
# Stage and commit the rest
git checkout -p $CMT
git commit
```

]

#box(
  inset: 12pt,
  fill: rgb(192, 243, 250),
  radius: 8pt,
  width: auto,
)[
  #text(
    fill: black,
    font: "Comic Neue",
    weight: "bold",
  )[ TIP💡 ]
  #text(
    fill: black,
    font: "Comic Neue",
  )[
    Don't just follow these steps blindly, understand what each of them does. \
    There are many ways to split a commit, this is just one example.

  ]
]]


- *Recovery:* \
   Did you use `git commit --amend` instead of `git commit`❓
#box(
  inset: 6pt,
  stroke: white,
  fill: rgb(240, 240, 240),
  radius: 4pt,
  width: 100%
)[
    ```bash
# reflog shows the history of the HEAD pointer
git reflog
# The original commit will likely be HEAD@{1}
git reset --soft HEAD@{1}
# Commit again, now without "--amend"
git commit
```
]

#box(
  inset: 5pt,
  fill: red,
  radius: 8pt,
  width: auto,
)[
  #text(
    fill: white,
    font: "Comic Neue",
    weight: "bold",
  )[*📢💨 Call to Action!*]
  #text(
    fill: white,
    font: "Comic Neue",
  )[ Try it yourself! Check `git status` and `git log` after each command.
    Try running `git rev-parse HEAD` and check the output.
  ]
]
