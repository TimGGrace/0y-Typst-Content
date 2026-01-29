#import "../../../Templates/template.typ": *
#import "@preview/fletcher:0.5.8" : *
// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)


= NEA Design
12 marks

== Sections left to complete
- Design
- Evaluation
We're going to look at *Design* first, then Evaluation.

== Deadlines
*2nd December 2025* – Testing video complete. Handed in with the weekly assignment.

*6th January 2026* – full write-up draft due in for feedback
Analysis, Design, Testing and Evaluation.
Whole class feedback 2 weeks later

*4th February 2026* – FINAL DEADLINE ALL COURSEWORK IN

== Design
*Purpose:* \
An experienced programmer should be able to pick up the design section and produce more or less the same program as you.

== From AQA
#text(30pt)[\"] #text(22pt)[Students are expected to articulate their design in a manner appropriate to the task and with *sufficient clarity for a third party to understand* how the *key aspects* of the solution/investigation are structured and on what the design will rely, eg use of numerical and scientific package libraries, data visualisation package library, particular relational database and/or web design framework.
#text(30pt)[\"]]

== From AQA
#text(30pt)[\"] #text(22pt)[The emphasis is on *communicating the design*; therefore it is acceptable to provide a description of the design in a *combination of diagrams and prose* as appropriate, as well as a *description of algorithms*, SQL, data structures, database relations as appropriate, and *using relevant technical description languages*, such as pseudo-code. \
Where design of a *user interface* is relevant, screen shots of actual screens are acceptable.#text(30pt)[\"]]

== How to structure the Design Chapter
#text(24pt)[There are no specific subheadings for this chapter. It should be structured based on the *key aspects or components* of your solution.

*Begin* with a high level overview of the whole system and a justification of the programming language / libraries used

*Then* work through each *key aspect/component* (each its own subheading), covering multiple *design techniques* for each component.

Across the whole chapter, you should cover a range of relevant design techniques.
]

== Chocie of Programming languages / \ libraries used
#Comp
You'll need to write down which programming language you are using and mention any libraries you need to load (eg: SQLite) \ \
You can also list any API's you are using here. \ \
*Key part*: Explain why you are using these. EG: C\# lets you do OOP. 

== High Level Overview
*Introduce* each of the *key components of the system*, and *how they interact* with each other. \ \
This should include a diagram/chart that shows different subroutines/modules interacting. Consider:
- Heirarchy chart
- System flowchart
- Data flow diagram
- UML diagrams

== What is the "flow" of your system?
Draw a simple flow diagram for your program.
#notes
eg: \
#diagram(
  node-shape: rect, node-stroke: 1pt,
  node((0,0),[Main \ Menu]),
  node((0.8,0),[Maze \ Generation]),
  edge((0,0),(0.8,0),marks:"-solid"),
  edge((0,0),(0.5,0.6),marks:"-solid"),
  node((1.6,0),[Solve \ Maze]),
  edge((0.8,0),(1.6,0),marks:"-solid"),
  node((2.4,0),[User \ Plays]),
  edge((1.6,0),(2.4,0),marks:"-solid"),
  edge((2.4,0),(3.4,0),marks:"-solid"),
) \
Examples:
- Website: How do you get from page to page?
- Game: How do you get to different areas?
- Stock Control: How do you add or reorder items?

== Key Components
#Comp
*What are the key components \ for your project?* \ \
To help you decide:
- Look at your analysis chapter
- Look at your objectives
- What are the important sections/modules in your Tech Sol? \
Eg: Maze generation, AI Player, Progress Tracking, Recommendation Algorithm, Main Simulation, Processing Payments

== Design Techniques:
#notes
You'll need to explain many of the following \ things, but what do you need to provide to do it?
#text(24pt)[- Algorithm design
- Data Structures
- Database Design
- SQL Query Design
- User Interface Design (Human Computer Interaction)
- Object-oriented Design
- File Organisation
- Security and integrity of data
- Data flow design
- Anything else relevant to your project!]

== Algorithms
#notes
You need to show and explain the *complex* algorithm(s) in your project. \ \
*Pseudo-code, structured english & flow charts* are appropriate ways to show these.

== Data structures
#notes
If you have custom data structures in memory, these should be explained. \ \
Simple structures, like an array of records, may not require much explanation (but it still needs some). \ \
Complex structures, like queues/linked lists/hash tables will need more explanation! \ \
Show me how you are going to use them, with examples. *Diagrams* are most appropriate here.

== Database Design
#notes
If you've got a database, the structure of the tables should be shown. \
*An Entity-Relationship Diagram* is best for this. \ \
Show how you've *normalised* it to *3NF*. \ \
Justify which  primary/foreign relations you're using.

== SQL Queries
#notes
Include *samples* of queries that are used, as well as explanations. \ \
Complex Query Examples:
- Multi-table SELECT queries
- Parametric SQL Queries
- Aggregate Functions (like 'COUNT')
*Do not past in C\# code*. Textual descriptions of the queries should accompany the pure SQL.

== User Interface Design
#notes
You need to show designs for any point where the user interacts with the system. \ \
That may be test based or a GUI, or otherwise. \
You can include *screenshots* of the final program in this section. \ \
If you have many similar screens, please only show one. \ \
You need to show your *rationale*.

== OOP
#notes
If you've got OOP in the project, you should show it off. \ \
You'll need *UML Class diagrams*. \ \
If you've implemented *inheritance, composition or polymorphism*, you should ensure these are in the diagrams. \ \
If you've got *so much OOP*, then you can separate out the diagrams into UML per class, and an inheritance diagram.

== File structure
#notes
If a project is storing data in files, the *structure* of those files should be described. \ 
Tell me how you're taking data from the program and storing it. \ Is it written in an order? \ What separates multiple entries?\ \ 
If multiple files are used, talk about the decision that lead to this and how you have *organised* the files.

== Security and Integrity of Data
#notes
Talk about any you've put into the program.
- Have you ensured the system is safe with deleted user data?
- Is the system safe if you lost power whilst running it?
- Is there sensitive data? How have you ensured it's safety?
\ \
Integrity:
- How do you make sure the user doesn't enter rubbish data?

== Anything else that is relevant to your project...
#notes
There may be other important parts of your project that haven't been discussed here. You must include it if it is a key component of the project! \ \
The idea of Design is that another programmer can pick up just your design section and be able to make exactly the same system as you.. \ \
This could include: multi-threaded architecture, hardware design, client-server networking model…

== An example of a structure
#text(blue,22pt)[Project Title: A maze-based game for learning Chemistry Keywords]
#grid(columns:2,
[
  *1. High-level overview* \
  *2. Choice of programming language / libraries* \
  *3. Maze generation* \
  #text(22pt)[- Algorithms
  - Data structures
  - Object-oriented design
  - UI design]
  *4. Pathfinding*
  #text(22pt)[- Algorithms
  - Data structures]
],
[
  *5. Random encounters (revision questions)*
  #text(22pt)[- Algorithms
- SQL Queries
- UI Design]
*6. Tracking progress*
#text(22pt)[- Algorithms
- Database Design
- SQL Queries
- UI Design]
])

== How to structure the design
#Comp
For your project and its key components, write \ what *subheadings* you might have for the Design Chapter.

== Comparing Designs
#notes
Before you start writing your design, \ \
Take a look at examples 3 and 4 on BPCompSci. \ \
#pause
Take some *notes*. What features of 3 means it gets more marks than 4?