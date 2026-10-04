#import "/src/components/titlepage.typ": *
#import "/src/study-info.typ": get-study-info, major-name, study-name
#import "/src/translations.typ": create-translations
#import "/src/utils.typ": *

#let de = create-translations("de")
#let en = create-translations("en")
#let ifb = get-study-info(study-name.IFB, lang: "de")
#let icb = get-study-info(study-name.ICB, lang: "en")
#let itm = get-study-info(study-name.ITM, lang: "de")
#let dcb = get-study-info(study-name.DCB, lang: "en")
#let wdb = get-study-info(study-name.WDB, lang: "de")
#let igm = get-study-info(study-name.IGM, lang: "en")

#state("draft", true).update(true)
#thesis-titlepage(
  title: [Ein deutscher BA Titel],
  title-translation: [An English thesis title],
  date: "4. Oktober 2026",
  author: "Erika Mustermann",
  id: 12345678,
  supervisors: "Prof. Dr. Max Mustermann",
  study-info: ifb,
  gender: "w",
  examiner-gender: "m",
  draft: true,
  date-today: "4. Oktober 2026",
  t: de,
)

#pagebreak()

#state("draft", false).update(false)
#thesis-titlepage(
  title: [Scientific computing in practice],
  title-translation: none,
  date: "October 4, 2026",
  author: "Max Mustermann",
  id: 87654321,
  supervisors: ("Dr. Ada Example", "Prof. Dr. Max Mustermann"),
  study-info: icb,
  gender: "m",
  examiner-gender: "d",
  draft: false,
  date-today: "October 4, 2026",
  t: en,
)

#pagebreak()

#state("draft", true).update(true)
#thesis-titlepage(
  study-info: itm,
  draft: true,
  date-today: "4. Oktober 2026",
  t: de,
)

#pagebreak()

#state("draft", true).update(true)
#modularbeit-titlepage(
  subject: [Developing a software prototype],
  project-description: [A project description with multiple lines of content
    and a longer explanation of the practical work.],
  authors: ("Erika Mustermann", "Max Mustermann"),
  draft: true,
  date-today: "4. Oktober 2026",
  study-info: ifb,
  t: de,
)

#pagebreak()

#state("draft", false).update(false)
#modularbeit-titlepage(
  subject: [Data analysis project],
  project-description: [A submitted project documentation.],
  authors: "Alex Example",
  draft: false,
  date-today: "October 4, 2026",
  study-info: dcb,
  t: en,
)

#pagebreak()

#state("draft", true).update(true)
#modularbeit-titlepage(
  draft: true,
  date-today: "4. Oktober 2026",
  study-info: wdb,
  t: de,
)

#pagebreak()

#state("draft", true).update(true)
#hauptseminar-paper-titlepage(
  title: [Embedded systems for smart environments],
  date: "4. Oktober 2026",
  author: "Erika Mustermann",
  id: 12345678,
  supervisors: "Prof. Dr. Max Mustermann",
  study-info: igm,
  gender: "w",
  examiner-gender: "m",
  draft: true,
  date-today: "4. Oktober 2026",
  major: major-name.EC,
  t: de,
)

#pagebreak()

#state("draft", false).update(false)
#hauptseminar-paper-titlepage(
  title: [AI systems engineering],
  date: "October 4, 2026",
  author: "Max Mustermann",
  id: 87654321,
  supervisors: ("Dr. Ada Example", "Prof. Dr. Max Mustermann"),
  study-info: igm,
  gender: "m",
  examiner-gender: "d",
  draft: false,
  date-today: "October 4, 2026",
  major: major-name.AISE,
  t: en,
)

#pagebreak()

#state("draft", true).update(true)
#hauptseminar-paper-titlepage(
  study-info: igm,
  major: major-name.SWE,
  draft: true,
  date-today: "4. Oktober 2026",
  t: en,
)
