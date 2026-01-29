#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)

== Starter
#mwb
#let hiddenCell = [\*\*\*\*\*\*\*\*]
Recall the disadvantages of a flat-file approach to databases:
#place(dy:25pt)[#text(16pt)[#table(columns:range(11).map(n=>1fr),
[S_ID],[FName],[SName],[Address],[Phone],[DoB],[C_ID],[Title],[Cost],[L_ID],[L_Name],
[001],[James],[Ashby],hiddenCell,[07444...],[26-1-16],[001],[C Sci],[£0],[321],[Tim],
[001],[James],[Ashby],hiddenCell,[07555...],[26-1-16],[002],[Maths],[£0],[100],[Jo],
[001],[James],[Ashby],hiddenCell,[07444...],[26-1-16],[003],[F Maths],[£0],[100],[Jo],
[001],[James],[Ashby],hiddenCell,[07444...],[26-1-16],[004],[Physics],[£0],[949],[Steve],
[002],[Kacper],[Dziki],hiddenCell,[07123...],[09-3-27],[001],[C Sci],[£0],[321],[Tim],
[002],[Kacper],[Dziki],hiddenCell,[07123...],[09-3-27],[002],[Maths],[£0],[101],[Lynn],
[002],[Kacper],[Dziki],hiddenCell,[07123...],[09-3-27],[001],[Eng],[£0],[950],[John],
[003],[Adan],[Lee],hiddenCell,[07919...],[09-3-31],[001],[C Sci],[£0],[321],[Tim],
[003],[Adan],[Lee],hiddenCell,[07919...],[09-3-31],[002],[Maths],[£0],[102],[Clive],
[003],[Adan],[Lee],hiddenCell,[07919...],[09-3-31],[005],[Eng Lan],[£0],[887],[Ed],

)]]

== Disadvantages of flat-file approach:
#notes
#text(20pt)[
1. Data inconsistency#pause
  - James had two different phone numbers.#pause
2. Data redundancy#pause
  - Student data stored once per course they're taking.#pause
3. Inefficiency#pause
  - Re-entering everything when a student takes a course is time consuming!#pause
4. Difficult to maintain#pause
  - Large amounts of data are being queried at a time, pointlessly.
5. Program-data dependence#pause
  - File structure means that programs must know the structure of the entire system in order to interact at all. Changes to this structure will mean that programs must be changed. This is known as *unproductive maintenance*]

