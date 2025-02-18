#let titlepage(
  title: "EXAMPLE_TITLE",
  paper: "a4",
  author: "haruki7049 <tontonkirikiri@gmail.com>",
  font: "IPAexMincho",
  lang: "ja",
) = {
  page(
    paper: paper,
    footer: [
      #set align(right)
      #author
    ],
  )[
    #underline()[
      #text(size: 2.5em, lang: "ja", font: font)[
        #title
      ]
    ]
  ]
}
