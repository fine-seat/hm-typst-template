#import "../utils.typ": *
#import "../study-info.typ": *

#let titlepage(
  title: none,
  title-translation: none,
  date: none,
  author: none,
  id: none,
  supervisors: none,
  study-info: none,
  gender: none,
  examiner-gender: none,
  draft: true,
  date-today: none,
  t: none,
) = {
  align(center, [
    #v(1cm)

    #image("../media/HM_logo.png", width: 45%)

    #t.hm \
    #study-info.fk

    #v(2cm)

    #text(size: 14pt)[#study-info.thesis-type \ #t.for-the-degree-of \ #study-info.degree]

    #text(size: 16pt, weight: "bold", if (title != none) {
      title
    } else {
      todo[#t.title]
    })

    #context {
      text(size: 14pt, if (title-translation != none) {
        title-translation
      } else { if (text.lang == "de") { todo[Title] } })
    }

    #v(0.5cm)

    #text(size: 14pt)[
      #if draft {
        text(hm-color)[
          #t.draft \
          #t.as-of: #date-today]
      } else {
        [
          Abgabetermin \
          #date
        ]
      }
    ]

    #v(1fr)

    #if (author != none) {
      [#(t.author)(gender: gender): #author]
    } else { todo[#(t.author)("m")] }

    #if (id != none) { [#t.student-id: #id] } else { todo[Matrikelnummer] }

    #t.study-program: #study-info.name

    #if (supervisors != none) {
      if type(supervisors) == array [
        [#t.examiners:]
        #supervisors.join(", ")
      ] else [
        #(t.examiner)(gender: examiner-gender): #supervisors
      ]
    } else {
      todo[#(t.examiner)("m")]
    }

  ])
  pagebreak()
}
