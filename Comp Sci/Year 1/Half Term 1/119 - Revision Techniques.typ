#import "@preview/touying:0.5.5": *
#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show math.equation: set text(font:"New Computer Modern Math")
#show: set page(fill:fadedYellow)

== Starter
#notes
Think about how you have prepared for exams \ in the past. \ \
On paper, write down:\
- What techniques did you use for revision?
- How did you manage your time?
- What did you do to prepare?
- How long did you spend?

Which of these techniques do you think were the most or least effective?




= Revision
//#place(center,dy:-12.5em,dx:10em,image("../../Images/119 MiB.png"))

*Today:*
#place(left,dy:20pt,[
- Identify how you currently revise for exams
- Compare different revision techniques
- Past Exam Paper Practice
- Evaluate the way you currently revise])

#practiceSlide("“What is the purpose of revision?”
")

== In groups...
Write down as many different possible revision techniques as you can think of. \
These do not necessarily have to be things that you have done before. \ \
Once you've got as many as you can think of, check those with your neighbours. What have you missed?

== In pairs
#notes
Fill out the advantages and disadvantages for each \ revision technique that you came up with.
#place(center,dy:1em,
table(columns:(1fr,1fr,1fr),inset:10pt,
[Revision Technique],[Advantages],[Disadvantages],
[#text(fill:fadedYellow)[asf]],[],[],
[#text(fill:fadedYellow)[asf]],[],[],
[#text(fill:fadedYellow)[asf]],[],[]))


== Past Paper Questions
#notes
Choose which theory questions to work on. \ \ 

Two topics to choose from:
#enum([Number Systems],[
CompArch])

*Use paper for your workings and answers*

== Revisiting the Starter
#notes
Find what you wrote at the beginning of the lesson about \ how you revise for exams. \ \
#enum(
  [Write down some pros and cons of the ways you currently revise.],
  [Write down at least one new idea that you might like to try over the next few weeks.]
)

== Optional Extra (If there's time)
On Google Classroom: \
*Debugging Worksheet* \ \
Or some catch-up on *programming worksheets* \
Or work on your *adventure game*

