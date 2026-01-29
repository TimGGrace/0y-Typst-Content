#import "@preview/tiaoma:0.3.0"
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "@preview/cetz-plot:0.1.3" : *
#import "@preview/cetz:0.4.2" : *

#let EAD = "Electronic Answer Document"

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
  numbering-style: "compsci",
  hide-borders: false,
)

#let page-number = state("page-number", 1)
#let exam-config = state("exam-config", default-exam-config)
#let question-numbers = state("question-numbers", ())
#let question-marks = state("question-marks", ())
#let marks-counter = counter("marks")
#let questions-counter = counter("questions")

#let end-of-questions = align(center, [#v(1cm) *END OF QUESTIONS*])

#let exam(config: default-exam-config, body) = {
  set text(font: "Arial", size: 11pt)
  show math.equation: set text(size: 13pt)
  set par(leading: 2.2mm)
  context exam-config.update((
    placeholder: "",
    ..default-exam-config,
    ..config
  ))

  [#body]
}

#let front-cover() = page(margin: (x: 14mm, bottom: 5mm, top: 17mm))[
  #context page-number.update(page-number.get() + 1)
  #grid(
    columns: (1fr),
    rows: (
      15mm,
      6mm,
      60mm,
      6mm,
      auto,
      6mm,
      auto,
      6mm,
      auto,
      3mm,
      1mm,
      3mm,
      auto,
      6mm, // gap
      1fr,
      0.5pt,
      17mm, // footer
    ),
    row-gutter: 0mm,
    image("bpc-logo.png", height: 100%),
    [], // Gap,
    rect(
      width: 100%,
      height: 100%,
      stroke: black + 0.5pt,
      radius: (top-left: 5mm, bottom-right: 5mm),
      inset: (
        top: 5mm,
        right: 5.5mm,
        left: 6.5mm,
        bottom: 1mm
      )
    )[
      Please write clearly in block capitals.
      #grid(
        rows: (10mm),
        columns: (auto, 2.5mm, 50mm, 16mm, auto, 2.5mm, 40mm),
        pad(bottom: 2.5mm, align(bottom, [Centre number])),
        [],
        table(rows: (1fr), columns: range(5).map(_ => 10mm), stroke: 0.5pt),
        [],
        pad(bottom: 2.5mm, align(bottom, [Candidate number])),
        [],
        table(rows: (1fr), columns: range(4).map(_ => 10mm), stroke: 0.5pt),
      )
      #grid(
        rows: range(3).map(_ => 9mm),
        columns: (35mm, 3mm, 1fr),
        align(bottom)[Surname], [], align(bottom, line(stroke: 0.5pt, length: 100%)),
        align(bottom)[Forename(s)], [], align(bottom, line(stroke: 0.5pt, length: 100%)),
        align(bottom)[Candidate signature], [], align(bottom, line(stroke: 0.5pt, length: 100%))
      )
      #place(dx: 38mm, dy: 1.5mm)[I declare this is my own work.]
    ],
    [],
    text(font: "Chevin Pro", weight: "medium", size: 28pt, [#context exam-config.get().level]),
    [],
    text(font: "Chevin Pro", weight: "bold", size: 28pt, upper([#context exam-config.get().subject])),
    [],
    text(font: "Chevin Pro", weight: "medium", size: 16pt, [#context exam-config.get().paper]),
    [],
    line(stroke: 1mm + black, length: 100%),
    [],
    grid(
      rows: (auto),
      columns: (auto, 1fr, auto),
      text(font: "Chevin Pro", weight: "medium", size: 15pt, [#context exam-config.get().date]),
      align(center, text(font: "Chevin Pro", weight: "medium", size: 15pt, [#context exam-config.get().time])),
      align(right, text(font: "Chevin Pro", weight: "medium", size: 15pt, [Time allowed: #context exam-config.get().time-allowed])),
    ),
    [],
    grid(
      rows: (1fr),
      columns: (1fr, 5mm, 35mm),
      [
        *Materials* \
        For this paper you must have:
        #context[#for material in exam-config.get().materials [
          - #eval(material, mode: "markup")
        ]]

        *Instructions* \
        #context[#for instruction in exam-config.get().instructions [
          - #eval(instruction, mode: "markup")
        ]]

        *Information* \
        - The marks for questions are shown in brackets.
        - The maximum mark for this paper is #context marks-counter.final().at(0).

        #context[#if exam-config.get().advice.len() > 0 and exam-config.get().advice.at(0) != "" [
          *Advice* \
          #for advice in exam-config.get().advice [
            - #eval(advice, mode: "markup")
          ]
        ]]
      ],
      [],
      text(size: 9pt, context table(
        stroke: 0.5pt,
        rows: (8mm, 6mm, ..range(questions-counter.final().at(0)).map(_ => 6mm)),
        columns: (1fr, 1fr),
        table.cell(colspan: 2, fill: rgb("#dedede"), align(center + horizon)[For Examiner's Use]),
        align(center + horizon)[Question],
        table.cell(fill: rgb("#dedede"), align(center + horizon)[Mark]),
        ..range(questions-counter.final().at(0)).map(i => (align(center + horizon)[#(i + 1)], table.cell(fill: rgb("#dedede"), []))).flatten(),
        table.cell(fill: rgb("#dedede"), stroke: 1pt)[#align(center, [*TOTAL*])],
        table.cell(fill: rgb("#dedede"), stroke: 1pt)[], 
      ))
    ),
    line(length: 100%, stroke: 0.5pt),
    context grid(
      rows: (1fr),
      columns: (auto, 1fr, auto),
      align(bottom, tiaoma.barcode(
        exam-config.get().series-code + exam-config.get().specification-code + exam-config.get().paper-code + (if page-number.get() < 10 { "0" + str(page-number.get()) } else { str(page-number.get()) }),
        "Code39",
        options: (
          scale: 0.4
        )
      )),
      align(center + bottom, text(size: 7pt, [#exam-config.get().global-code/#exam-config.get().series-code/#exam-config.get().specification-code/#exam-config.get().paper-code])),
      align(right + bottom, text(font: "Chevin Pro", weight: "bold", size: 20pt, [#exam-config.get().specification-code/#exam-config.get().paper-code]))
    ) // footer
  )
]

#let question-page(
  answer-all-questions: false,
  body
) = context {
  page(margin: 0cm)[
  #let content-dy = if answer-all-questions { 1.25cm } else { 0cm }
  #grid(
    columns: (14mm, 1fr, if exam-config.get().hide-borders { 20mm } else { 14mm }),
    rows: (17mm, 1fr, 27mm),
    [],
    grid.cell(inset: (bottom: 0.5cm), align(center + bottom, [#context page-number.get()])),
    [],
    [],
    rect(width: 100%, height: 100%, stroke: (x: if exam-config.get().hide-borders { none } else { black.lighten(50%) + 0.5pt }, bottom: if exam-config.get().hide-borders { none } else { black.lighten(50%) + 0.5pt }, top: black.lighten(50%)+0.5pt), inset: 0.2cm)[
      #if answer-all-questions [
        #rect(stroke: (x: none, top: none, bottom: 0.5pt), width: 100%, height: 1.25cm)[
          #align(center + horizon)[Answer *all* questions.]
        ]
      ]
      #place(
        dy: 0mm, 
        rect(
          width: 100%,
          height: 100% - content-dy,
          stroke: none,
          inset: 0mm,
          body
        )
      )
    ],
    grid.cell(inset: (x: 2mm, y: 1mm), align(center, text(size: 7pt, []))),
    [],
    context grid.cell(inset: (bottom: 6mm), [
      #grid(
        columns: (1fr, 1fr),
        rows: (1fr),
        align(bottom + left, tiaoma.barcode((if page-number.get() < 10 { "0" + str(page-number.get()) } else { str(page-number.get()) }),
          "Code39",
          options: (
            scale: 0.4
          )
        )),  
      align(bottom + right, text(size: 7pt, [#context exam-config.get().global-code/#context exam-config.get().series-code/#context exam-config.get().specification-code/#context exam-config.get().paper-code]))
      )
    ]),
    []
  )]
  context page-number.update(page-number.get() + 1)
}


#let question(
  question-number: 1,
  question: [],
  marks: 3,
  answer-spaces: (),
) = context {
  let config = exam-config.get()
  set par(spacing: 6mm)
  marks-counter.update(current => current + marks)
  let has-fract-part = if config.numbering-style == "compsci" {
    question-number - calc.floor(question-number) > 0
  } else {
    false
  }

  if not has-fract-part or (config.numbering-style == "maths" and question-number.len() < 2) {
    questions-counter.step()
  }

  question-marks.update(value => (..value, (question-number, marks)))

  question-numbers.update(value => (..value, question-number))
  let is-final-part = not question-numbers.final().any(number => number > question-number and number < calc.ceil(question-number + 0.0001))
  
  pad(top: 5mm, left: 0mm, right: 0mm, bottom: 0mm, grid(
    columns: (3mm, 20mm, 4mm, 147mm, 2mm),
    [],
    table(
      columns: (6mm, 6mm, 2mm, 6mm),
      rows: (5mm),
      stroke:
        if config.numbering-style == "compsci" { 
          0.5pt
        } else { none },
      align(center + horizon,
        if config.numbering-style == "compsci" [
          *#calc.floor(question-number / 10)*
        ] else [*#question-number.at(0)*]
      ),
      align(center + horizon,
        if (config.numbering-style == "compsci") [
          *#(question-number - 10 * calc.floor(question-number / 10) - calc.fract(question-number))*
        ] else if (question-number.len() > 1) [*(#question-number.at(1))*]
      ),
      if has-fract-part {
        table.cell(stroke: none, align(center + top, [*$dot$*]))
      } else {
        table.cell(stroke: none, []) 
      },
      if config.numbering-style == "compsci" {
        if has-fract-part {
          align(center + horizon, [*#calc.round(calc.fract(question-number) * 10, digits: 1)*])
        } else {
          table.cell(stroke: none, [])
        }
      } else if (question-number.len() > 2) { align(center + horizon)[*(#question-number.at(2))*] }
    ),
    [],
    grid(
      columns: (1fr),
      question,
      if (marks != none) {
        pad(top: 1mm, bottom: 0mm, left: 0mm, right: 0mm, align(bottom + right, [*[#marks marks]*]))
      },
      grid(
        columns: (1fr),
        ..answer-spaces,
        if is-final-part {
          place(
            bottom,
            dx: 100% + 8mm,
            align(center+horizon)[#rect(width: 10mm, height: 14mm, stroke: black, inset:1mm)[
              #table(columns:1,
              rows: (1fr, 1fr),
              table.cell(stroke: none, []),table.cell(stroke: (x: none, bottom: none))[
                *#question-marks.final().filter(q => q.at(1) != none and calc.floor(q.at(0)) == calc.floor(question-number)).map(q => q.at(1)).sum(default: 0)*
              ]
            )
          ]]
          )
        }
      )
    ),
    []
  ))
}


#let lines(
  count: 0
) = grid(
  rows: range(0, count).map(_ => 9mm),
  ..range(0, count).map(_ => align(bottom, line(length: 100%, stroke: 0.5pt)))
)

#let prompt-line(
  prompt: [Answer]
) = grid(
  rows: (9mm),
  columns: (auto, 1fr),
  column-gutter: 1mm,
  align(bottom, prompt),
  align(bottom, line(length: 100%, stroke: 0.5pt))
)

#let circle-answer(
  options: ([a], [b], [c], [d])
) = grid(
  rows: (18mm),
  columns: range(options.len()).map(_ => 1fr),
  ..options.map(option => align(center + bottom, option))
)

#let turn-over = align(center)[#v(0.5cm) *Turn over for the next question*]