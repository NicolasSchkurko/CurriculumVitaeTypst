// ======================================================================
// blocks.typ — dos formatos, un solo contenido
// ----------------------------------------------------------------------
//   ats(data)      -> una columna, sin foto, sin tablas, sin cortes de
//                     palabra. Pensado para parsers (Greenhouse, Lever,
//                     Workday, Taleo).
//   classic(data)  -> el formato con sidebar y foto. Pensado para que lo
//                     lea una persona.
//
// Ambos consumen el mismo diccionario (ver content-es.typ / content-en.typ),
// así el contenido no se puede desincronizar entre versiones.
//
// Nota técnica: no se usa `block(spacing: 0pt)` ni `align(.. + horizon)`
// porque colapsan la altura de línea y superponen textos (nombre del puesto
// contra el rol). Todo el espaciado vertical va con `above`/`below` y `v()`.
// ======================================================================

// ============================== PALETA ==============================
#let sidebar-bg-color = rgb("#262525")
#let left-text-color = white
#let right-title-color = sidebar-bg-color

// Ícono SVG recoloreado (solo lo usa el formato classic).
#let icon(path, color: left-text-color) = {
  let svg-data = read(path)
    .replace("currentColor", color.to-hex())
    .replace("#000000", color.to-hex())
  image(bytes(svg-data), width: 0.95em)
}

