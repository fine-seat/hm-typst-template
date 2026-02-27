#import "../../glossarium-0.5.9/glossarium.typ": *
#import "../../datify-1.0.0/src/main.typ": *
#import "../../zebraw-0.6.1/src/lib.typ": *

#let hm-color = rgb("#fb5454")

#let todo(it) = [
  #context {
    let draft = state("draft").get()
    if draft [
      #text()[#emoji.page.pencil]  #text(it, fill: hm-color, weight: 600)
    ]
  }
]