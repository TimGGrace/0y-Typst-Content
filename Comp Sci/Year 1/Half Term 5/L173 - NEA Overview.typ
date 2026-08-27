#import "../../../Templates/Template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

= NEA Analysis
#note[More essential information is on BPCompSci. Read in your own time.]
#only(2)[
  #place(dy:-8.5em,dx:2em)[
    #image("img/173 Design.png", height:120%)
  ]
]

#KeyPerson(
  image-path:"../Comp Sci/Year 1/Half Term 5/img/Marie Brown.png",
  title:"Mrs Marie Van Brittan Brown",
  link-path: "https://lemelson.mit.edu/resources/marie-van-brittan-brown",
  content: [
    In 1966 Marie, along with the assistance of her husband, invented the closed-circuit television system. 
    
    It included two-way microphones to communicate with anyone outside, as well as a button that would send an alarm to police or security. 

    At the time, women were not allowed to file or own patents.
  ]
)

== The NEA Textbook
#grid(columns:(1.5fr,0.8fr),[
If you want one, we can lend you a copy of this excellent textbook as a resource for helping you complete your project.

If you take one, you will return it to us in February 2026 when handing in your NEA report

If you lose or write in the book, you’ll need to buy a new copy to give back to us.
],image("img/NEA Textbook.png"))

== Marks
#show table.cell.where(): set align(left)
#align(center)[#table(columns:(15em,3em),
[Analysis],[9],
[Design],[12],
[Technical Solution (program)],[42],
table.cell(colspan: 2)[Split into:],
[$quad quad$ Completeness],[15],
[$quad quad$ Techniques Used],[27],
[Testing],[8],
[Evaluation],[5],
table.cell(colspan: 2)[Total: 75])]

== NEA Deadlines
Yes, they do matter!#pause

... yes all of them#pause

... yes even the ones that are not the final one.#pause

Teachers are only allowed to give feedback on your written work ONCE.#pause

#place(dy:-8.5em,dx:1em)[#image("img/NEA Deadlines.png", height:100%)]

== The NEA "timetable"
#place(dy:1em,)[#text(20pt)[- #bold[Rest of this term]
  - Mostly complete Analysis
  - Create objectives and prototype
  - Start Technical Solution (main program)#pause
- #bold[Over summer holidays]
  - Complete Analysis including final set of objectives
  - Complete most of the Technical Solution#pause
- #bold[September to early November]
  - Technical Solution#pause
- #bold[November to January]
  - Write up NEA#pause
- #bold[January to February half term ]
  - Write up corrections after whole-cohort feedback]]

== Analysis
The first section of the write up needs to be completed *BEFORE* the main programming.#pause

Go onto BPCompSci, find the *NEA* page. \ Then the *Analysis* page.#pause

Find the statement at the top that describes what a fully scoped analysis includes.#pause

We have broken down the report into sections that will cover all of this.

== Statement of Problem
You will need to produce a clear statement that describes the specific *problem* that is being solved. 

Remember the reader should not need to know #bold[ANYTHING] about what you are about to make. 

You will need to say why this problem needs solving. What the issues are you are trying to resolve.

== Statements
A statement of problem could be:
#text(green)[
  - The problem I will be solving is...
  - People who face this problem experience...
  - The current best solution doesn't work because...
]#pause
A statement of problem should not be:
#text(red)[
  - I will create a program to...
  - My program will allow the user to...
  - The aim of my solution is...
  - The problem is a lack of programs I want to make...
]

== Is this a statement of problem?
#discuss
#only(1)[#place()[#image("img/173 Statement 1.png",height:100%)]]
#only(2)[#place()[#image("img/173 Statement 2.png",width:100%)]]
#only(3)[#place()[#image("img/173 Statement 3.png",height:100%)]]

== Statement of Problem
The goal is easy.#pause \ \

Make it sound like an old action movie trailer.#pause

Probably not quite that obvious though.

== Other sections (More later)
#only(1)[#grid(columns:(0.8fr,2fr), row-gutter:1em,
bold[Background],[Write about the background of the problem in sufficient detail for a third party to understand the situation that the problem is set in.],
bold[End User],[You need to describe for whom the problem is being solved.  \
Then make sure your system is tailored to these end users by talking to them. ],
bold[Initial Research],[The main section of the Analysis. Includes internet research, end-user interviews, existing products, possible algorithms/data structures, a prototype])]
#only(2)[#grid(columns:(0.8fr,2fr), row-gutter:1em,
bold[Objectives],[A #bold[numbered] list of SMART targets. The success of your project is determined by how well you evidence your program meeting these.],
bold[Modelling],[A high level model of the program. Should include all information that anyone would need to create your program themselves, including:
- User flowchart
- Modelling of algorithms and maths
- Diagrams for data storage (UML, ER etc.)],)]

== The mark scheme
#place(dy:-2em,dx:10em,)[#image("img/NEA Analysis spec.png", height:120%)]
== What does a top band analysis look like? (7-9 marks)
- Everything that is eventually programmed has an explicit, detailed objective (or sub-objective).

#uncover(2)[- Every objective (and sub-objective) has been motivated by research earlier in the analysis section.
]

== NEA Start!
#Comp
Two tasks:
1. Ensure your project proposal has been signed off! \ If not, address feedback and resubmit until I clear you.

2. Start the Statement of Problem. You can use your project proposal as a start. Set the scene for your program. \ \ I should finish reading it and thing "man, I really wish I had a program that could solve this..."