#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter
#mwb
State the missing items
#only(1)[
#table(columns:3, inset:5pt,
table.header([Algorithm],[Size of Problem($n$)],[Time Comp],
[Linear Search],align(center)[#text(red)[`(1)`]],[$O(n)$],
[Binary Search],[Length of search list],align(center)[#text(red)[`(2)`]],
[Binary Tree Search],align(center)[#text(red)[`(3)`]],[$O(log n)$],
[Bubble Sort],[Length of list to sort],align(center)[#text(red)[`(4)`]],
[Merge Sort],[Length of list to sort],align(center)[#text(red)[`(5)`]]
))]
#only(2)[
#table(columns:3, inset:5pt,
table.header([Algorithm],[Size of Problem($n$)],[Time Comp],
[Linear Search],align(center)[#text(red)[Length of search list]],[$O(n)$],
[Binary Search],[Length of search list],align(center)[#text(red)[$O(log n)$]],
[Binary Tree Search],align(center)[#text(24pt,red)[Elements in search tree]],[$O(log n)$],
[Bubble Sort],[Length of list to sort],align(center)[#text(red)[$O(n^2)$]],
[Merge Sort],[Length of list to sort],align(center)[#text(red)[$O(n log n)$]]
))]

== SA 6 - January Assessment
In-class test\
*End of first week back* after Christmas (8th or 9th Jan)\ 
Topic list on BPCompSci:
- Representation of Sound
- Dictionary-based Compression
- Error Detection and Correction
- Context-free grammars
- FSMs and RegEx
- Set Theory
- Representation of Graphics
- D-type flip-flops

= Evaluation
4 marks
== Deadlines
*2nd December 2025* 
- Testing video complete. Handed in with the weekly assignment.

*6th January 2026* 
- full write-up draft due in for feedback
- Analysis, Design, Testing and Evaluation.
- Whole class feedback 2 weeks later

*4th February 2026*
- FINAL DEADLINE ALL COURSEWORK IN

== Evaluation
Evaluation allows you to reflect on the success of the project in meeting the objectives identified in Analysis. \ 
You should also reflect on feedback from the third party and discuss potential improvements and extensions to the solution. \ \ #pause
We'll use 4 headings:
- Overall Effectiveness of System
- Evaluation of objectives
- End User Feedback
- System improvements

== From AQA
Full consideration given to how well the outcome meets *all of its requirements*. #pause

How the outcome could be improved if the problem was revisited is discussed and *given detailed consideration*. #pause

Independent feedback obtained of a useful and realistic nature, *evaluated and discussed* in a meaningful way. #pause

== Evaluation
#GClass
Add these headings to your evaluation section:
- Overall Effectiveness of System
- Evaluation of objectives
- End User Feedback
- System improvements
What do you think needs to go in each?

== Evaluation
#GClass
Get started on that evaluation! \ \
Examples are on BPCompSci to guide you. \ \ \
I will continue with NEA Tech Sol Marking as you go.