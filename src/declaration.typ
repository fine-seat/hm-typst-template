#let declaration(
  name: "",
  birth-date: "",
  study-group: "",
  semester: "",
  student-id: "",
  submission-date: "",
) = {
  heading("Erklärung")

  align(center)[
    #name#if birth-date != none [, geb. #birth-date]
    (#study-group, #semester, Matrikelnummer: #student-id)
  ]

  v(1cm)

  [
    Hiermit erkläre ich, dass ich die Bachelorarbeit selbständig verfasst, noch nicht anderweitig für Prüfungszwecke vorgelegt, keine anderen als die angegebenen Quellen oder Hilfsmittel benutzt sowie wörtliche und sinngemäße Zitate als solche gekennzeichnet habe.
  ]

  v(1cm)

  [München, #submission-date]

  v(1cm)

  [
    #line(length: 50%, stroke: (thickness: 0.5pt))
    Unterschrift
  ]
}
