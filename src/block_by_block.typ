#let logo = {
    align(right)[
        #image("images/block_by_block.svg", width:180pt)
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

#let bad_code(x) = {
    box(
        inset: 6pt,
        stroke: white,
        fill: rgb(255, 230, 230),  // light red
        width: 100%
    )[#x]
}

#let good_code(x) = {
    box(
        inset: 6pt,
        stroke: white,
        fill: rgb(230, 255, 230),  // light green
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
        #text(
            fill: black,
            font: "Comic Neue",
        )[*TIP💡* #x]
    ]
}



#let call_for_action(x) = {
    box(
        inset: 12pt,
        fill: rgb(195, 177, 225),
        radius: 8pt,
        stroke: black,
        width: auto,
    )[
        #text(
            fill: black,
            font: "Comic Neue",
        )[*Call For Action!*📢💨 #x]
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

#let what = {bordered_box("images/what.png")}
#let why = {bordered_box("images/why.png")}
#let how = {bordered_box("images/how.png")}


