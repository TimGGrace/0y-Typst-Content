#import "@preview/tiaoma:0.3.0"
#let padNum(number) = {
  if str(number).len()>=2 {
    return number
  } else if number < 10 and number > 0 {
    return "0" + str(number)
  }
  return "00"
  
}
#let default-exam-config =  (
  global-code: "BPC/G",
  series-code: "Jan70",
  specification-code: "1234",
  paper-code: "1",
  level: "Example Level",
  subject: "Example Subject",
  paper: "Paper Example",
  date: "Monday 1 January 1970",
  time: "Morning",
  time-allowed: "0 hours 0 minutes",
  materials: (),
  instructions: (),
  advice: (),
  numbering-style: "compsci"
)

#let page-number = state("page-number", 1)
#let exam-config = state("exam-config", default-exam-config)
#let marks-counter = counter("marks")
#let questions-counter = counter("questions")

#let end-of-questions = align(center, [#v(1cm) *END OF QUESTIONS*])

#let mark-scheme(config: default-exam-config, body) = {
  set text(font: "Aptos", size: 11pt)
  set page(margin: (x: 17mm))
  show math.equation: set text(size: 13pt)
  set par(leading: 2.2mm)

  [#body]
}

#let maths-ms-table(questions: ()) = align(center, table(
  columns: (15mm, 62.5mm, 34mm, 62.5mm),
  stroke: 0.5pt,
  align(center, [*Q*]),
  [*Marking Instructions*],
  [*Marks*],
  [*Typical Solution*],
  ..questions.map(question => {
    return (
      ..question.marks.enumerate().map(((i, mark)) => {
        if (i == 0) {
          return (
            table.cell(rowspan: question.marks.len(),
            [*#question.number*]),
            align(horizon + left, mark.at(1)),
            align(horizon, mark.at(0)),
            table.cell(rowspan: question.marks.len(), [#question.typical-solution])
          )
        } else {
          return (
            align(horizon + left, mark.at(1)),
            align(horizon, mark.at(0)),
          )
        }
      }),
      [], align(right, [*Subtotal*]), align(center, [#question.marks.len()]), []
    )
  }).flatten()
))

#let cs-ms-table(questions: ()) = align(center, table(
  columns: (11mm, 8mm, 140mm, 13mm),
  stroke: 0.5pt,
  table.cell(colspan:2)[*Question*],
  [],
  [*Marks*],
  ..questions.map(question => {
    return (
      if (question.number == calc.floor(question.number)) {
        return (
          table.cell(colspan:2)[*#padNum(question.number)*],
          align(left)[#question.solution],
          [#question.marks]
        )
      } else {
        let qval = padNum(calc.floor(question.number))
        let part = calc.round((question.number - calc.floor(question.number)) * 10)
        return ([*#qval*],
                [*#part*],
                align(left)[#question.solution],
                [#question.marks])
      }
    )
  }).flatten()
))

