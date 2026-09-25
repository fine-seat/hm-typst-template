#import "imports.typ": *

#import "abbreviations.typ": abbreviations-list
#import "variables.typ": variables-list

#show: modularbeit-documentation.with(
  language: "de",
  study-name: study-name.IFB,
  authors: ("Erika Mustermann", "Max Mustermann"),
  bib: bibliography("references.bib", title: none),
  abbreviations-list: abbreviations-list,
  print-abbreviations-list: false,
  variables-list: variables-list,
  draft: false,
  layout-mode: "screen",
  subject: "Graphentheorie",
  project-description: [Gruppe x - Thema x \ Traveling Salesman Problem]
)

= Section
== Subsection
This @typst @typst_doc formatting is defined in the variables list. It is processed by a @cpu. Another sentence using @cpu. #footnote[A third @cpu sentence maybe?]

#todo[Mehr Text]

Bullet points are indented by default:

- first
- second
  - first
  - second
- third

Numbered lists too:

+ first
+ second
  + first
  + second
+ third

#lorem(20)

#figure(
  ```rust
  fn main() {
      println!("Hello World!");
  }
  ```,
  caption: ["Hello World" in Rust],
)

= Another Section
#lorem(40) @cpu

#pagebreak()

#lorem(200)
#pagebreak()

#lorem(200)
