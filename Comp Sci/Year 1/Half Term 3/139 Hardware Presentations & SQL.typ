#import "../../../Templates/template.typ": *
// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)

== Discuss
#mwb
In pairs, write down your thoughts on the question: \
*“What are the advantages and disadvantages of using an SQL database to store data?”*

Think about:
- Creating the database
- Storing the data
- Retrieving the data
#place(dy:1.5em,)[#text(fill:purple)[#bold[Extension]: Are there other types of databases that don’t use SQL? Are they better?]]

== Recall
#notes
Write down an example for each of the commands you need to know for the exam:
1. `CREATE TABLE`
2. `SELECT`
3. `INSERT INTO`
4. `UPDATE`
5. `DELETE FROM`

== Recall
#only(1)[`CREATE TABLE Pets (
  PetID INT PRIMARY KEY,
  Name TEXT,
  Age INT,
  OwnerID INT
)`]
#only(2)[
  `SELECT * 
FROM Pets
WHERE OwnerID = 4
AND Age > 2`
]
#only(3)[
  `INSERT INTO Pets 
VALUES (2, 'Nero', 9, 1)
  
INSERT INTO Pets 
VALUES (2, 'Nero', 9, 1),
       (3, 'Kima', 2, 1),
       (4, 'Wooster', 11, 2)`
]
#only(4)[
  `UPDATE Pets
SET OwnerID = 3
WHERE PetID = 3`
]
#only(5)[
  `DELETE FROM Pets
WHERE Age > 25`
]

== SQL Practice!
#GClass
On Google Classroom: \
*L139 - SQL Practice*

#let instruction_slide = [== Types of Hardware
In your groups, you will:
- Prepare a *presentation* on your hardware.
  - It will be *5 minutes*
- Make a *Kahoot*
  - *5 questions*
- Make an *exam question*
  - *5 marks*]

#instruction_slide

== But whyyyyyyy
#uncover("2-")[
  #place(dy:1em,dx:1em)[
    #rect(inset:10pt, radius:15pt, fill: blue.lighten(50%),stroke:1pt,[Verbal Presentation Skills])
  ]
]
#uncover("3-")[
  #place(dy:5em,dx:14em)[
    #rect(inset:10pt, radius:15pt, fill: blue.lighten(50%),stroke:1pt,[Creativity])
  ]
]
#uncover("4-")[
  #place(dy:8em,dx:2em)[
    #rect(inset:10pt, radius:15pt, fill: blue.lighten(50%),stroke:1pt,[Accountability])
  ]
]
#uncover("5-")[
  #place(dy:12em,dx:10em)[
    #rect(inset:10pt, radius:15pt, fill: blue.lighten(50%),stroke:1pt,[Teamwork and Management])
  ]
]

== Example Presentations

== Hardware to be covered
1. SSD: David, Dillon, Zak, Charlie
2. RFID: Oscar, Imogen, Dan, Venita
3. Optical Disks - CD/DVD/Blu-ray: \ `        ` Kacper, Hitesh, Trevor
4. Hard Drive (HDD): Hayden, Tom, Adan
5. Digital Camera: Ben, James, Eiman
6. Laser Printer: Will, James, Jacob
7. Bar Code Reader: Umar, Beni

#instruction_slide