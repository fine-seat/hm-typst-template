#set text(
  size: 11pt,
  region: "de",
  lang: "de"
)

#set page(
  paper: "a4",
  margin: 2.5cm
)

#let title = "Title"
#let author = "Author"
#let date = datetime.today()

#set document(
  title: title,
  author: author,
  date: date
)

// titlepage
#align(center, [
  #v(1cm)

  #image("media/HM_logo.jpg")

  Hochschule München

  Fakultät für Informatik und Mathematik

  #v(2cm)

  #text(size: 14pt)[Bachelorarbeit]

  #text(size: 16pt, weight: "bold", title)

  #text(size: 14pt)[Abgabetermin
  
  #date.display("[day].[month].[year]")]

  #v(1cm)

  #author
])

#pagebreak()

#outline()

#pagebreak()

= Introduction
In this report, we will explore the
various factors that influence fluid
dynamics in glaciers and how they
contribute to the formation and
behaviour of these natural structures. @nvidia_guide

#include "src/chapter1.typ"

#pagebreak()

#bibliography("doc.bib")