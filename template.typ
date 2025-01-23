#let template( 
  title: "",
  body-font: "Libertinus Serif",
  title-font: "Libertinus Serif",
  authors: none,
  company: "",
  emails: none,
  date: datetime.today().display(),
  main-color: "6505a6",
  alpha: 60%,
  body 
  ) = {

  let primary-color = rgb(main-color)

  // links styling
  show link: underline
  show link: set text(fill: blue)

  // headings styling
  show heading: set text(font: title-font, fill: primary-color)

  // paragraphs styling
  set par(justify: true, leading: 12pt, linebreaks: "optimized")

  // headings styling
  set heading(numbering: "I.1)")

  // text styling
  set text(
    size: 12pt,
  )

  //unordered list colored
  set list(indent: 1em, marker: n => [#text(fill: primary-color, "•")])

  set page(
  // header styling
  header: context {
    if counter(page).get().first() > 1 [
      #text(14pt, style: "italic")[
        Frontend Documentation
        #h(1fr)
        Ivanne Dave Bayer
      ]
    ]
  },

  // footer styling
  footer: context {
    if counter(page).get().first() == 1 [
      #align(center, [
        #text(14pt, weight: "bold")[
          Ivanne Dave Bayer
        ]
      ])
    ]
    if counter(page).get().first() > 1 [
      #align(center, text(14pt)[
        #counter(page).display(
          "1 / 1",
          both: true,
        )
      ])
    ]
  })

  body
}