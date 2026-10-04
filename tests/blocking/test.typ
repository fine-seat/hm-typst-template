#import "/src/components/blocking.typ": blocking-notice
#import "/src/study-info.typ": get-study-info, study-name
#import "/src/translations.typ": create-translations

#let de = create-translations("de")
#let en = create-translations("en")
#let bachelor-de = get-study-info(study-name.IFB, lang: "de").thesis-type
#let master-de = get-study-info(study-name.ITM, lang: "de").thesis-type
#let bachelor-en = get-study-info(study-name.IFB, lang: "en").thesis-type
#let master-en = get-study-info(study-name.ITM, lang: "en").thesis-type

#blocking-notice(
  thesis-type: bachelor-de,
  gender: "w",
  t: de,
)

#pagebreak()

#blocking-notice(
  thesis-type: bachelor-de,
  gender: "m",
  t: de,
)

#pagebreak()

#blocking-notice(
  thesis-type: master-de,
  gender: "d",
  t: de,
)

#pagebreak()

#blocking-notice(
  thesis-type: master-de,
  gender: none,
  t: de,
)

#pagebreak()

#blocking-notice(
  thesis-type: bachelor-en,
  gender: "w",
  t: en,
)

#pagebreak()

#blocking-notice(
  thesis-type: master-en,
  gender: "m",
  t: en,
)
