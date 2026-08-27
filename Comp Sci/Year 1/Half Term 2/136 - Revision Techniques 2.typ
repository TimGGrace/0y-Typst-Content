#import "@preview/touying:0.5.5": *
#import "../../../Templates/template.typ": *
// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)

== Revision: Recap
#mwb
Write down *at least 5* different examples of revision techniques \ \
Include those you have and have not used before.

== SA 3
Week after Christmas (last lesson of that week)
- Theory (no C\# programming)
- Handwritten test
- See BPCompSci for all the topics we’ve studied up until that point
\
CAP1 will be the week before February half-term

= Revision Techniques
#note([Sharing some research on how to revise])

== Revision: *Explain*
#mwb
#place(dy:2em, dx:4.5em,
rect(inset:20pt,radius:30pt,fill:yellow.lighten(50%),stroke:1pt,align(center)[
“What is the difference between \ *active* and *passive* revision?”
]))
\ \ \ \ \ \ 
Write down a definition. If you don’t recognise these terms, make an educated guess.

#let act(body) = {text(orange)[#bold[#body]]}
#let pas(body) = {text(blue)[#bold[#body]]}


== #act([Active]) vs #pas([Passive]) revision
#pas([Passive]) revision is practising your #pas([recognition]). 

#act([Active]) revision is practising your #act([recall]).

It is much easier to #pas([recognise]) someone's name when you are told it, than it is to #act([recall]) their name.

Exams will only be testing your #act([recall])!

#note([From University of Leicester  \ #link("https://www.le.ac.uk/oerresources/ssds/studyskills/page_70.htm")[[#underline([Link to Research])]]
])

== #pas([Passive]) vs #act([Active]) revision
#pas([Passive]) revision is practicing your #pas([Recognition])

When you do passive revision, it often feels like learning is happening because a lot of right answers are _involved_.

However, whilst this may help with cramming, studies show it is poor for causing long-term recall.
#note([From Bjork & Bjork (2011) \
#link("https://teaching.yale-nus.edu.sg/wp-content/uploads/sites/25/2016/02/Making-Things-Hard-on-Yourself-but-in-a-Good-Way-2011.pdf
")[[#underline([Link to Research])]]])

== #pas([Passive]) vs #act([Active]) revision
#act([Active]) revision is practising your #act([recall]).

Doing more #act([active]) revision will mean you are better at #act([recall]) in the future (i.e exams, tests, real life when you need the information)

Activities which force you to remember something with minimal clues will give you the opportunity to practice #act([recall]).
#note([
  Roediger & Karpicke (2006) \
  #link("http://learninglab.psych.purdue.edu/downloads/2006_Roediger_Karpicke_PsychSci.pdf")[[#underline([Link to Research])]]
])

== #pas([Passive]) vs #act([Active]) revision
#text(24pt)[
  The testing effect is the idea that successfully remembering something causes you to find it easier to remember it in the future. You will also be able to remember it for longer, so you won’t have to revise it so often!

So, the things you get correct in a test help you to remember them for longer.

You also see which things you need to work on, by looking up what you get wrong

]

#note([
  Roediger & Karpicke (2006) \
  #link("http://learninglab.psych.purdue.edu/downloads/2006_Roediger_Karpicke_PsychSci.pdf")[[#underline([Link to Research])]]
])

== Revision: *Categorise*
#mwb
#place(dy:2em, dx:3em,
rect(inset:20pt,radius:30pt,fill:yellow.lighten(50%),stroke:1pt,align(center)[
Categorise your revision techniques into \
#act([Active]) and #pas([Passive])
]))
\ \ \ \ \
Splitting your board in half like so: 
#table(columns:2,fill:blue.lighten(80%),inset:25pt,[Active],[Passive],[``])

== How can I do more #act([active]) revision?
Activities which force you to remember something with minimal clues will give you the opportunity to practise recall.

- Weekly reviews and questions in class
- Weekly assignment questions *without* using the answers to partially help you
- Brain Dumps on a particular topic
- Testing yourself on definitions (e.g. using flashcards from Brainscape!)
- Review questions at the end of text book chapters
- Past Exam Questions

== Today, you have options...
#GClass
You must choose to cover *at least two* programming worksheets today. Make a brief timed plan now! 

_For each you will need to copy and paste the code you write into a Google Doc to attach to the Google assignment_

HAND IN your work at the end.