== From 2018 Paper 2 Q7.3:
#text(red, 19.6pt)[`*Minimise data duplication // no unnecessary repeated data; A. reduce for minimise
R. eliminate
*Eliminate data redundancy; A. reduce/minimise for eliminate
Eliminate data inconsistency // improve consistency // avoid inconsistency problems;
Eliminate update anomalies; A. example in context A. updates only need to be made in one place
Eliminate insertion anomalies; A. example in context
Eliminate deletion anomalies; A. example in context
NE. easier to update/insert/delete without concrete example or good explanation
NE. fewer errors when updating/inserting/deleting without concrete example or good explanation
NE. saving space/memory NE. easier/faster to query
`]

= Database Design: Normalisation
#note[Keywords: `Flat file; Data inconsistency; data redundancy; program-data dependence; relational database; normalisation; primary key; foreign key; composite key; repeating group; 1NF; 2NF; 3NF;`]

== Aim
#notes
It is important that our SQL databases are structured in such a \ way as to minimise duplication of data.

*Relational Database*
- A collection of tables linked by key fields #pause
*Normalisation*
- The process of decomposing a flat-file database into the best\* possible relational database.

#text(16pt)[\* for storage size.]

== Example Normalisation
#notes
A publishing company want to create a database to keep data \ about their authors and each of the books that author has published. Each author has an agent, each published book has a category, and each book category has a specified royalty rate.

So we start with:

#bold[Author] (#underline[Author number], 
Surname, Forename, Address, Phone number, Agent Number, 
Agent Name, Agent Address, Book Title, Book Category, Royalty Rate)

This is called *un-normalised form (UNF)*

== First Normal Form (1NF)
#notes
Check for any *repeating groups*. These should be removed \ into a new entity. #pause

#bold[Repeating Group:] A set of attributes whose group-like *structure* repeats with *different data* from row to row. #pause

#place(dy:25pt)[#text(16pt)[#table(columns:range(11).map(n=>1fr),
[S_ID],[FName],[SName],[Address],[Phone],[DoB],[C_ID],[Title],[Cost],[L_ID],[L_Name],
[001],[James],[Ashby],hiddenCell,[07444...],[26-1-16],[#pin(0)001],[C Sci],[£0],[321],[Tim],
[001],[James],[Ashby],hiddenCell,[07555...],[26-1-16],[002],[Maths],[£0],[100],[Jo],
[001],[James],[Ashby],hiddenCell,[07444...],[26-1-16],[003],[F Maths],[£0],[100],[Jo],
[001],[James],[Ashby],hiddenCell,[07444...],[26-1-16],[004],[Physics],[£0],[949],[Steve#pin(1)],
[002],[Kacper],[Dziki],hiddenCell,[07123...],[09-3-27],[#pin(2)001],[C Sci],[£0],[321],[Tim],
[002],[Kacper],[Dziki],hiddenCell,[07123...],[09-3-27],[002],[Maths],[£0],[101],[Lynn],
[002],[Kacper],[Dziki],hiddenCell,[07123...],[09-3-27],[001],[Eng],[£0],[950],[John#pin(3)],
[003],[Adan],[Lee],hiddenCell,[07919...],[09-3-31],[#pin(4)001],[C Sci],[£0],[321],[Tim],
[003],[Adan],[Lee],hiddenCell,[07919...],[09-3-31],[002],[Maths],[£0],[102],[Clive],
[003],[Adan],[Lee],hiddenCell,[07919...],[09-3-31],[005],[Eng Lan],[£0],[887],[Ed#pin(5)],
)]]
#pause
#pinit-highlight(0,1,dy:-2pt,extended-width:15pt,extended-height:2pt,fill:red.transparentize(70%))
#pinit-highlight(2,3,dy:-2pt,extended-width:20pt,extended-height:2pt,fill:green.transparentize(70%))
#pinit-highlight(4,5,dy:-2pt,extended-width:35pt,extended-height:2pt,fill:blue.transparentize(70%))

== First Normal Form
#notes
*UNF*\
#bold[Author] (#underline[Author number], 
Surname, Forename, Address, Phone number, Agent Number, 
Agent Name, Agent Address, Book Title, Book Category, Royalty Rate)

#only("2-")[*1NF*\
#bold[Author] (#underline[Author Number], Surname, Forename, Address, Phone number, Agent Number, Agent Name, Agent Address)]

#only(3)[#bold[Book] (Book Title, Book Category, Royalty Rate)]
#only(4)[#bold[Book] (#underline[Book Title], Book Category, Royalty Rate)]
#only(5)[#bold[Book] (#text(red)[#underline[Author Number\*]]#underline[, Book Title], Book Category, Royalty Rate)

This table now has two primary keys, known as a *composite key*.]

== Second Normal Form (2NF)
#notes
Any table with a *composite key* needs to be checked:

Do all of the non-key attributes depend on *every* part of the composite key?

If not, take them out and make a new entity.

== Second Normal Form
#notes
*1NF*\
#bold[Author] (#underline[Author Number], Surname, Forename, Address, Phone number, Agent Number, Agent Name, Agent Address)

#bold[Book] (#underline[Author Number\*, Book Title], #pin(0)Book Category, Royalty Rate#pin(1))
#only(2)[
  #pinit-highlight(0,1, fill:red.transparentize(60%))
] \ 
#only("3-")[
*2NF*\
#bold[Author] (#underline[Author Number], Surname, Forename, Address, Phone number, Agent Number, Agent Name, Agent Address)

#bold[Publication] (#underline[Author Number\*, Book Title\*])

#bold[Book] (#underline[Book Title], Book Category, Royalty Rate)
]

== Third Normal Form (3NF)
#notes
All non-key attributes must be checked:

Do they depend *only* on the primary key?

Each attribute must depend *on the key, the whole key and nothing but the key*

== Third Normal Form
#only("1-4")[*2NF*\ ]
#only(5)[*3NF*\ ]
#only("1-3")[#bold[Author] (#underline[Author Number], Surname, Forename, Address, Phone number, #pin(0)Agent Number, Agent Name, Agent Address#pin(1))

#bold[Publication] (#underline[Author Number\*, Book Title\*])

#bold[Book] (#underline[Book Title], Book Category, #pin(2)Royalty Rate#pin(3))]
#only("2-3")[#pinit-highlight(0,1, fill:red.transparentize(60%))]
#only(3)[#pinit-highlight(2,3, fill:red.transparentize(60%))]

#only(4)[
  #bold[Author] (#underline[Author Number], Surname, Forename, Address, Phone number, Agent Number\*)

  #bold[Agent] (#underline[Agent Number], Agent Name, Agent Address)

  #bold[Publication] (#underline[Author Number\*, Book Title\*])
  
  #bold[Book] (#underline[Book Title], Book Category, #pin(2)Royalty Rate#pin(3))
  #pinit-highlight(2,3, fill:red.transparentize(60%))
]
#only(5)[
  #bold[Author] (#underline[Author Number], Surname, Forename, Address, Phone number, Agent Number\*)

  #bold[Agent] (#underline[Agent Number], Agent Name, Agent Address)

  #bold[Publication] (#underline[Author Number\*, Book Title\*])
  
  #bold[Book] (#underline[Book Title], Book Category\*)
  
  #bold[Royalty] (#underline[Book Category], Royalty Rate)
]

== The Steps
#notes #pause
1. Separate repeating groups of attributes out into separate \ entities. Copy the primary key into the new entity #pause

2. For tables with composite keys, ensure that all non-key attributes are dependent on each part of the composite key #pause

3. Remove any mutual dependence between non-key attributes #pause

#place(dy:1em,dx:10em)[
  #rect(inset:10pt,radius:15pt,stroke:1pt,fill:blue.lighten(60%))[
    "All non-key attributes must depend on the key, \ the whole key and nothing but the key."
  ]
]#pause

== You try: Phoenix School
#only(6)[#GClass]
#only("1-")[Phoenix Circus School offers a National Certificate in \ Circus Arts. The course covers juggling, trapeze skills, \ clowning and various options including fire-eating. From talking to the circus school staff you have collected the following information:]
#only("2-")[- All trainees follow an individual programme on several modules]
#only("3-")[- The level of a module indicates its length]
#only("4-")[- On completion of each module the trainees achieve a grade]
#only("5-")[- The date that the trainee completed the modules needed for their certificate.]

#only(6)[*L139 – Phoenix Circus School Table*]