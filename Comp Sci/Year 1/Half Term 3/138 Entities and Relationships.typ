#import "../../../Templates/template.typ": *
// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)

== Starter
#notes
Define the following words, both for regular english and as computer science terms:
1. Entity #uncover(2)[#text(red)[a thing with distinct and independent existence.]]
2. Attribute #uncover(2)[#text(red)[a quality or feature regarded as a characteristic or inherent part of someone or something.
]]
3. Relationship #uncover(2)[#text(red)[the way in which two or more people or things are connected, or the state of being connected.]]

= Entities and Relationships
#note([
  Keywords: `Entity; Attribute; Relationship; One-to-many; many-to-many; one-to-one; data redundancy; flat-file;`
])

== Homeworks
#text(24pt)[*Marks*
#enum(numbering:"1:")[Incomplete, *requires resubmission*][Complete, but late.][Complete and on time]
#pause
*Missing one homework*
- Email to you, only you.
#pause
*Missing more than one homework*
- Email to you *and* your parents
- Summary note to focus. *Permenant!*
- Context based, #smallcaps[TALK TO ME].
- May involve phonecalls.]
== Flat-file databases
So far, we've only looked at flat-file databases:
#text(22pt)[
#table(columns:(1fr,1fr,1fr,1fr,1fr,1fr), 
table.header(
  table.cell(fill:gray.transparentize(50%))[order number],
  table.cell(fill:gray.transparentize(50%))[Date],
  table.cell(fill:gray.transparentize(50%))[product code],
  table.cell(fill:gray.transparentize(50%))[desc.],
  table.cell(fill:gray.transparentize(50%))[quantity ordered],
  table.cell(fill:gray.transparentize(50%))[unit price]),
[152117 \ 152117 \ 152117], [23-5-2014 \ 23-5-2014 \ 23-5-2014], [EG8766 \ EG1121 \ CD1127], [CD player \ speakers \ CD], [1 \ 2 \ 3], [59.99 \ 60.00 \ 9.99],

[152118 \ 152118], [26-5-2014 \ 26-5-2014], [EG1121 \ DF1726], [speakers \ DVD], [3 \ 1], [60.00 \ 4.99],

[152119 \ 152119], [30-5-2014 \ 30-5-2014], [EG1121 \ CD1127], [speakers \ CD], [1 \ 5], [60.00 \ 9.99])]
Normally, it would be better to use a *relational database* (more than one table) to store this. #uncover(2)[*Why?*]

== Relational Database Terms
#notes
*Entity*
#text(24pt)[- An object, person, event or thing of interest about which data is to be recorded
- eg: Customer, Order, Product]
#uncover("2-")[*Attribute*
#text(24pt)[- A property of an entity
- eg: Customer ID, Customer Name, Item price]]
#uncover(3)[*Relationship*
#text(24pt)[- A link or association between two entities
- eg: A customer can make many orders, but each order has only one customer.]]

== Relational Databases
#notes
Once decisions about the *entities, attributes and relationships* have been made, the database can be created. #pause

A #text(orange)[table] is created for each #text(orange)[entity]. Each record represents a different instance of that entity. #pause

#text(green)[Fields] within tables correspond to #text(green)[attributes]. #pause

#text(purple)[Relationships] are represented with #text(purple)[key fields] that link the records together between tables.

== Types of #text(purple)[relationships]
#notes
*One-to-One*
#text(24pt)[
  - Employee and Company Car;
  - Husband and Husband;
]#pause
*One-to-Many*
#text(24pt)[
  - Owner and Pet;
  - Borrower and Book;
] #pause
*Many-to-Many*
#text(24pt)[
  - Student and Course;
  - Film and Film Star
]

== Entity Relationship Diagrams
#notes
We use *ER-Diagrams* to demonstrate how entities are related to one another.
#let ER_rect = (inset:10pt,fill:blue.lighten(80%), stroke:1pt, width:200pt, height:50pt)
#grid(columns:1, row-gutter: -10pt,
uncover("2-")[
  #rect(place(center+horizon)[Employee],..ER_rect)
  #place(dy:-3em,dx:12em,rect(place(center+horizon)[Company Car],..ER_rect))
  #line(start:(8em,-2em), end:(12em,-2em))
],
uncover("3-")[
  #rect(place(center+horizon)[Owner],..ER_rect)
  #place(dy:-3em,dx:12em,rect(place(center+horizon)[Pet],..ER_rect))
  #line(start:(8em,-2em), end:(12em,-2em))
  #line(start:(11em,-3.2em),end:(12em,-3.6em))
  #line(start:(11em,-4.4em),end:(12em,-4em))
],
uncover(4)[
  #place(dy:-2.5em,rect(place(center+horizon)[Film],..ER_rect))
  #place(dy:-2.5em,dx:12em,rect(place(center+horizon)[Film Star],..ER_rect))
  #line(start:(8em,-1.5em), end:(12em,-1.5em))
  #line(start:(11em,-2.7em),end:(12em,-3.1em))
  #line(start:(11em,-3.9em),end:(12em,-3.5em))
  #line(start:(8em,-5.5em),end:(9em,-5.1em))
  #place(dy:-4.61em,dx:8em,line(start:(0em,0em),end:(1em,-0.5em)))
])

