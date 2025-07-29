#let thesis(
  title: "",
  author: "",
  student-id: none,
  supervisors: (),
  submission-date: none,
  body,
) = {
  set document(author: author, title: title, date: submission-date)

  set page(
    paper: "a4",
    margin: 2.5cm
  )

  set text(
    size: 11pt,
    lang: "de"
  )

  import "src/titlepage.typ": titlepage

  titlepage(
    title: title,
    author: author,
    supervisors: supervisors,
    date: submission-date,
    id: student-id
  )

  text()[this is a thesis]
}