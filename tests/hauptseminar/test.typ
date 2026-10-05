#import "/src/scribbling-hm.typ": *

#let german-paper = [
  #let abbreviations-list = (
    (
      key: "cpu",
      short: "CPU",
      long: "Central Processing Unit",
      description: "Zentrale Recheneinheit im Computer",
    ),
  )

  #show: hauptseminar-paper.with(
    title: [Analyse intelligenter Systeme für vernetzte Umgebungen],
    language: "de",
    study-name: study-name.IGM,
    submission-date: datetime(year: 2026, month: 10, day: 4),
    student-id: 12345678,
    author: "Erika Mustermann",
    supervisors: ("Prof. Dr. Max Mustermann", "Dr. Ada Example"),
    gender: "w",
    examiner-gender: "m",
    major: major-name.AISE,
    abbreviations-list: abbreviations-list,
    variables-list: (),
    draft: false,
    layout-mode: "screen",
  )

  = Einleitung

  #lorem(160) @cpu

  == Motivation und Zielsetzung

  #lorem(180)

  Das Hauptseminar untersucht intelligente Systeme und enthält einen Verweis
  auf @german-figure sowie @german-table. Eine zusätzliche Erläuterung steht in
  der Fußnote.#footnote[#lorem(35)] @cpu

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

  #lorem(240)

  == Diskussion

  #lorem(220)

  #pagebreak()

  = Schluss

  #lorem(180)
  #lorem(160)
]

#let english-paper = [
  #let abbrev-list = (
    (
      key: "ram",
      short: "RAM",
      long: "Random Access Memory",
    ),
  )

  #show: hauptseminar-paper.with(
    title: [Analysis of intelligent systems for connected environments],
    language: "en",
    study-name: study-name.IGM,
    submission-date: datetime(year: 2026, month: 10, day: 4),
    student-id: 87654321,
    author: "Alex Example",
    supervisors: ("Prof. Dr. Max Mustermann", "Dr. Ada Example"),
    gender: "m",
    examiner-gender: "d",
    major: major-name.SWE,
    abbreviations-list: abbrev-list,
    variables-list: (),
    draft: false,
    layout-mode: "screen",
  )

  = Introduction

  #lorem(160) @ram

  == Motivation and objectives

  #lorem(180)

  This seminar paper investigates intelligent systems and contains references
  to @english-figure and @english-table. Additional context is provided in a
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

  #lorem(180) @ram

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

  #lorem(240)

  == Discussion

  #lorem(220)

  #pagebreak()

  = Conclusion

  #lorem(180)
  #lorem(160)
]

#german-paper
#english-paper
