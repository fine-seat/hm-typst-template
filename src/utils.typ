#import "@preview/glossarium:0.5.9": *

#let draft = true;

#let todo(it) = [
  #if draft [
    #text()[#emoji.page.pencil]  #text(it, fill: red, weight: 600)
  ]
]