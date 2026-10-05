#import "/src/scribbling-hm.typ": *

#let german-abbreviations = (
  (
    key: "german-cpu",
    short: "CPU",
    long: "Central Processing Unit",
    description: "Zentrale Recheneinheit im Computer",
  ),
  (
    key: "german-api",
    short: "API",
    long: "Application Programming Interface",
    description: "Programmierschnittstelle für Softwarekomponenten",
  ),
)

#let english-abbreviations = (
  (
    key: "english-cpu",
    short: "CPU",
    long: "Central Processing Unit",
    description: "The central processing unit of a computer",
  ),
  (
    key: "english-api",
    short: "API",
    long: "Application Programming Interface",
    description: "An interface for communication between software components",
  ),
)

#let german-modularbeit = [
  #show: modularbeit-documentation.with(
    subject: [Entwicklung eines Softwareprototyps],
    project-description: [Eine umfassende Dokumentation eines praktischen
      Softwareprojekts mit mehreren Bearbeitungsphasen.],
    language: "de",
    study-name: study-name.IFB,
    authors: ("Erika Mustermann", "Max Mustermann"),
    abbreviations-list: german-abbreviations,
    draft: false,
    layout-mode: "screen",
  )

  = Einleitung

  #lorem(160)

  == Motivation und Zielsetzung

  #lorem(180)

  Die Dokumentation beschreibt den Projektverlauf und enthält einen Verweis auf
  eine @german-cpu und eine @german-api. Außerdem gibt es einen Verweis auf
  @german-figure sowie @german-table. Eine zusätzliche Erläuterung steht in
  der Fußnote.#footnote[#lorem(35)]

  - #lorem(18)
  - #lorem(18)
    - #lorem(12)
    - #lorem(12)
  - #lorem(18)

  == Anforderungen

  #lorem(140)

  1. #lorem(20)
  2. #lorem(20)
  3. #lorem(20)

  = Umsetzung

  #lorem(220)

  == Architektur

  #lorem(180)

  #figure(
    rect(width: 70%, height: 35mm, fill: luma(220)),
    caption: [Schematische Darstellung der Projektarchitektur],
  ) <german-figure>

  #figure(
    table(
      columns: 3,
      [Kriterium], [Variante A], [Variante B],
      [Laufzeit], [12 ms], [18 ms],
      [Trefferquote], [91 %], [94 %],
    ),
    caption: [Vergleich der untersuchten Varianten],
  ) <german-table>

  = Ergebnisse

  #lorem(120)

  Die Auswertung bestätigt erneut die Bedeutung der @german-cpu und der
  @german-api für das entwickelte System.

  #lorem(120)

  == Diskussion

  #lorem(220)

  #pagebreak()

  = Fazit

  #lorem(180)
  #lorem(160)
]

#let english-modularbeit = [
  #show: modularbeit-documentation.with(
    subject: [Developing a software prototype],
    project-description: [A comprehensive documentation of a practical
      software project with multiple development phases.],
    language: "en",
    study-name: study-name.IGM,
    authors: ("Alex Example", "Sam Example"),
    abbreviations-list: english-abbreviations,
    draft: false,
    layout-mode: "screen",
  )

  = Introduction

  #lorem(160)

  == Motivation and objectives

  #lorem(180)

  This documentation describes the project and contains references to
  an @english-cpu and an @english-api. It also contains references to
  @english-figure and @english-table. Additional context is provided in a
  footnote.#footnote[#lorem(35)]

  - #lorem(18)
  - #lorem(18)
    - #lorem(12)
    - #lorem(12)
  - #lorem(18)

  == Requirements

  #lorem(140)

  1. #lorem(20)
  2. #lorem(20)
  3. #lorem(20)

  = Implementation

  #lorem(220)

  == Architecture

  #lorem(180)

  #figure(
    rect(width: 70%, height: 35mm, fill: luma(220)),
    caption: [Schematic overview of the project architecture],
  ) <english-figure>

  #figure(
    table(
      columns: 3,
      [Criterion], [Variant A], [Variant B],
      [Runtime], [12 ms], [18 ms],
      [Accuracy], [91 %], [94 %],
    ),
    caption: [Comparison of the investigated variants],
  ) <english-table>

  = Results

  #lorem(120)

  The evaluation again confirms the relevance of the @english-cpu and the
  @english-api for the developed system.

  #lorem(120)

  == Discussion

  #lorem(220)

  #pagebreak()

  = Conclusion

  #lorem(180)
  #lorem(160)
]

#german-modularbeit
#english-modularbeit