== Draw the relationship!
#mwb
#only(1)[
  Michael, a bookshop owner, uses a relational database to record details of books and the category in which they can be found on the shelves. A unique International Standard Book Number (ISBN) is assigned to each book. Each book can be allocated one category, e.g. fiction, home and garden, reference, etc. Each category can have many books. What is the relationship between the Category and the Book?
]
#only(2)[
  Sophie is a printmaker who specialises in limited edition prints of dogs that she creates from her original photographs. She creates 100 identical prints from each photograph. She sells her prints through a gallery in her local town. Each photograph is assigned a unique name. She records the name of the photograph each customer has bought but does not record the details about the print they buy. Her sales are stored in a database with three entities: Photograph, Sales and Customers. What is the relationship between the Customer and the Photograph?
]
#only(3)[
  Bradley, an A-level Computer Science student, has started a blog to share resources on his computer science lessons with his fellow students. He posts to his blog after each lesson a summary of the theory covered that day. His fellow students can then add their comments to each post. His blog is stored in an online database with two entities – BlogPost and Comment. What is the relationship between BlogPost and the Comment?
]
#only(4)[
  Louise is taking an evening class in French. She has decided to record her French vocabulary in a database so that she can easily search for words as she needs them. Her French teacher has given her 100 pairs of English-French translations to learn. She has stored the French words in a table and the English words in a separate table. What is the relationship between the French words and the English words?
]

== Let's design
#notes
*Database entities for a car repair shop*
- Customers: stores the customers ID number, name, address, phone number
- Cars: store the number plate, make, model, colour, owner
- Employee: stores the employee’s ID number, name, address, phone number, job title, salary
- Job: stores the Job ID, the car reg, date, time and the ID of the employee working on that job

== You Try:
#notes
*Database entities for a zoo*
#text(22pt)[- The database needs the information about the animals they keep, they need the name, species, date of birth and international zoo identification tag.
- The database needs to store information about the employees – it needs their employee IDs, names, addresses, email addresses, start date and number of days per week they work
- There will also be information about the enclosures; each enclosure has a name, a size in metres squared, opening and closing times
- Each enclosure will contain some animals and each employee will be responsible for the upkeep of only one enclosure. Some enclosures are large and need multiple employees.]
Create 3 tables and then draw an E-R diagram

== Modification
Now, the database needs to be modified so that each employee is responsible for the upkeep of *some enclosures*, rather than just one. 

Some enclosures still require several employees to look after.

What's the problem now?

== Linking Tables
#notes
By using foreign keys, we can create a one-to-many relationship within the database.

In order to create a *many to many* relationship, we need a *linking table*.

EG: Students and Courses

== From earlier
#notes
#text(22pt)[
#table(columns:(1fr,1fr,1fr,1fr,1fr,1fr),
table.header(
  table.cell(fill:gray.transparentize(50%))[order number],
  table.cell(fill:gray.transparentize(50%))[Date],
  table.cell(fill:gray.transparentize(50%))[product code],
  table.cell(fill:gray.transparentize(50%))[desc.],
  table.cell(fill:gray.transparentize(50%))[quantity ordered],
  table.cell(fill:gray.transparentize(50%))[unit price]),
[152117 \ 152117 \ 152117], [23-5-2014 \ 23-5-2014 \ 23-5-2014], [EG8766 \ EG1121 \ CD1127], [CD player \ speakers \ CD], [1 \ 2 \ 3], [59.99 \ 60.00 \ 9.99],

[152118 \ 152118], [26-5-2014 \ 26-5-2014], [EG1121 \ DF1726], [speakers \ DVD], [3 \ 1], [60.00 \ 4.99],

[152119 \ 152119], [30-5-2014 \ 30-5-2014], [EG1121 \ CD1127], [speakers \ CD], [1 \ 5], [60.00 \ 9.99])]
1. What would be two sensible entities to break this flat file into?
2. Draw an ER diagram
3. Write the table declaration statements.

