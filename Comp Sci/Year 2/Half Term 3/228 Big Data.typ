#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

#weeklyReview(title: "R213 - Functional Programming")

== Starter
#mwb
In *2024*, how many *every minute*?
1. TikTok videos uploaded

2. Snaps sent

3. Microsoft Teams *minutes* recorded

4. Emails sent
// #only("2-")[
//   #grid(columns:(0.2fr,1fr,0.2fr))[][#place(dy:-12em,image(height:400pt,"../Images/Domo_2024.png"))]
// ]
#only(3)[
  #place( dy:-10em,dx:10em,
    rect( inset:10pt,fill:blue.lighten(60%),stroke:1pt,radius:15pt,
      [
        How much do you think was spent on \ AI #bold[every minute] in 2024?

        What about 2025?
      ]
    )
  )
]

== Researching the numbers
#Comp
Go to `statista.com` and search 'Big Data'.

Find the topic `Big data - statistics & facts`

Have a look for:
1. How has the amount of data changed over the years?
2. How has the revenue for big data change?
3. How has AI uptake changed?

== Why?
*Employability Skills* \
#text(24pt)[Data analysis is a very important 'soft skill' which is vital for many jobs, even if it isn't in the name!
- Mangagement Consultant
- Actuary / Insurance Broker
- Quantative Analyst#pause

Data is often used to make decisions, which leads to problem solving, debate and discussion.]

== Big Data, on Spec
#text(15pt)[#table(columns:(1fr,1fr),
[Content],[Additional Information],
[
  Know that 'Big Data' is a catch-all term for data that won't fit the usual containers. Big Data can be described in terms of:
- volume - too big to fit into a single server
- velocity - streaming data, milliseconds to seconds to respond
- variety - data in many forms such as structured, unstructured, text, multimedia.
],
[Whilst its size receives all the attention, the most difficult aspect of Big Data really involves its lack of structure. This lack of structure poses challenges because:
- analysing the data is made significantly more difficult
- relational databases are not appropriate because they require the data to fit into a row-and-column format.
Machine learning techniques are needed to discern patterns in the data and to extract useful information.

'Big' is a relative term, but size impacts when the data doesn’t fit onto a single server because relational databases don’t scale well across multiple machines.

Data from networked sensors, smartphones, video surveillance, mouse clicks etc are continuously streamed.],
[
  Know that when data sizes are so big as not to fit on to a single server:
- the processing must be distributed across more than one machine
- functional programming is a solution, because it makes it easier to write correct and efficient distributed code.
Know what features of functional programming make it easier to write:
- correct code
- code that can be distributed to run across more than one server.
],
[
  Functional programming languages support:
- immutable data structures
- statelessness
- higher-order functions.
],
[
  Be familiar with the:
- fact-based model for representing data
- graph schema for capturing the structure of the dataset
- nodes, edges and properties in graph schema.
],[
  Each fact within a fact-based model captures a single piece of information.
]
)]

== The 3 Vs of Big Data
#only(1)[#mwb
On your whiteboard, write down the 3 Vs of Big Data.

For each, write a definition of what this term means for Big Data.
]
#only(2)[
  #notes
  *Volume*

  The size of the data to be processed.

  If it is too large to be processed as a *single dataset* then it is considered 'big'.
]
#only(3)[
  #notes
  *Velocity*

  The speed at which data is generated and to be processed.
]
#only(4)[
  #notes
  *Variety*

  Refers to all the structured and unstructured data.

  Variety is all about the ability to classify the incoming data into various categories.
]

== Variety
#notes
#place(dy:25pt)[Data can appear in many forms: \
- #text(24pt)[Structured Data]
  - #text(20pt)[Represented in tabular form so can be easily modelled in a relational database.#pause] 
- #text(24pt)[Semi-structured data]
  - #text(20pt)[data with variable structure.  Eg XML or JSON formatted files. Although a structure can be applied, it is not always consistent.#pause]
- #text(24pt)[Unstructured Data]
  - #text(20pt)[Context variable so can not be modelled in advance and can not be fitted in a relational database or tags. Eg video, images, email messages etc.]
]

== Recall
#mwb
What features of functional programming make it ideal for Big Data?


#only(2)[
  #text(red,24pt)[
    Easier to write correct code
- #text(20pt)[Because it is very strictly defined programming paradigm]
Immutable data structures
- #text(20pt)[A data structure whose state can not be changed after it is created. There are no side-effects. These are inherently ‘thread-safe’.]
  ]
]
#only(3)[
  #text(red,24pt)[
    Statelessness
- #text(20pt)[Functional programs are entirely predictable. Same inputs always result in the same output, no matter how often they are run, or in which order they are run.]
High-order functions
- #text(20pt)[A function can be passed as an argument to another function. \ Eg reduce (map(listofthings)). These can be easily distributed across multiple data servers to process large quantities of data.]
  ]
]

== Fact Based Model
#notes
#text(22pt)[#list[
  A conceptual model for modelling data.][
Each fact in a fact based model captures a single piece of information.][
Data is immutable – it cannot be altered except to delete the data – completely different to relational model.][
Any change is recorded as a new fact NOT an update. The dataset continually grows with the addition of immutable timestamped data.][
This minimises the impact of human error. If bad data is written, earlier good data still exists.
]]
#pause
#rect(inset:10pt,fill:blue.lighten(60%),stroke:1pt,radius:15pt)[
  #link("https://isaaccomputerscience.org/api/v3.5.0/api/images/content/computer_science/data_and_information/big_data/figures/isaac_cs_data_big_graph_schema.svg")[
  An example of a Graph Schema for a Fact Based Model]
]

== Graph Schema
#notes
This captures the structure of a dataset stored using a \ fact based model. \
*Nodes*
- Entities of the system. EG. student or webpage
*Edges*
- Relationships between nodes. EG. a student has visited that page.
*Properties*
- Information about entities. EG. surname or total views.
*Solid lines* link nodes, *dashed lines* link properties to nodes.

== The big Big Data Summary
#notes
#text(20pt)[#grid(columns:(1fr,0.1fr))[
#table(columns:(0.3fr,1fr),
[What is Big Data?],
[
  3V’s – Volume, velocity, variety. 
],
[What does it look like?],
[
  Its made up of ‘facts’. It isn’t always a nice table like a database \ (variety – structured, semi-structured, unstructured).
],[
  How can we lay it out?
],[
  Diagram with nodes for entities and lines that link entities and properties
],[
  How do we deal with it?
],[Use Functional Programming!],[
  What makes FP so good?
],[
  Immutable Data Structures, Statelessness, Higher-Order Functions.
]
)]]

== Big Data Questions based on pre-work
#GClass
On Google Classroom:

*L228 - Big Data Questions*