#import "../../../Templates/template.typ": *
// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)

== Starter
#notes
An A-level revision website has a several forums through which students can ask questions and other students can post replies.
#place(dy:-0.5em,text(24pt)[
- Each forum can have a number of topics. 
- Each topic can have a number of messages posted to it.
- Each message can only be posted to one topic.
- Each student can post a number of messages or replies on any topic.
- Each student must sign in and is assigned a unique number.
- A message can have several replies.
- A reply can only be for one message.
])
#v(9.2em)
Complete the entity–relationship diagram.

= SQL for Relational Databases
#note[
  Keywords: `SQL; Relational Database; ER diagram; primary key; foreign key; distinct; `
]

== Zoo Database
#GClass
1. Download the *Zoo.db* file from \ Google Classroom
2. Open this with DB Browser.
3. Draw an ER diagram for this database.

== Zoo Database ER:
#let ER_rect = (inset:10pt,fill:blue.lighten(80%), stroke:1pt, width:280pt, height:50pt)
#let ERRect(body) = {rect(place(center+horizon)[#body],..ER_rect)}
#place(dy:1em,dx:0em,ERRect([Animal]))
#place(dy:2em,dx:15em,ERRect([Species]))
#place(dy:8em,dx:0em,ERRect([AnimalsInEnclosures]))
#place(dy:9em,dx:13em,ERRect([Enclosures]))
#place(dy:14em,dx:12em,ERRect([EnclosureType]))
#only(2)[
  #place[#line(start:(420pt,75pt),end:(280pt,55pt), stroke:2pt)]
  #place[#line(start:(310pt,60pt),end:(280pt,35pt), stroke:2pt)]
  #place[#line(start:(310pt,60pt),end:(280pt,75pt), stroke:2pt)]

  #place[#line(start:(150pt,224pt),end:(150pt,79pt), stroke:2pt)]
  #place[#line(start:(170pt,224pt),end:(150pt,194pt), stroke:2pt)]
  #place[#line(start:(130pt,224pt),end:(150pt,194pt), stroke:2pt)]

  #place[#line(start:(364pt,280pt),end:(280pt,248pt), stroke:2pt)]
  #place[#line(start:(310pt,260pt),end:(280pt,228pt), stroke:2pt)]
  #place[#line(start:(310pt,260pt),end:(280pt,268pt), stroke:2pt)]

  #place[#line(start:(464pt,392pt),end:(464pt,302pt), stroke:2pt)]
  #place[#line(start:(464pt,330pt),end:(444pt,302pt), stroke:2pt)]
  #place[#line(start:(464pt,330pt),end:(484pt,302pt), stroke:2pt)]
]

== Experiment
#Comp
Run the following command:

```sql 
SELECT *
FROM animals, species
```

What does it do? Can you explain the result?

#uncover(2)[This is called a *join* of tables. It finds every possible combination of records from each table. A mess, right?]

== Multi-table queries
#notes
```sql 
SELECT *
FROM animals, species
WHERE animals.speciesID = species.speciesID
```

This is called a *linking clause*, and is necessary whenever you have multiple tables. \ \ \
New syntax: \
`<table-name> . <field-name>` \
Can be used whenever fields across different tables have the same name.

== General case
#notes
`SELECT *fields you want to see*` #pause \
`FROM *all tables you need*` #pause \
`WHERE *linking clauses*` #pause \
`AND *other conditions*` #pause \ \
When using fields with ambiguous names, we use the table name to define them: \ `<tableName> . <fieldName>`

#MWBQ( title:"You Try",
  ([
    Write an SQL query to list the names of the hippos.
  ],[
    `
SELECT Name
FROM Animals, Species
WHERE Animals.SpeciesID = Species.SpeciesID
AND Breed = "Hippo"`
  ]),
  ([Write an SQL query to show all the names of all the animals in a large enclosure.], text(23pt)[
    `
SELECT Name
FROM Animals, AnimalsInEnclosures, Enclosures
WHERE Animals.AnimalID = AnimalsInEnclosures.AnimalID
AND AnimalsInEnclosures.EnclosureID = Enclosures.EnclosureID
AND Size = "Large"
  `])
)

== Practice Time!
#Comp
On BPCompSci.com:

*W118c - Zoo Database*