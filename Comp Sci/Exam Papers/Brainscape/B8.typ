#import "../../../Templates/exam-template.typ": *

#let review-number = "8"
#let review-time = "Year 2 Spring 1"

#exam(
  config: (
    level: "A-level",
    subject: "Computer Science",
    paper: "Brainscape Review " + review-number,
    materials: ("a calculator.",),
    instructions: (
      "Use black ink or a black ball-point pen.",
      "Fill in the boxes at the top of this page.",
      "Answer *all* questions.",
      "You must answer the questions in the spaces provided. Do not write outside the box around each page or on blank pages.",
      "If you need extra space for your answer(s), use the lined pages at the end of this book. Write the question number against your answer(s).",
      "Do all rough work in this book. Cross through any work you do not want to be marked."
    ),
    date: review-time,
    time: "",
    time-allowed: "30 minutes",
    advice: ("",),
    series-code: "2526",
    specification-code: "7517",
    paper-code: "B" + review-number
  )
)[
  #question-page(answer-all-questions: true)[
    #question(
      question-number: 1,
      question: [
        What is a first class object?
      ],
      marks: 5,
      answer-spaces: (
        lines(count: 9),
      )
    )

    #question(
      question-number: 2,
      question: [
        What does function application mean?
      ],
      marks: 1,
      answer-spaces: (
        lines(count: 2),
      )
    )

    #question(
      question-number: 3,
      question: [
        What does partial function application mean?
      ],
      marks: 2,
      answer-spaces: (
        lines(count: 4),
      )
    )

    #question(
      question-number: 4,
      question: [
        What is a URL?
      ],
      marks: 2,
      answer-spaces: (
        lines(count: 4),
      )
    )
  ]

  #question-page[
    #question(
      question-number: 5,
      question: [
        What is a domain name server?
      ],
      marks: 1,
      answer-spaces: (
        lines(count: 3),
      )
    )

    #question(
      question-number: 6,
      question: [
        Describe how domain names are organised.
      ],
      marks: 4,
      answer-spaces: (
        lines(count: 8),
      )
    )

    #question(
      question-number: 7,
      question: [
        What are the *three* main responsibilities of an internet registry?
      ],
      marks: 3,
      answer-spaces: (
        lines(count: 6),
      )
    )

    #question(
      question-number: 8,
      question: [
        What is meant by baud rate?
      ],
      marks: 1,
      answer-spaces: (
        lines(count: 3),
      )
    )
  ]

  #question-page[
    #question(
      question-number: 9,
      question: [
        What is parallel data transmission?
      ],
      marks: 2,
      answer-spaces: (
        lines(count: 3),
      )
    )

    #question(
      question-number: 10,
      question: [
        Give *three* advantages of serial over parallel transmission.
      ],
      marks: 3,
      answer-spaces: (
        lines(count: 6),
      )
    )

    #question(
      question-number: 11,
      question: [
        Describe monitoring, protection and code quality measures that can be used to reduce the thread by viruses. Give *two* points for each of monitoring, protection and code quality.
      ],
      marks: 6,
      answer-spaces: (
        lines(count: 12),
      )
    )

    #end-of-questions
  ]
]