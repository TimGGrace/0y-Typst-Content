#import "../../../../Templates/lib.typ": *
#import "@preview/fletcher:0.5.8" : *
#set text(size:18pt)
#show raw: set text(18pt)
#show: aqa.setup-page.with(
  config: (
    level: "A-level",
    subject: "Computer Science",
    paper: "CAP 1",
    materials: (
      "a computer",
      "a printer",
      "appropriate software",
      "the Electronic Answer Document (Google Doc)",
      "an electronic version and a hard copy of the Skeleton Program",
      "an electronic version and a hard copy of the Preliminary Material.",
      "You must *not* use a calculator."
    ),
    instructions: (
      "Type the information required on the front of your Electronic Answer Document.",
      "Before the start of the examination make sure your *Centre Number*, *Candidate Name* and *Candidate Number* are shown clearly *in the footer* of every page (also at the top of the front cover) of your Electronic Answer Document",
      "Enter your answers into the Electronic Answer Document.",
      "Answer *all* questions.",
      "Save your work at regular intervals.",
    ),
    date: "February 2026",
    time: "",
    time-allowed: "2 hours",
    advice: (
      "The question paper is divided into three parts (Part 1 - Databases Theory, Part 2 -Warships
questions, Part 3 - Warships modifications).",
      "The suggested timings for each part are: Part 1 - 25 minutes, Part 2 - 20 minutes, Part 3 - 75
minutes ",
    ),
    series-code: "2526",
    specification-code: "7517",
    paper-code: "CAP3",
    numbering-style: "compsci",
    hide-borders: true,
    
  )
)

#aqa.front-cover()
#align(center)[
  #text(weight:700, 18pt)[Part 1]

  #text(18pt)[You are advised to spend no more than #text(weight:700)[25 minutes] on this section.

  Enter your answers to #text(weight:700)[Part 1] in your Electronic Answer Document.]
]
#line(length:102%, stroke: gray)

#aqa.question(
  question-number: 1,
  marks: none,
  question: text(18pt)[
    A garage services and repairs cars. It uses a relational database to keep track of the jobs that customers have booked for it to carry out. The database includes jobs that have been completed and jobs that are waiting to be done.

    The details of the jobs that the garage does, together with the parts that it stocks and uses are stored in the database using the four relations shown in *Figure 1*.
       
    #aqa.center(align(center, figure(
    caption: [Figure 1],
    rect()[
      Job (#underline[JobID], CarRegNo, JobDate, InGarage, JobDuration)

      Car (#underline[CarRegNo], Make, Model, OwnerName, OwnerEmail, OwnerTelNo)

      Part(#underline[PartID], Description, Price, QuantityInStock)

      PartUsedForJob(#underline[JobID, PartID], QuantityUsed)
    ]
  )))
    - Each car has a unique CarRegNo.
    - A type of car can be uniquely identified by the combination of its  Make and Model. Different Makes may use the same Model name and a particular manufacturer (Make) will produce several different car Models.
    - A booking made for a car on a particular date counts as one job, regardless of how many different tasks are completed upon it.
    - A job might require the use of any number of parts, including zero.
    - Some of the details are stored in the database as soon as a booking is made and others are only added when a job has been completed.

    The attribute JobID is the Entity Identifier (Primary Key) of the Job relation.
  ]
)
#aqa.question(
  question-number: 1.1,
  marks: 1,
  question: text(18pt)[
    If the JobID attribute were not included in the Job relation, which other attribute or attributes that are currently in the relation could probably be used as an Entity Identifier (Primary Key) instead?
  ]
)

#grid(columns:(0.18fr,1fr))[][#text(18pt)[It has been suggested that the owner details (OwnerName, OwnerEmail, OwnerTelNo) should not be stored in the Car relation and that a new relation should be created to store owner details separately from car details.]]

#aqa.question(
  question-number: 1.2,
  marks: 2,
  question: text(18pt)[
    Explain why storing the owner details separately would improve the design of the database.
  ]
)

#grid(columns:(0.18fr,1fr))[][#text(18pt)[
  When an appointment is made for a job, this is represented in the Job relation. At the time of booking, the InGarage attribute is set to False and the JobDuration attribute is set to 0:00. When the car arrives at the garage the value of the InGarage attribute is changed to True. When the job is finished the value of the JobDuration attribute is updated to indicate how long the job took and details of the parts used are recorded in the database.

  The Job with JobID 206 has been completed. The job took 1 hour 30 minutes (1:30) and used two of the parts with PartID 12.
]]

#aqa.question(
  question-number: 1.3,
  marks: 3,
  question: text(18pt)[
    Write the SQL commands that are required to record the amount of time that the job took in the database.
  ]
)

#aqa.question(
  question-number: 1.4,
  marks: 2,
  question: text(18pt)[
    Write the SQL commands that are required to record in the database the fact that two of the parts with PartID 12 were used.
  ]
)

#grid(columns:(0.18fr,1fr))[][#text(18pt)[
  A mechanic needs to produce a list of all of the parts used on the job with JobID 93 for a customer.

  This list must include the PartID, Description, Price (each) and QuantityUsed of each part, and no other details. The parts in the list should be ordered by PartID with the parts with the lowest PartIDs nearest to the top of the list.
]]

#aqa.question(
  question-number: 1.5,
  marks: 5,
  question: text(18pt)[Write an SQL query to produce the list.]
)

#grid(columns:(0.18fr,1fr))[][#text(18pt)[
There are restrictions on which parts can be fitted to which cars. For example:
- The driver's door mirror with PartID 104 can only be fitted to one particular make and model of car.

- The ignition switch with PartID 27 can be fitted to any model of car for one particular make as the maker uses the same ignition switch in all models.

