// ======================================================================
// blocks.typ
// Colors, global configuration and reusable macros for the CV.
// ======================================================================

// ============== 🎨 COLOR PALETTE (edit only here) ================
#let sidebar-bg-color = rgb("#262525") // Left sidebar/column background
#let left-text-color  = white          // Left column text and icons
#let right-title-color= sidebar-bg-color // Main titles (=) in the right column
#let right-text-color = black          // General text in the right column (subtitles, entries, lists)
// =======================================================================

// Main template: applies page config, font and title styles to the entire document.
// Used in cv.typ with "#show: cv-template".
#let cv-template(body) = {
  set document(title: "CV - Nicolás Schkurko", author: "Nicolás Schkurko")

  set page(
    paper: "a4",
    margin: (x: 0cm, y: 0cm),
    background: place(left, rect(width: 32%, height: 100%, fill: sidebar-bg-color))
  )

  // Increased font size and line height to improve readability
  set text(font: ("Inter", "Roboto", "Helvetica", "Arial"), size: 9.5pt, lang: "es")
  set par(justify: true, leading: 0.6em)
  set list(tight: true, spacing: 0.5em)

  // Main titles (level 1, "=")
  show heading.where(level: 1): it => block(width: 100%, below: 0.3em, above: 1em)[
    #align(center)[
      #text(size: 13pt, weight: "bold", fill: right-title-color)[#it.body]
    ]
  ]

  // Subtitles (level 2, "==")
  show heading.where(level: 2): it => block(below: 0.3em, above: 0.8em)[
    #text(size: 10.5pt, weight: "bold", fill: right-text-color)[#it.body]
  ]

  body
}

// Macro for entries (Experience/Education): place + date aligned
#let entry(place, date) = block(width: 100%, spacing: 0pt, above: 0.8em)[
  #grid(
    columns: (1fr, auto),
    gutter: 6pt,
    text(size: 10.5pt, weight: "bold", fill: right-text-color)[#place],
    align(right)[#text(size: 10.5pt, weight: "bold", fill: right-text-color)[#date]]
  )
]

// Macro for role/position
#let role(r) = [
  #v(0.75em)
  #block(width: 100%, spacing: 0pt)[
    #text(style: "italic", weight: "bold", size: 9.5pt)[#r]
  ]
  #v(0.5em)
]

// Recolored SVG icon
#let icon(path, color: left-text-color) = {
  let svg-data = read(path).replace("currentColor", color.to-hex()).replace("#000000", color.to-hex())
  image(bytes(svg-data), width: 1em)
}