#import "@local/homework-template:0.1.0": *

#set text(font: "New Computer Modern")

#show: homework.with(
  title: "",
  author: "",
  collaborators: [],
  course-code: "",
  course-name: "",
  instructor: "",
  semester: "",
  due: "",
  paper-size: "us-letter",
)
#set enum(numbering: "(a)")
#let qed = [#align(right)[$qed$]]
#prob()[

]

#qed
