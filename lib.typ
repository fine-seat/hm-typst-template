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
  student-id: none,
  birth-date: none,
  study-group: "",
  semester: "",
  supervisors: (),
  submission-date: none,
  abstract-two-langs: true,
  abstract: "",
  abstract-translation: "",
  body,
) = {
  set document(author: author, title: title, date: submission-date)

  set page(
    paper: "a4",
    margin: 2.5cm,
    number-align: right,
    binding: left,
  )

  show heading.where(level: 1): set block(below: 1cm) 
  show heading.where(level: 2): set block(below: 0.75cm) 
  show heading.where(level: 3): set block(below: 0.5cm) 

  set text(
    size: 11pt,
    lang: "de",
    region: "de"
  )

  import "src/titlepage.typ": titlepage

  titlepage(
    title: title,
    title-translation: title-translation,
    author: author,
    supervisors: supervisors,
    date: format-date(submission-date),
    id: student-id
  )

  set page(
    numbering: "i",
  )
  counter(page).update(1)

  // toc
  import "src/outline.typ": outline-page

  outline-page()
  // -- toc

  // abstract
  import "src/abstract.typ": abstract-page

  abstract-page(
    two-langs: abstract-two-langs,
    abstract: abstract,
    abstract-translation: abstract-translation
  )
  // -- abstract

  set page(
    numbering: "1",
  )
  counter(page).update(1)

  body

  pagebreak()

  import "src/declaration.typ": declaration

  declaration(
    submission-date: format-date(submission-date),
    name: author,
    student-id: student-id,
    semester: semester,
    study-group: study-group,
    birth-date: format-date(birth-date)
  )
}