// ============================ FORMATO ATS ============================
#let ats(data) = {
  set document(title: data.title, author: data.meta.name)
  set page(paper: "a4", margin: (x: 1.7cm, top: 1.15cm, bottom: 0.95cm))
  set text(font: "Arial", size: 9.6pt, lang: data.lang, hyphenate: false)
  set par(justify: false, leading: 0.56em, spacing: 0.7em)
  set list(
    tight: true,
    spacing: 0.32em,
    indent: 0.45em,
    body-indent: 0.45em,
    marker: [•],
  )
  show link: set text(fill: black)

  show heading.where(level: 1): it => block(above: 0.75em, below: 0.42em, width: 100%)[
    #stack(
      dir: ttb,
      spacing: 0.28em,
      text(size: 9.5pt, weight: "bold", tracking: 0.09em)[#upper(it.body)],
      line(length: 100%, stroke: 0.5pt),
    )
  ]

  // Lista de bullets: una sola definición para puestos y proyectos, así
  // ambos quedan con la misma sangría.
  let item-list(items) = list(
    tight: true,
    spacing: 0.26em,
    indent: 0.45em,
    body-indent: 0.45em,
    marker: [•],
    ..items,
  )

  // Un puesto / una institución: nombre y fecha arriba, rol debajo.
  let entry(place, date, role: none, items: ()) = block(width: 100%, above: 0.5em)[
    #grid(
      columns: (1fr, auto),
      gutter: 12pt,
      align: (left, right),
      text(size: 9.9pt, weight: "bold")[#place],
      text(size: 8.9pt)[#date],
    )
    #v(0.08em)
    #if role != none {
      text(style: "italic", size: 9.2pt)[#role]
      v(0.2em)
    }
    #item-list(items)
  ]

  let project(p) = block(width: 100%, above: 0.55em)[
    #link(p.url)[#text(weight: "bold", size: 9.7pt)[#p.title]]
    #v(0.22em)
    #item-list(p.bullets)
  ]

  // ------------------------------ header ------------------------------
  align(center)[
    #text(size: 19pt, weight: "bold", tracking: 0.01em)[#upper(data.meta.name)] \
    #v(0.22em)
    #text(size: 10pt)[#data.meta.headline] \
    #v(0.38em)
    #text(size: 8.7pt)[#data.meta.location · #data.meta.availability · #data.meta.email] \
    #v(0.1em)
    #text(size: 8.7pt)[#data.meta.site · #data.meta.github · #data.meta.linkedin]
  ]

  v(0.5em)

  heading(level: 1)[#data.labels.profile]
  data.profile

  heading(level: 1)[#data.labels.experience]
  for e in data.experience {
    entry(e.place, e.date, role: e.role, items: e.bullets)
  }

  heading(level: 1)[#data.labels.projects]
  for p in data.projects {
    project(p)
  }

  heading(level: 1)[#data.labels.skills]
  for s in data.skills {
    block(width: 100%)[
      #text(weight: "bold")[#s.label:] #s.items
      #v(0.16em)
    ]
  }

  heading(level: 1)[#data.labels.education]
  for e in data.education {
    entry(e.place, e.date, role: e.role)
  }

  v(0.3em)
  block(width: 100%)[
    #text(weight: "bold")[#data.labels.languages:] #data.languages.join(" · ")
  ]
}

// ========================== FORMATO CLASSIC ==========================
// Formato "humano": sidebar oscura, foto, tipografía con jerarquía.
// Mismo contenido que el ATS, distinta presentación.
#let classic(data) = {
  set document(title: data.title, author: data.meta.name)
  set page(
    paper: "a4",
    margin: (x: 0cm, y: 0cm),
    background: place(left, rect(width: 32%, height: 100%, fill: sidebar-bg-color)),
  )
  set text(font: "Arial", size: 9.5pt, lang: data.lang, hyphenate: false)
  set par(justify: false, leading: 0.6em)
  set list(
    tight: true,
    spacing: 0.34em,
    indent: 0.42em,
    body-indent: 0.42em,
    marker: [•],
  )

  show heading.where(level: 1): it => block(above: 1.05em, below: 0.55em)[
    #align(center)[#text(size: 12pt, weight: "bold", fill: right-title-color)[#it.body]]
  ]

  let item-list(items) = list(
    tight: true,
    spacing: 0.42em,
    indent: 0.45em,
    body-indent: 0.45em,
    marker: [•],
    ..items,
  )

  let entry(place, date, role: none, items: ()) = block(width: 100%, above: 0.85em)[
    #grid(
      columns: (1fr, auto),
      gutter: 10pt,
      align: (left, right),
      text(size: 10.2pt, weight: "bold")[#place],
      text(size: 8.8pt, weight: "bold")[#date],
    )
    #v(0.1em)
    #if role != none {
      text(style: "italic", weight: "bold", size: 9.3pt)[#role]
      v(0.32em)
    }
    #item-list(items)
  ]

  let project(p) = block(width: 100%, above: 0.8em)[
    #link(p.url)[#text(weight: "bold", size: 9.7pt)[#p.title]]
    #v(0.22em)
    #item-list(p.bullets)
  ]

  grid(
    columns: (32%, 68%),

    // ------------------------- columna izquierda -------------------------
    {
      set text(fill: left-text-color)
      pad(x: 0.55cm, top: 1.05cm, bottom: 0.7cm)[
        #align(center)[
          #box(
            width: 3.7cm,
            height: 3.7cm,
            radius: 50%,
            clip: true,
            stroke: 1.5pt + white,
          )[#image(data.photo, width: 100%, height: 100%, fit: "cover")]
          #v(0.75em)
          #text(size: 15.5pt, weight: "bold")[#data.meta.name]
          #v(0.3em)
          #text(size: 9.2pt)[#data.meta.short-headline]
        ]

        #v(1.15em)
        #align(center)[#text(size: 10.5pt, weight: "bold")[#data.labels.contact]]
        #line(length: 100%, stroke: 1pt + white)

        #v(0.45em)
        #grid(
          columns: (auto, 1fr),
          gutter: 7pt,
          row-gutter: 0.85em,
          align: (center, left),
          icon("icons/mail.svg"),
          link("mailto:" + data.meta.email)[#text(fill: left-text-color)[#data.meta.email]],
          icon("icons/users.svg"),
          link(data.meta.linkedin-url)[#text(fill: left-text-color)[LinkedIn]],
          icon("icons/github.svg"),
          link(data.meta.github-url)[#text(fill: left-text-color)[GitHub]],
          icon("icons/globe.svg"),
          link(data.meta.site-url)[#text(fill: left-text-color)[#data.meta.site]],
          icon("icons/map-pin.svg"),
          text(size: 8.6pt)[#data.meta.location \ (#data.meta.availability)],
        )

        #v(1.4em)
        #align(center)[#text(size: 10.5pt, weight: "bold")[#data.labels.skills]]
        #line(length: 100%, stroke: 1pt + white)

        #for s in data.skills [
          #v(0.7em)
          #text(size: 9.2pt, weight: "bold")[#s.label] \
          #text(size: 8.3pt)[#s.items]
        ]

        #v(0.8em)
        #align(center)[#text(size: 10.5pt, weight: "bold")[#data.labels.languages]]
        #line(length: 100%, stroke: 1pt + white)
        #v(0.45em)
        #for l in data.languages [
          #text(size: 8.7pt)[#l] \
        ]
      ]
    },

    // -------------------------- columna derecha --------------------------
    pad(x: 0.75cm, top: 1.05cm, bottom: 0.8cm)[
      #heading(level: 1)[#data.labels.profile]
      #data.profile

      #heading(level: 1)[#data.labels.experience]
      #for e in data.experience [
        #entry(e.place, e.date, role: e.role, items: e.bullets)
      ]

      #heading(level: 1)[#data.labels.projects]
      #for p in data.projects [
        #project(p)
      ]

      #heading(level: 1)[#data.labels.education]
      #for e in data.education [
        #entry(e.place, e.date, role: e.role)
      ]
    ],
  )
}
