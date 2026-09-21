#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))

= Welcome to Computer Science
#note[
  #grid(columns:(2fr,8fr),
  image("../../../Templates/GClassLogo.svg"),
  [Please fill out the Google Form before the end of the week so I can learn a little about you!]
  )
]

#QuickQuestions(
  firstSet: (
    ([Calculate $ 4-3+5 $],[$6$]),
    ([Calculate $ 3-3times 6+2 $],[-13]),
    ([Add brackets to make this true:
    $ 3+5 times 6 = 48 $],[$(3+5)times 6$]),
    
  ),
  secondSet: (
    ([Using\ #text(fadedBlue)[#underline[www.BPCompSci.com]], find a list of all topics you will cover in Year 1/],[http://sites.google.com/barton.ac.uk/bpcompsci/year-1-topics]),
    ([Using BPCompSci, find the lesson number for the first year lesson titled "Assembly Language"],[L142 - Assembly Language]),
    
  )
)

== Welcome to Computer Science
#let card(
  image:image("img/id_tgr.jpg"),
  name:[*Tim Grace*],
  pronouns:[(He, Him)],
  add_text: "") = grid(
    columns:(2.5fr,5fr),
    image,[
      #name\
      #pronouns\
      _#add_text _
    ]
  )
#grid(columns:(1fr,1fr,1fr),
card(image: image("img/id_tgr.jpg",height:5em)),
card(image:image("img/id_akc.jpg",height:5em),name:[*Alex Colville*]),
card(image:image("img/id_crp.jpg",height:5em),name:[*Chris Palmer*])
)
#grid(columns:(1fr,1fr),
card(image:image("img/id_tdw.jpg",height:7em),name:[*Tristan White*],add_text:"Subject Leader of Computer Science"),
card(image:image("img/id_mwa.jpg",height:7em),name:[*Matt Arnmor*],add_text:"Director of Maths and Computer Science"),
)

== What is expected of you
#bold[Punctuality]
- Arrive #underline[2 minutes] early for lessons:
  - Mobile in the holder and earbuds away.
  - Pick up a mini-whiteboard and pen.
  - Log in.
  - Get out paper and pen for notes.

== What is expected of you
#bold[Responsibility for your learning]
- Don't waste time!
  - If you have questions, *ask*.
  - Just *have a go*. The best way to learn is often by getting something wrong.
  - Don't let your behaviour get in the way of others' learning.

== What is expected of you
#bold[Notes]
- You are expected to take notes in *all* lessons.
  - You will need to *hand-write notes*. This is research driven!
  - You will need the following symbol when there's content you'll need/want to write:
#grid(columns:(1fr,1fr,1fr), column-gutter: 40pt,
grid(columns:(0.6fr,1fr),image("../../../Templates/note-paper.svg",height:4em),
[Use your own paper!]
),

grid(columns:(0.6fr,1fr),image("../../../Templates/green-book.png",height:4em),
[Use your green book!]
),

grid(columns:(0.6fr,1fr),image("../../../Templates/mwb.png",height:2.5em),
[Use your mini-whiteboard!]
)
)

== What is expected of you
#bold[Screen Use]
- Only what we're working on should be on your screen.
  - ie, You shouldn't be checking your emails...
  - No coding when doing other activities.
  - You can have the slides up (always available on GClassroom)
  - If you misuse this, you'll get your screen locked.

== What is expected of you
#bold[Weekly Assignments]
- More on this next lesson, but for now:
  - 100% submission is required. You have to... do it...
  - Roughly 4.5 hours of work outside lesson per week.

== What is expected of you
#bold[What should I do if I miss a lesson?]
- You should:
  - Notify me by email
  - Get a parent to authorise the absence online (focus/Parent Portal)
  - Catch up with the missed content.
  - If you've emailed me and asked, I'll tell you!
  - If you're still confused, _Ada Computer Science_ or the lunchtime Workshop can help. *We'd recommend not using Google here. It doesn't help.*
#note[This is also on BPCompSci.com if you're not sure/forget.]

== Computer Science A Level
#grid(columns:(1fr,2fr), column-gutter:50pt,
[Computer Science is a linear A Level - 
all exams are at the end of 2 years

Exam board:\
*AQA*
],
image("img/totalSpec.png",height:85%))