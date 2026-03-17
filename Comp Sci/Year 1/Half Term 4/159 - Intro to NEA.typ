#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

= Computer Science NEA

== SA 4 April Assessment
- First week back after Easter

- Paper 2 theory only (could be any Paper 2 topic you've covered)

- Info on BPCompSci

== NEA
*Non Examined Assessment*

This is worth 20% of your final mark.

Paper 1 (practical) 40% \
Paper 2 (theory) 40% \
NEA 20%

== What will you produce?
1. #bold[A technical solution for a specific purpose.] \ #text(22pt)[You will decide on a *problem* that could be solved with a large program.\ You will then write that program.]
#pause
2. #bold[A technical (written) report containing:] \ #text(22pt)[The research you've done \ Documentation about how the program works \ A copy of your (self-documenting) code \ A comprehensive account of your testing \ You and your end user's evaluation of how your program solves the problem.]

== How long will it take?
The whole project begins now, and the final deadline is in *Feb 2026*:
#text(20pt)[- From now until July, you will focus on deciding a project and researching it.
- The bulk of the programming will happen over the summer between July and October.
- The bulk of the report writing will happen between November and February.
#pause]

We will spend a large amount of lesson time on the project (especially Autumn). \
You *are*, however, expected to work on this project *as much at home as in lessons*!

== From AQA:
“The project allows students to develop their practical skills in the context of solving a realistic problem or carrying out an investigation. \ #pause
The project is intended to be as much a learning experience as a method of assessment; students have the opportunity to work independently on a problem of interest over an extended period, during which they can extend their programming skills and deepen their understanding of computer science. \ #pause
The most important skill that should be assessed through the project is a student's ability to create a programmed solution to a problem or investigation.”

== Ideas from AQA:
#text(18pt)[
  - a simulation, eg of a business or scientific nature, or a well-known problem such as Conway's Game of Life
  - a solution to data processing problem for a business, eg stock control, membership systems
  - the solution of an optimisation problem, eg production of a rota, shortest-path problems, route finding
  - a computer game with a dynamically created maze
  - an application of artificial intelligence
  - machine learning algorithms
  - analysis of live data feeds, eg Twitter feeds
  - investigation into the use of neural networks, eg as a connect 4 player
  - exploring large datasets for correlations, eg the World Bank’s datasets (see http://data.worldbank.org), and creating useful visualisations of these correlations to answer interesting questions
]

== Past successful projects from Barton:
#text(18pt)[- Further Maths matrices calculator - C\# / Android Java
- Projectiles simulator / revision tester - C\#
- Maths primary teaching game with analysis - C\#, SQLite
- Cycling App - Android Java, NOSQL
- Hama beads - C\#
- Investigation into 2D terrain generation - C\#
- Boolean Algebra simplification - C\#
- Maze generators and solvers - C\#
- Sorting/Dijkstra's/simplex algorithm teacher tool - C\#
- Inverse kinematics robot arm simulator - C\#
- Multi-layered neural network for digitising hand-written maths notes - C\#
- Intelligent quiz for matching owners to dog breeds - C\#, SQLite
- Parents’ Evening booking system with automatic appointment scheduler - C\#, MySQL
- Movie/song/book/restaurant recommendation system - C\#, SQLite]

== Mark mark-scheme
#table(columns:(1fr,1fr,1fr),inset:10pt,
table.cell(colspan: 2)[Section],[Max Mark],
[1],[Analysis],[9],
[2],[Design],[12],
[3],[Technical Solution],[27],
[4],[Testing],[8],
[5],[Evaluation],[4],
table.cell(colspan:2)[Total],[75])
#text(22pt)[Tech Sol is made up of two parts: _Completeness_ (15) and _Techniques Used_ (27)]

== Advice on choosing a project
It is ALL about algorithms and data structures - complicated ones \ #pause
#h(1cm)Can be using complex well known ones \ #pause
#h(1cm)Can be ones you have created yourself - but be careful as there is no point reinventing the wheel badly. #pause

If you do Further Maths can get good marks by using advanced mathematical concepts
#only(5)[
  #place(dy:-11.5em,dx:6em)[#image("img/159 A Band.png", height:120%)]
]
#only(6)[
  #place(dy:-11.5em,dx:4.8em)[#image("img/159 B Band.png", height:120%)]
]

== Advice on choosing a project
Choose a project that you will actually enjoy!  You will be working on it for a long time - we will start after Easter and not hand in till February 2026. #pause

#text(red)[#bold[You do NOT get marks for making it look nice]] - but equally it should be clear and intuitive to use your program #pause

Need to strike a balance between:
- having a *complex* project that will get you high marks; and
- something #text(orange)[#bold[achievable]] in the time you have. #pause

Deciding to learn a new programming language is risky and you must always check with your teacher first. 

== Use of AI for the NEA
What do you think the AI advice is?

== Advice from current Second Years
#Comp
On BPCompSci, under BPCompSci > NEA > Deciding on a project

Scroll to the bottom.

What's your best take-away advice from there?

== Are these projects A-Level standard?
#discuss
In pairs look at the following possible projects.  Discuss if each \ of them is a reasonable project for an A-level student. If they are, say why; if they are not, say how it could be changed so that they are.

#only(1)[1. Noughts and Crosses program - allows two human players to play the game. Will check if a move is valid and know when a player has won.  Will count how many times each player has won a game.]
#only(2)[2. Rota system - a system that stores information about employee availability and shifts that employees are needed for at a business and matches these two together.]
#only(3)[3. Encryption - a program that demonstrates the use of Caesar Cipher encryption. Allows user to enter in plaintext and program translates it to ciphertext and vice versa.]
#only(4)[4. Quiz - a quiz program that stores multiple choice questions and answers in a text file and scores a user based upon their answers to the questions.]

== Quickfire Project Ideas
#mwb
In pairs, come up with as many possible project ideas as you can.

I'll come around and tell you how good these are.

== First Task
#text(22pt)[This Easter you will need to come up with a possible problem to solve.

You will need to fill in the Project Proposal form by _TUESDAY 22nd APRIL_. This will be part of the Easter homework.

Need to be thinking about it carefully.  #text(red)[#bold[Don’t leave it till the day before]] to decide what to do! 

What you put on the Project proposal form will be the start of a discussion with your teacher about your project.  We will help you formulate your idea into a project that *could* get you high marks.

BPCompSci has all the information you need in the _NEA/Deciding on a project_ section.]

== Questions???
#Comp
Use the google sheet linked on BPCompSci to ask any \ questions you have about the NEA so that we can answer and \ share with everyone.

We will be checking this throughout the Easter Holidays.