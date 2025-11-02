#import "utils.typ": *
#import "hm-thesis.typ": __hm-thesis

#let Defaults = (
  Bachelor: "Bachelor's Thesis",
  Master: "Master's Thesis",
)

#let thesis(
  defaults: Defaults.Bachelor,
  ..args,
) = {
  if defaults == Defaults.Bachelor {
    __hm-thesis(
      pretitle: [Bachelorarbeit \ zur Erlangung des akademischen Grades \ Bachelor of Science],
      ..args,
    )
  } else if defaults == Defaults.Master {
    __hm-thesis(
      pretitle: [Masterarbeit \ zur Erlangung des akademischen Grades \ Master of Science],
      ..args,
    )
  } else {
    __hm-thesis(
      ..args,
    )
  }
}
