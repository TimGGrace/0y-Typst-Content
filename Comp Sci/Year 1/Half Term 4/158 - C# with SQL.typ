#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)
#import "@preview/fletcher:0.5.8": *
#let diagram = touying-reducer.with(
 reduce: diagram, cover: hide)

#weeklyReview(title:"R115 - OOP, UML and Inheritance")

== SQL query starter
#mwb
#grid(columns:(2fr,0.5fr),
[#image("img/158 database.png", width:90%)],
[#only(1)[Write an SQL query to add a new species to the database.]
#only(2)[Write an SQL query to view all hippos, ordered by ascending age.]
#only(3)[#text(22pt)[Write an SQL query to find the name and species of all animals in the Aquatic Tank.]]]
)
= Connecting SQL to C\#
== Before we starter
#Comp
1. Load the *skeleton program* from GClass into a new C\# \ project - called '`ZooFocus`' #bold[[Do Not Run It]]

2. Copy the *Zoo.db* database file into the bin/Debug folder. Ensure it is named `zoo.db`

3. Install the *System.Data.SQLite* NuGet package into the project
  - Tools > NuGet Package Manager > Manage Packages for Solution

4. Test the program works by viewing all pupils

== Let's look at the new syntax
#notes
#text(21pt)[- Connection string \ ```cs SQLiteConnection conn = new SQLiteConnection("DRIVER...```
- Formatting SQL queries \ ```cs SQLiteCommand sql = new SQLiteCommand("SELECT...", conn)```
- Executing `SELECT` queries \ ```cs SQLiteDataReader response = sql.ExecuteReader();```
- Using data in the results of a query \ ```cs while(response.Read()){
  Console.WriteLine(response["Name"])
}```
- Executing queries with no results (eg INSERT)\ ```cs sql.ExecuteNonQuery();```]

= How to take better notes
#note[No offence, but a lot of our notes are bad.]

==
#let params = (fill:fadedBlue.lighten(60%),stroke:1pt,radius:15pt,inset:10pt)
#image("img/158 notes 1.png", height:90%)
#text(22pt)[
#only("2-")[
  #place(dy:-14.5em,dx:15em)[#rect(..params)[Technical Terms]]
]
#only("3-")[
  #place(dy:-9em,dx:5em)[#rect(..params)[Drawing comparison \ to other skills]]
]
#only("4-")[
  #place(dy:-9em,dx:23em)[#rect(..params)[Extra information not \ on the slide]]
]
#only("5-")[
  #place(dy:-0.5em,dx:5em)[#rect(..params)[Examples of options]]
]
#only("6-")[
  #place(dy:-0.5em,dx:20em)[#rect(..params)[Implications of phrasing or \ choice of words.]]
]]

== What are the useful note-features here?
#mwb
#only(1)[#image("img/158 notes 2.png")]
#only(2)[#image("img/158 notes 3.png")]

== Let's code `ViewLocationOfAnimal` together
#place()[#image("img/158 database.png", height:105%)]

== Now you complete the rest of the sections!
#Comp
The function stubs in the skeleton code have comments to \ tell you what to do.

Use the rest of the implemented subroutines to give you code examples.

#bold[Extension]: Improve the `DeleteAnimal` subroutine to also remove the animal form any enclosure it is in, to remove redundant data.