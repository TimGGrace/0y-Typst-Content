#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))

== Start of Term Plan
Today
- NEA Technical Solution check-in, 1-1s and Brainscape

Next week
- Only Thursday and Friday in College
- Work to be set for Monday - Wednesday

== Rough plan for 26/27
#place(dy:0.5em,
  grid(columns:(1fr,1fr),rows:(100%),inset:10pt,stroke:2pt+fadedBlue,
text(20pt)[
  #bold[Sept - Oct 2026:]
  - #text(red)[NEA Technical Solution]
  - #text(green.darken(20%))[Theory!]

  #bold[Nov - Dec 2026:]
  - #text(fadedBlue)[CAP 2]
  - #text(red)[NEA Technical Solution & Write Up]
  - #text(green.darken(20%))[Theory!]
],
text(20pt)[
  #bold[Jan - Feb 2027:]
  - #text(fadedBlue)[SA 6]
  - #text(red)[NEA final write-up]
  - #text(green.darken(20%))[Theory!]
  #bold[Feb - Mar 2027:]
  - #text(red)[Theory!]
  #bold[Apr - Jun 2027:]
  - #text(fadedBlue)[Revision, mocks and exams!]
]))

== Reminders - how Comp Sci works
#bold[Lessons:]
#text(22pt)[- For the first term, most weeks will contain two theory lessons and one NEA lesson
- After xmas, more theory lessons]#pause
#bold[Weekly Reviews:]
#text(22pt)[- Last lesson of every week, working on skills (like maths, SQL etc)]#pause
#bold[Weekly Assignments:]
#text(22pt)[- Still set every week, same deadlines (set on a Wednesday morning, due in at 4:30pm the following Tuesday)
- 100% submission required for the course]

== Reminders - expectations
- Turn up a bit early for class to make sure that you're ready to start at the start time of the lesson
- At the start of each lesson, you must put your mobile phone away in the holder and you must remove any wireless earphones
- For some NEA lessons I will allow you to listen to music (from the computer or wireless phone in the holder)

= NEA
#place(center+horizon,
  image("img/NEA_knights.png")
)


== NEA Deadlines
#text(fill:red,size:22pt)[All deadlines are at 4:00pm unless otherwise stated. Later deadlines may be subject to change.]
#text(20pt)[#table(columns:(1fr,0.5fr),
[#strike[Initial Project Proposal]],[#strike[22 April 2025]],
[#strike[Analysis Draft & Interview $1$]],[#strike[16 June 2025]],
[#strike[Analysis Prototype]],[#strike[26 June 2025]],
table.cell(fill:orange.transparentize(50%))[Analysis - Final Objectives \ Tech Solution Check In],table.cell(fill:orange.transparentize(50%))[4 Sept 2025],
[Tech Solution - Finished Program],[10 November 25],
[Testing Video (handed in with HW)],[2 December 25],
[Full draft write up of NEA],[6 January 2026],
[FINAL deadline with corrections and paperwork],[4 February 2026])]

== Technical Solution check-in
#GClass
This one's larger than normal.

On Google Classroom:\
*L200 - NEA Technical Solution Progress Report*

If you would like a chat about the NEA, say now!

== What to do now
As we won't see each other for over a week, it is important that you have a plan for NEA work you will be doing.

You have been set some work for the lessons we miss 
- some Ada Computer Science assignments
- weekly review R200. 

The Technical Solution deadline is just two months away.

Ask me for help!