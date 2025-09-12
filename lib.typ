#let format-date(date, format: "[day].[month].[year]") = {
  if type(date) == datetime {
    date.display(format)
  } else if date != none {
    str(date)
  } else {
    datetime.today().display(format)
  }
}

#let thesis(
  title: "",
  title-translation: "",
  author: "",
  gender: none,
  student-id: none,
  birth-date: none,
  study-group: "",
  semester: "",
  supervisors: (),
  submission-date: none,
  abstract-two-langs: true,
  abstract: "",
  abstract-translation: "",
  blocking: false,
  body,
) = {
  if gender != none and gender not in ("m", "w", "d") {
    panic("Gender must be one of: 'm', 'w', 'd', or none")
  }

  import "src/utils.typ": *

  set document(author: author, title: title, date: submission-date)

  set page(
    paper: "a4",
    margin: 2.5cm,
    number-align: right,
    binding: left,
  )

  set par(
    justify: true,
  )

  show heading.where(level: 1): set block(below: 0.5cm)
  show heading.where(level: 2): set block(below: 0.5cm)
  show heading.where(level: 3): set block(below: 0.5cm)

  set text(
    size: 10pt,
    lang: "de",
    region: "de",
    font: "Arial",
  )

  show: make-glossary
  import "src/abbreviations.typ": abbreviations-list
  register-glossary(abbreviations-list)

  import "src/titlepage.typ": titlepage

  titlepage(
    title: title,
    title-translation: title-translation,
    author: author,
    supervisors: supervisors,
    date: format-date(submission-date),
    id: student-id,
  )

  if blocking {
    import "src/blocking.typ": blocking-notice

    blocking-notice(
      gender: gender,
    )

    pagebreak()
  }

  import "src/declaration.typ": declaration

  declaration(
    submission-date: format-date(submission-date, format: "[day]. [month repr:long] [year]"),
    name: author,
    student-id: student-id,
    semester: semester,
    study-group: study-group,
    birth-date: format-date(birth-date),
  )

  pagebreak()

  set page(
    numbering: "i",
  )
  counter(page).update(1)

  // toc
  import "src/outline.typ": outline-page

  outline-page()
  // -- toc

  // abstract
  if abstract != "" {
    import "src/abstract.typ": abstract-page

    abstract-page(
      two-langs: abstract-two-langs,
      abstract: abstract,
      abstract-translation: abstract-translation,
    )
  }
  // -- abstract

  set page(
    numbering: "1",
  )
  counter(page).update(1)

  body

  pagebreak()

  set page(
    numbering: "I",
  )
  counter(page).update(1)

  heading([Abkürzungsverzeichnis], level: 1)
  print-glossary(abbreviations-list, disable-back-references: true)
}
