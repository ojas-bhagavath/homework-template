#import "@preview/showybox:2.0.4": showybox

#let prob_count = counter("problem")

#let prob(color: blue, ..body) = {
  pagebreak(weak:true)
  [== Problem #prob_count.step() #context {prob_count.display()}]
  showybox(
    frame: (
      border-color: color.darken(10%),
      body-color: color.lighten(90%)
    ),
    ..body
  )
}

#let homework(
  title: "",
  author: "",
  collaborators: [],
  course-code: "",
  course-name: "",
  instructor: "",
  semester: "",
  due: "",
  paper-size: "us-letter",
  body,
) = {
  set document(title: title, author: author)
  set page(paper: paper-size)

  align(center + horizon)[
    #strong(text(size: 24pt)[#title])

    #strong(text(size: 18pt)[#author])

    #text(size: 18pt)[Due: #due]

    #text(size: 18pt)[Course: #course-code #course-name]

    #text(size: 18pt)[Semester: Fall 2025]

    #text(size: 18pt)[Instructor: #instructor]
  ]
  set page(
    header: [
      #title #h(1fr) #author
    ],
    footer: [
      #align(right)[#context counter(page).display() of #context counter(page).final().first()]
    ],
  )
  body
}
