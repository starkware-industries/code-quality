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
        )[#x]
    ]
}

#let call_for_action(x) = {
    box(
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
        )[#x]
    ]
}

#let what = {image("what.png", width:80pt)}
#let why = {image("why.png", width:80pt)}
#let how = {image("how.png", width:80pt)}
