#let titlepage(
  title: "",
  date: none,
  author: "",
  id: none,
  supervisors: none,
  course-of-study: "Informatik",
) = {
  align(center, [
    #v(1cm)

    #image("../media/HM_logo.jpg")

    Hochschule München

    Fakultät für Informatik und Mathematik

    #v(2cm)

    #text(size: 14pt)[Bachelorarbeit]

    #text(size: 16pt, weight: "bold", title)

    #v(0.5cm)
    
    #text(size: 14pt)[
      Abgabetermin

      #date
    ]

    #v(1fr)

    Autor: #author

    Matrikelnummer: #id

    Studiengang: #course-of-study

    Prüfer: #if type(supervisors) == array [
      #supervisors.join(", ")
    ] else [
      #supervisors
    ]

  ])
  pagebreak()
}
