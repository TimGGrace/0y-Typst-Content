#import "@preview/tiaoma:0.3.0"

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

#let exam-config = state("exam-config", default-exam-config)
#let page-number = state("page-number", 1)
#let question-numbers = state("question-numbers", ())
#let question-marks = state("question-marks", ())
#let marks-counter = counter("marks")
#let questions-counter = counter("questions")

#let end-of-questions = align(center, [#v(1cm) *END OF QUESTIONS*])
#let turn-over-marker = () => place(bottom + right, dy: -27mm, dx: -15mm)[*Turn over ►*]

#let defaults = (
  margin: (
    x: 18mm,
    bottom: 34mm,
    top: 19mm,
  ),
  stroke: 0.5pt + black.lighten(50%),
  page-number-offset: 3mm,
  inner-margin: 2mm,
  bottom-gutter: 6mm,
)

#let lozenge = rect(width: 8mm, height: 5mm, stroke: 0.6pt, align(center + horizon, ellipse(width: 4mm, height: 1.75mm)))
#let lozenge-options = (
  options: (),
  grow: false,
) => align(center + horizon, grid(
  columns: (auto, if grow { 1fr } else { auto }, 1.5cm),
  rows: 1cm,
  column-gutter: 1em,
  ..options.enumerate().map(((idx, opt)) => ([*#str.from-unicode(idx + "A".to-unicode())*], align(left, [#opt]), lozenge)).flatten()
))

#let lozenge-options-horizontal = (
  options: (),
  grow: false,
) => align(center + horizon, grid(
  columns: (range(options.len()).map(n=>1fr)),
  rows: 1cm,
  column-gutter: 1em,
  ..options.enumerate().map(((idx, opt)) => ([*#str.from-unicode(idx + "A".to-unicode())* #opt #place(dy:-1em,dx:4.5em,lozenge)])).flatten()
))


#let answer-all-questions = () => move(
  dx: -defaults.inner-margin,
  dy: -defaults.inner-margin,
  rect(
    width: 100% + 2 * defaults.inner-margin,
    height: 12mm,
    stroke: (x: none, top: none, bottom: defaults.stroke),
    align(center + horizon, [Answer *all* questions.])
  )
)

#let setup-page = (
  body,
  margin: defaults.margin,
  stroke: defaults.stroke,
  config: default-exam-config
) => {
  exam-config.update(default-exam-config + config)

  set text(font: "Arial", size: 11pt)
  show raw: set text(font: "Consolas",size:11pt)
  show figure: set figure.caption(position: top)
  set figure(numbering: none)
  show figure.caption: set text(weight: "bold")
  set pagebreak(weak: true)
  set page(
    margin: margin,
    background: context [
      #page-number.update(i => i + 1)
      #place(
        center,
        dy: page.margin.top - defaults.inner-margin,
        rect(
          width: 100% - page.margin.left - page.margin.right + 2 * defaults.inner-margin,
          height: 100% - page.margin.top - page.margin.bottom + 2 * defaults.inner-margin,
          stroke: (if exam-config.get().hide-borders {(top: stroke)} else {stroke})
        )
      )
      #place(
        top + center,
        dy: page.margin.top - 3mm - defaults.page-number-offset - defaults.inner-margin,
        [#page-number.get()]
      )

      #place(
        bottom + center,
        dy: -defaults.bottom-gutter,
        box(
          width: 100% - page.margin.left - page.margin.right + 2 * defaults.inner-margin,
          height: auto,
          grid(
            columns: (auto, 1fr, auto),
            align(bottom,
            tiaoma.barcode(
              if page-number.get() < 10 { "0" + str(page-number.get()) } else { str(page-number.get()) },
              "Code39",
              options: (
                scale: 0.5
              )
            )),
            [],
            align(
              bottom + right,
              text(
                size: 7pt,
                [#context exam-config.get().global-code/#context exam-config.get().series-code/#context exam-config.get().specification-code/#context exam-config.get().paper-code]
              )
            )
          )
        )
      )

      #context {
        if calc.rem(page-number.get() - 1, 2) == 1 and page-number.get() + 1 < page-number.final() {
          turn-over-marker()
        }
      }
    ]
  )

  body
}

#let front-cover() = page(background: none, margin: (x: 14mm, bottom: 5mm, top: 17mm))[
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
        - The maximum mark for this paper is *#context marks-counter.final().at(0)*.

        #context[#if exam-config.get().advice.len() > 0 and exam-config.get().advice.at(0) != "" [
          *Advice* \
          #for advice in exam-config.get().advice [
            - #eval(advice, mode: "markup", scope: (
              aqa: (
                lozenge: lozenge
              )
            ))
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
        ..question-numbers.final().map(x => calc.floor(x)).dedup().map(i => (align(center + horizon)[#(i)], table.cell(fill: rgb("#dedede"), []))).flatten(),
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
        pad(top: 1mm, bottom: 0mm, left: 0mm, right: 0mm, align(bottom + right, [*[#marks #if marks == 1 [mark] else [marks]]*]))
      },
      grid(
        columns: (1fr),
        ..answer-spaces,
        if is-final-part and not exam-config.get().hide-borders {
          place(
            bottom,
            dx: 100% + 4.5mm,
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
  ..range(0, count).map(_ => align(bottom, line(length: 100%, stroke: defaults.stroke)))
)

#let prompt-line(
  prompt: [Answer]
) = grid(
  rows: (9mm),
  columns: (auto, 1fr),
  column-gutter: 1mm,
  align(bottom, prompt),
  align(bottom, line(length: 100%, stroke: defaults.stroke))
)

#let prompt-line-with-units(
  prompt: [Answer],
  unit: [units],
  length: 30mm
) = align(right, grid(
  rows: (9mm),
  columns: (auto, length, auto),
  column-gutter: 1mm,
  align(bottom, prompt),
  align(bottom, line(length: length, stroke: defaults.stroke)),
  align(bottom, unit)
))

#let mantissa-answer(
  prompt: [Answer]
) = align(right, grid(
  rows: (9mm),
  columns:(auto, 3mm, 1fr),
  column-gutter: 1mm,
  align(horizon, prompt),
  [],
  align(center,
  [#table(columns:range(15).map(n=>1fr), inset:8pt,
  [` `],[` `],[` `],[` `],[` `],[` `],[` `],[` `],
  table.cell(stroke:(left:1pt,top:0pt,bottom:0pt))[],
  [` `],[` `],[` `],[` `],[` `],[` `],
  table.cell(stroke:(top:1pt,right:0pt,left:0pt,bottom:0pt), colspan:8)[Mantissa],
  table.cell(stroke:0pt)[],
  table.cell(stroke:(top:1pt,right:0pt,left:0pt,bottom:0pt), colspan:6)[Exponent])
  #place(dy:-17pt,dx:21.5pt,circle(radius:3pt,fill:black))]
)
  
))

#let circle-answer(
  options: ([a], [b], [c], [d])
) = grid(
  rows: (18mm),
  columns: range(options.len()).map(_ => 1fr),
  ..options.map(option => align(center + bottom, option))
)

#let turn-over = align(center)[#v(0.5cm) *Turn over for the next question*]
#let question-continues = (question) => align(center)[#v(0.5cm) *Question #question continues on the next page*]

#let blank-page = (message: [Turn over for the next question]) => page()[
  #align(center)[#v(0.5cm) *#message*]
  #place(dy: -12.5mm, line(
    start: (0% - defaults.inner-margin, 100% + defaults.inner-margin),
    end: (100% + defaults.inner-margin, 0% - defaults.inner-margin),
    stroke: black.lighten(50%)
  ))
  #align(center + horizon)[
    #upper[*Do not write on this page\ Answer in the spaces provided*]
  ]
]