== Solution:
1. Order and Product
2. #place(dy:2.5em,)[
  #place(dy:-2.5em,rect(place(center+horizon)[Order],..ER_rect))
  #place(dy:-2.5em,dx:12em,rect(place(center+horizon)[Product],..ER_rect))
  #line(start:(8em,-1.5em), end:(12em,-1.5em))
  #line(start:(11em,-2.7em),end:(12em,-3.1em))
  #line(start:(11em,-3.9em),end:(12em,-3.5em))
  #line(start:(8em,-5.5em),end:(9em,-5.1em))
  #place(dy:-4.61em,dx:8em,line(start:(0em,0em),end:(1em,-0.5em)))
]
\ Alternatively:
#place(dy:2em,dx:-1.5em)[
  #place(dy:-2.5em,rect(place(center+horizon)[Order Details],..ER_rect))
  #place(dy:-2.5em,dx:10em,rect(place(center+horizon)[Order],..ER_rect))
  #place(dy:-2.5em,dx:20em,rect(place(center+horizon)[Product],..ER_rect))
  #line(start:(8em,-1.5em), end:(10em,-1.5em))
  #place(dy:-1.5em,dx:9em,line(start:(0em,0em),end:(1em,-0.5em)))
  #place(dy:-1.5em,dx:9em,line(start:(0em,0em),end:(1em,0.5em)))
  #place(dy:-1.5em,dx:18em,line(end:(2em,0em)))
  #place(dy:-1.5em,dx:18em,line(start:(1em,0em),end:(0em,-0.5em)))
  #place(dy:-1.5em,dx:18em,line(start:(1em,0em),end:(0em,0.5em)))
] \ \
3. #only(2)[ Alternatively: \
  #bold[Order Details] (#underline[OrderNumber], Date) \
  #bold([Order]) (#underline[OrderNumber\*, ProductCode\*], Quantity) \
  #bold([Product]) (#underline[ProductCode], Description, UnitPrice)
]
#only(1)[#bold[Order] (#underline[OrderEntryNumber], OrderNumber, ProductCode, Quantity, Date) \
#bold[Product] (#underline[ProductCode], Description, UnitPrice)]

== Why might we want that more-complex set of tables?
Complex: \
  #bold[Order Details] (#underline[OrderNumber], Date) \
  #bold([Order]) (#underline[OrderNumber\*, ProductCode\*], Quantity) \
  #bold([Product]) (#underline[ProductCode], Description, UnitPrice)

Simpler: \ #bold[Order] (#underline[OrderEntryNumber], OrderNumber, ProductCode, Quantity, Date) \
#bold[Product] (#underline[ProductCode], Description, UnitPrice)

== You Try
#notes
Take the information in this flat-file database:
#text(16pt)[
#place(dy:-20pt,dx:-2em,rect(width:110%,stroke:0pt,[#table(columns:10,
table.cell(fill:gray.transparentize(40%))[Customer \ Number],
table.cell(fill:gray.transparentize(40%))[Customer \ Name],
table.cell(fill:gray.transparentize(40%))[Company \ Name],
table.cell(fill:gray.transparentize(40%))[Town],
table.cell(fill:gray.transparentize(40%))[Postcode],
table.cell(fill:gray.transparentize(40%))[Car Reg],
table.cell(fill:gray.transparentize(40%))[Make],
table.cell(fill:gray.transparentize(40%))[Model],
table.cell(fill:gray.transparentize(40%))[Hire Date],
table.cell(fill:gray.transparentize(40%))[Return \ Date],
[153 \ 153], [Narazali, N \ Narazali, N], [MF Plastics \ MF Plastics], [Derby \ Derby], [DB5 3ER \ DB5 3ER],[KL52 HGT \ HV53 SWR], [Ford \ Ford], [Focus \ Focus], [12.2.14 \ 1.4.14], [25.3.14 \ 22.5.14],
[187],[Brown, L],[MF Plastics],[Derby],[DB5 3ER],[HX03 TYR],[Nissan],[Qashqai], [2.4.14],[12.4.14],
[287 \ 287],[Pinner, M \ Pinner, M],[Tooks Ltd],[Derby],[DB6 8YU \ DB6 8YU],[KL52 HGT \ HJ04 FGT],[Ford \ Honda],[Focus \ Jazz], [3.1.14 \ 15.3.14],[13.1.14 \ 25.3.14]
)]))
] \ \ \ \ #text(24pt)[
1. What are the entities?
2. Draw an ER diagram
3. Which fields/attributes would be in each entity?
4. Have you removed *all* data redundancy? If not, can you add more entities to help?
*Extension*: Write the DDL to create the tables.]