- The tyre with PartID 97 can be fitted to a wide range of cars of different makes and models as it is a standard size.

If the information about which parts could be fitted to which makes and models of
cars were represented in the database, it could be used to help a mechanic
identify the correct parts to use for a job.
]]

#aqa.question(
  question-number: 1.6,
  marks: 3,
  question: text(18pt)[
    Explain how the database design could be modified to represent which makes and models of a car a part can be fitted to.
  ]
)

#align(center)[
  #text(weight:700, 18pt)[Part 2]

  #text(18pt)[You are advised to spend no more than #text(weight:700)[20 minutes] on this section.
  
  Enter your answers to #text(weight:700)[Part 2] in your Electronic Answer Document. You must save this document at regular intervals.
  
  These questions refer to the Preliminary Material and require you to load the #text(weight:700)[Skeleton Program], but do #text(weight:700)[not] require any additional programming.
  
  Refer either to the #text(weight:700)[Preliminary Material] issued with this question paper or your electronic copy.]
]
#line(length:102%, stroke: gray)
#aqa.question(
  question-number: 2,
  marks: none,
  question:text(18pt)[State the name of an identifier in the #text(weight:700)[Skeleton Program] for:]
)
#aqa.question(
  question-number: 2.1,
  marks: 1,
  question: text(18pt)[
    a variable that is used to store a single character.
  ]
)
#aqa.question(
  question-number: 2.2,
  marks: 1,
  question: text(18pt)[
    a user-defined subroutine that has one parameter.
  ]
)
#aqa.question(
  question-number: 2.3,
  marks: 1,
  question: text(18pt)[
    a user-defined subroutine that returns a Boolean value.
  ]
)

#aqa.question(
  question-number: 3,
  marks: none,
  question: []
)
#aqa.question(
  question-number: 3.1,
  marks: 1,
  question: text(18pt)[
    A constant is used to hold the filename `'Training.txt'`. \
    State one advantage of using named constants for constant values.
  ]
)


#grid(columns:(0.18fr,1fr))[][#text(18pt)[
  When validating the placement of a ship the `ValidateBoatPosition` subroutine is called.
]]

#aqa.question(
  question-number: 3.2,
  marks: 2,
  question: text(18pt)[
    Explain why a `FOR` loop is used as part of checking a valid vertical ship placement.
  ]
)

#aqa.question(
  question-number: 3.3,
  marks: 2,
  question: text(18pt)[
    Explain the purpose of the check that is being performed in the first selection structure of the `ValidateBoatPosition` subroutine.
  ]
)

#aqa.question(
  question-number: 3.4,
  marks: 3,
  question: text(18pt)[
    Explain what is meant by exception handling and how exception handling could be used in the `GetRowColumn` subroutine.
  ]
)

#aqa.question(
  question-number: 4,
  marks: none,
  question: text(18pt)[
    #text(weight:700)[Figure 2] shows an incomplete hierarchy chart for part of the Skeleton Program.

    #aqa.center(align(center, figure(
    caption: [Figure 2],
    diagram( 
      node-outset: -15pt, node-stroke: 1pt,node-inset:20pt,label-size:18pt,
      node-fill: white,
      node((0,0),text(font:"consolas")[PlayGame], width:150pt, height:50pt),
      node((-1,1),text(font:"consolas")[PrintBoard], width:150pt, height:50pt),
      node((0,1),text(font:"consolas",weight:700)[(a)], width:150pt, height:50pt),
      node((1,1),text(font:"consolas",weight:700)[(b)], width:150pt, height:50pt),
      node((0,2),text(font:"consolas",weight:700)[(c)], width:150pt, height:50pt),
      edge((0,0),(1,1)),
      edge((0,0),(-1,1)),
      edge((0,0),(0,1)),
      edge((0,1),(0,2)),
      ))
    ))
    With reference to the Skeleton Program and #text(weight:700)[Figure 2], answer the questions below.
  ]
)
#aqa.question(
  question-number: 4.1,
  marks: 1,
  question: text(18pt)[What should be written in box `(a)` in #text(weight:700)[Figure 2]?]
)

#aqa.question(
  question-number: 4.2,
  marks: 1,
  question: text(18pt)[What should be written in box `(b)` in #text(weight:700)[Figure 2]?]
)

#aqa.question(
  question-number: 4.3,
  marks: 1,
  question: text(18pt)[What should be written in box `(c)` in #text(weight:700)[Figure 2]?]
)

#grid(columns:(0.18fr,1fr))[][#text(18pt)[
  There is a variable called `Row` in the subroutine `SetUpBoard`. There is also a different variable called `Row` in the subroutine `LoadGame`.
]]

#aqa.question(
  question-number: 4.4,
  marks: 2,
  question: text(18pt)[Explain why these two different variables can have the same identifier.]
)

#grid(columns:(0.18fr,1fr))[][#text(18pt)[
When the training game is selected from the main menu the positions of the ships are loaded frmo a text file. A binary file could have been used instead.
]]

#aqa.question(
  question-number: 4.5,
  marks: 2,
  question: text(18pt)[Describe a difference between the way in which data are stored in a binary file and the way data are stored in a text file.]
)

#align(center)[
  #text(weight:700, 18pt)[Part 3]

  #text(18pt)[You are advised to spend no more than #text(weight:700)[75 minutes] on this section.
  
  Enter your answers to #text(weight:700)[Part 3] in your Electronic Answer Document. You #text(weight:700)[must save] this document at regular intervals.
  
  These questions require you to load the #text(weight:700)[Skeleton Program]and to make programming changes to it.]
]
#line(length:102%, stroke: gray)