#let additional-page = page()[
  #place(
    dy: -defaults.inner-margin,
    dx: -defaults.inner-margin,
    rect(
      width: 100% + defaults.inner-margin * 2,
      height: 100% + defaults.inner-margin * 2,
      stroke: 2pt,
      inset: 0pt,
    )[
      #table(
        columns: (17mm, 1fr),
        rows: (auto, 1fr),
        text(size: 10pt)[Question number],
        align(center)[
          *Additional page, if required.*\
          *Write the question numbers in the left-hand margin.*
        ],
        [],
        table.cell(inset: 0pt, [
          #grid(
            ..range(26).map(_ => rect(width: 100%, height: 9mm, stroke: (
              top: none,
              x: none,
              bottom: (thickness: 1pt, dash: "dotted")
            )))
          )
        ])
      )
    ]
  )
]



#let center = (body) => move(
      dx: -29mm,
      box(
        inset: (x: 10mm),
        width: 100% + 31mm,
        height: auto,
        align(center, body)
  )
)

#let assembly-page = {
pad(top:5mm, left:3mm, right: 0mm, bottom: 0mm)[
  #text(10pt)[#h(35mm)*Table 3 - Standard AQA assembly language instruction set*
  #table(columns:2,
  [`LDR Rd, <memory ref>`],[Load the value stored in the memory location specified by `<memory ref>` into register `d`],
  [`STR Rd, <memory ref>`],[Store the value that is in register `d` into the memory location specified by `<memory ref>`],
  [`ADD Rd, Rn, <operand2>`],[Add the value specified in `<operand2>` to the value in
register `n` and store the result in register `d`],
  [`SUB Rd, Rn, <operand2>`],[Subtract the value specified by `<operand2>` from the value in register `n` and store the result in register `d`],
  [`MOV Rd, <operand2>`],[Copy the value specified by `<operand2>` into register `d`],
  [`CMP Rn, <operand2>`],[Compare the value stored in register `n` with the value
specified by `<operand2>`],
  [`B <label>`],[Always branch to the instruction at position `<label>` in
the program],
  [`B<condition> <label>`],[Branch to the instruction at position `<label>` if the last comparison met the criterion specified by `<condition>`. Possible values for `<condition>` and their meanings are:
#grid(columns:(0.1fr, 1fr, 1fr), column-gutter: 20pt,
[],[`EQ: equal to
GT: greater than`], [`NE: not equal to
LT: less than`])],
  [`AND Rd, Rn, <operand2>`],[Perform a bitwise logical AND operation between the value in register `n` and the value specified by `<operand2>` and store the result in register `d`],
  [`ORR Rd, Rn, <operand2>`],[Perform a bitwise logical OR operation between the value in register `n` and the value specified by `<operand2>` and store the result in register `d`],
  [`EOR Rd, Rn, <operand2>`],[Perform a bitwise logical XOR (exclusive or) operation between the value in register `n` and the value specified by `<operand2>` and store the result in register `d`],
  [`MVN Rd, Rn, <operand2>`],[Perform a bitwise logical NOT operation on the value
specified by `<operand2>` and store the result in register `d`],
  [`LSL Rd, Rn, <operand2>`],[Logically shift left the value stored in register `n` by the number of bits specified by `<operand2>` and store the result in register `d`],
  [`LSR Rd, Rn, <operand2>`],[Logically shift right the value stored in register `n` by the number of bits specified by `<operand2>` and store the result in register `d`],
  [`HALT`],[Stops the execution of the program])
  *Labels*: A label is placed in the code by writing an identifier followed by a colon (:). To refer to a label, the identifier of the label is placed after the branch instruction.
  
  #h(60mm)*Interpretation of `<operand2>`*
  
  `<operand2>` can be interpreted in two different ways, depending on whether the first character is a \# or an R:
  - `#` - use the decimal value specified after the `#`, eg `# 25` means use the decimal value 25
  - `Rm` - use the value stored in register `m`, eg `R6` means use the value stored in register 6
]]

}