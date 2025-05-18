#let logo = {
    align(right)[
        #image("block_by_block.svg", width:180pt)
    ]

    v(-15pt)
}

#let block_header(nonce, txt) = {
    text(font: "Comic Neue")[
        =
        #set text(size: 20pt)
        #underline[*BLOCK NONCE \##nonce: #txt*]
    ]
}

#let code(x) = {
    box(
        inset: 6pt,
        stroke: white,
        fill: rgb(240, 240, 240) ,
        width: 100%
    )[#x]
}

#let tip(x) = {
    box(
        inset: 12pt,
        fill: rgb(192, 243, 250),
        radius: 8pt,
        stroke: black,
        width: auto,
    )[
        #image("tip.png", width: 40pt)
        #text(
            fill: black,
            font: "Comic Neue",
        )[#x]
    ]
}

#let call_for_action(x) = {
    box(
        inset: 5pt,
        fill: rgb(195, 177, 225),
        radius: 8pt,
        width: auto,
    )[
        #image("action.png", width: 100pt)
        #text(
            fill: white,
            font: "Comic Neue",
        )[#x]
    ]      
}

#let bordered_box(path)= {
    box(
  stroke: black,
  inset: 1pt,
  fill: black,
  radius: 0pt,
  [
    #image(path, width: 80pt)
  ]
)
}

#let what = {bordered_box("what.png")}
#let why = {bordered_box("why.png")}
#let how = {bordered_box("how.png")}


