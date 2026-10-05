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

#let german-thesis = [
  #show: thesis.with(
    title: [Ein umfassender Test der Vorlagenfunktionen für wissenschaftliche Arbeiten],
    title-translation: [A Comprehensive Test of Template Features for Academic Theses],
    language: "de",
    study-name: study-name.IFB,
    submission-date: datetime(year: 2026, month: 10, day: 4),
    student-id: 12345678,
    author: "Erika Mustermann",
    birth-date: datetime(year: 2000, month: 1, day: 1),
    supervisors: ("Prof. Dr. Max Mustermann", "Dr. Ada Example"),
    semester: "WiSe 2026/27",
    study-group: "IF7",
    abstract: [#lorem(180)],
    abstract-translation: [#lorem(120)],
    blocking: true,
    gender: "w",
    examiner-gender: "m",
    abbreviations-list: german-abbreviations,
    print-abbreviations-list: true,
    draft: false,
    layout-mode: "bound",
  )

  = Einleitung

  #lorem(160)

  == Motivation und Zielsetzung

  #lorem(180)

  Die vorliegende Arbeit untersucht die Gestaltung wissenschaftlicher Dokumente
  und verwendet eine @german-cpu sowie eine @german-api. Außerdem gibt es
  Querverweise auf @german-figure und @german-table. Eine zusätzliche
  Erläuterung steht in der Fußnote.#footnote[#lorem(35)]

  - #lorem(18)
  - #lorem(18)
    - #lorem(12)
    - #lorem(12)
  - #lorem(18)

  == Forschungsfragen

  #lorem(140)

  1. #lorem(20)
  2. #lorem(20)
  3. #lorem(20)

  = Grundlagen

  #lorem(220)

  == Methodik

  #lorem(180)

  #figure(
    rect(width: 70%, height: 35mm, fill: luma(220)),
    caption: [Schematische Darstellung des Untersuchungsaufbaus],
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
  @german-api für die untersuchte Anwendung.

  #lorem(120)

  == Diskussion

  #lorem(220)

  #pagebreak()

  = Schluss

  #lorem(180)
  #lorem(160)
]

#let english-thesis = [
  #show: thesis.with(
    title: [A Comprehensive Test of Template Features for Academic Theses],
    title-translation: [Ein umfassender Test der Vorlagenfunktionen für wissenschaftliche Arbeiten],
    language: "en",
    study-name: study-name.IGM,
    submission-date: datetime(year: 2026, month: 10, day: 4),
    student-id: 87654321,
    author: "Alex Example",
    birth-date: datetime(year: 1999, month: 5, day: 14),
    supervisors: ("Prof. Dr. Max Mustermann", "Dr. Ada Example"),
    semester: "Winter semester 2026/27",
    study-group: "IM2",
    abstract: [#lorem(180)],
    abstract-translation: [#lorem(120)],
    blocking: true,
    gender: "m",
    examiner-gender: "d",
    abbreviations-list: english-abbreviations,
    print-abbreviations-list: true,
    draft: false,
    layout-mode: "duplex",
  )

  = Introduction

  #lorem(160)

  == Motivation and objectives

  #lorem(180)

  This thesis evaluates a complete academic document and contains references
  to an @english-cpu and an @english-api. It also contains references to
  @english-figure and @english-table. Additional context is provided in a
  footnote.#footnote[#lorem(35)]

  - #lorem(18)
  - #lorem(18)
    - #lorem(12)
    - #lorem(12)
  - #lorem(18)

  == Research questions

  #lorem(140)

  1. #lorem(20)
  2. #lorem(20)
  3. #lorem(20)

  = Background

  #lorem(220)

  == Methodology

  #lorem(180)

  #figure(
    rect(width: 70%, height: 35mm, fill: luma(220)),
    caption: [Schematic overview of the research setup],
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
  @english-api for the investigated application.

  #lorem(120)

  == Discussion

  #lorem(220)

  #pagebreak()

  = Conclusion

  #lorem(180)
  #lorem(160)
]

#german-thesis
#english-thesis
