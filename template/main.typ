// #import "@preview/scribbling-hm:0.1.3": *
#import "../lib.typ": *

#import "abbreviations.typ": abbreviations-list
#import "variables.typ": variables-list

#show: thesis.with(
  title: lorem(15),
  title-translation: lorem(12),
  course-of-study: "Informatik",
  author: "Erika Mustermann",
  gender: "w",
  student-id: 12345678,
  birth-date: datetime(year: 2000, day: 1, month: 1),
  study-group: "IF7",
  semester: "WiSe 2025/26",
  supervisors: "Prof. Dr. Max Mustermann",
  supervisor-gender: "m",
  submission-date: datetime.today(),
  abstract-two-langs: true,
  abstract: none,
  abstract-translation: none,
  blocking: true,
  draft: true,
  bib: bibliography("references.bib", title: "Literaturverzeichnis"),
  abbreviations-list: abbreviations-list,
  variables-list: variables-list,
)

= Section
== Subsection
This @typst formatting is defined in the variables list. It is processed by a @cpu. Another sentence using @cpu.

#todo[Mehr Text]
