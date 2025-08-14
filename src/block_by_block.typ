#let logo(name) = {
    let qr-path = "images/qr/" + name + ".svg"
    table(
        columns: (300pt, auto),
        align: (right,left),
        stroke: none,
        image(qr-path, width:80pt),
        image("images/src/block_by_block.svg", width:180pt),
    )
    v(-20pt)
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
            size: 12pt,
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

#let what = {bordered_box("images/src/what.png")}
#let why = {bordered_box("images/src/why.png")}
#let how = {bordered_box("images/src/how.png")}

#let page_border(color) = box(
  stroke: (paint: color, thickness: 4pt, cap: "round") ,
  width: 550pt,
  height: 800pt,
)[
  ~
]

#let slack = table(
        columns: (440pt, 150pt),
        align: (right, left),
        column-gutter: -8pt,
        stroke: none,
        image("images/src/slack.png", width:15pt),
        text(font: "Comic Neue", size: 15pt, baseline: 3pt)[#"#starkcode"]
    )
