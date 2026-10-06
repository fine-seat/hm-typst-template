#import "/src/components/declaration.typ": declaration
#import "/src/study-info.typ": get-study-info, study-name
#import "/src/translations.typ": create-translations

#let de = create-translations("de")
#let en = create-translations("en")
#let bachelor-de = get-study-info(study-name.IFB, lang: "de").thesis-type
#let master-de = get-study-info(study-name.ITM, lang: "de").thesis-type
#let bachelor-en = get-study-info(study-name.IFB, lang: "en").thesis-type
#let master-en = get-study-info(study-name.ITM, lang: "en").thesis-type

#declaration(
  name: "Erika Mustermann",
  birth-date: "01.02.2000",
  study-group: "IF7",
  semester: "WiSe 2026/27",
  student-id: 12345678,
  submission-date: "4. Oktober 2026",
  thesis-type: bachelor-de,
  t: de,
)

#pagebreak()

#declaration(
  name: "Max Mustermann",
  study-group: "IF7",
  semester: "SoSe 2026",
  student-id: 87654321,
  submission-date: "4. Oktober 2026",
  thesis-type: master-de,
  t: de,
)

#pagebreak()

#declaration(
  name: "Alex Example",
  semester: "WiSe 2026/27",
  submission-date: "4. Oktober 2026",
  thesis-type: bachelor-de,
  t: de,
)

#pagebreak()

#declaration(
  name: "Erika Mustermann",
  birth-date: "02/01/2000",
  study-group: "IF7",
  semester: "Winter semester 2026/27",
  student-id: 12345678,
  submission-date: "October 4, 2026",
  thesis-type: bachelor-en,
  t: en,
)

#pagebreak()

#declaration(
  name: "Erika Mustermann",
  submission-date: "4. Oktober 2026",
  thesis-type: bachelor-de,
  ai-used: true,
  t: de,
)

#pagebreak()

#declaration(
  name: "Alex Example",
  submission-date: "October 4, 2026",
  study-group: "IF7",
  semester: "Winter semester 2026/27",
  student-id: 12345678,
  thesis-type: bachelor-en,
  ai-used: true,
  t: en,
)

#pagebreak()

#declaration(
  name: "Erika Mustermann",
  submission-date: "4. Oktober 2026",
  thesis-type: bachelor-de,
  ai-used: true,
  declaration-text: [
    #lorem(128)
  ],
  t: de,
)
