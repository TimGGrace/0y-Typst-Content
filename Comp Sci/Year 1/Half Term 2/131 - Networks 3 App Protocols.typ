#import "@preview/touying:0.5.5": *
#import "../../../Templates/template.typ": *
// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)

== Starter
#mwb
#place(dy:1.5em,)[#text(24pt)[Match the following processes to the relevant TCP/IP Layers (Application, Transport, Network, Link)
1. Splits up a message into packets.
2. Provides the interface and protocols needed by the user.
3. If it does not receive an ACK for a particular packet, will resend.
4. Sends an ACK when it receives a packet.
5. Controls physical connection between hardware devices using MAC addresses.
6. Adds the IP Address of the source and destination.
7. Adds the port number of the source and destination.
8. Adds the sequence number of a packet.]]

== SA 3, January
Last lesson in the first week back after Christmas (five weeks away).

Potential topics:
- *Theory only (no C\# programming)*
- Everything covered up until the Christmas holidays (see BPCompSci for full list of topics we’ve covered)

= Application Layer Protocols
#note([
  Keywords: `Port; Socket; SSH; FTP; SMTP; POP3; HTTP; HTTPS`
])

== Recap
#notes
#only(1)[1. Define the term *socket*
2. Write down as many Protocols as you can remember from last lesson.
3. State the difference between an IP Address and a socket.
4. State the difference between an IP Address and a MAC Address.]
#only(2)[
  1. Define the term *socket*
  #text(red)[
    The combination of an IP Address and Port Number, \ eg: 192.4.1.5 : 80
  ]
]
#only(3)[
  2. Write down as many Protocols as you can remember from last lesson.
  #text(red)[
    HTTP; HTTPS; POP(3); IMAP; SMTP; FTP; SSH; 
  ]
]
#only(4)[
  3. State the difference between an IP Address and a socket.
  #text(red)[
    A socket is the combination of an IP address *and* a port number.
  ]
]
#only(5)[
  4. State the difference between an IP Address and a MAC Address.
  #text(red)[
    An IP address is an address for a host on the internet. IPv4 addresses are not necessarily unique \ \
    A MAC address is a unique address for a device used for direct communication (used for single hops)
  ]
]

== Explain to your peers!
Your group will be given a standard protocol. \
You have 5 minutes to discuss the best way for you to describe it to the rest of the class. \
Then you will take turns to describe your protocol to the class. \ \
*Include*:
- What it stands for
- What is its purpose
- What is the port number

== Presentations
#notes
Lock your computers down for this! \ \
*When listening:*
- No notes to be taken
- Give your full attention to the speakers

*After the presentation:*
- Clap.
- Write down a summary of what they have said
- Put your hand up to ask for clarification or a question

== Summary:
#notes
#grid(columns:2,column-gutter: 20pt)[#text(22pt)[
  *HTTP* – port 80
  - Hypertext Transfer Protocol
  - Viewing web pages
  *HTTPS* – port 443
  - Secure HyperText Transfer Protocol
  - Accessing secure web pages
  *SSH* – port 22
  - Secure shell – used for remotely accessing and managing a computer. Uses public key encryption.]
][#text(22pt)[
  *Post Office Protocol* (POP3) \ – port 110
  - Downloading personal emails from a web server
  *SMTP* – port 25
  - Simple Mail Transfer Protocol
  - Sending email messages
  *FTP* – port 21 (and 20)
  - File Transfer Protocol
  - Uploading files to a web server]]

== "Exam"ple question
#GClass
On Google classroom, \ Attempt it *without* your notes: \ \
*L131 – Networks exam question* \ \
#rect(inset:20pt,radius:10pt,fill:red.lighten(50%),stroke:1pt,[You must attempt this question on paper as it is from a Paper 2. \ \
Only attempt on the computer if you are entitled to this as an access arrangement.])

== Quizlet!
#Comp
You'll be split into teams, and *some* of you will \ have the right answer to a question. \ \
Don't guess, because you'll be set back if you get it wrong as a *team*.

#rect(inset:10pt,radius:20pt,fill:blue.lighten(50%),stroke:1pt,[#link("https://quizlet.com/_7larvq?x=1jqt&i=23yt07"
)[Quizlet Link]])

== Structures - RECAP
#notes
- Structures are like containers
- They group together a set of variables that are related to create a *record*
- Structures are *statically allocated*
```cs 
struct Book {
  public string title;
  public string author;
  public string genre;
  public decimal price;
}
```
#place(dy:-4em,dx:15em,[This is the template \ for a Book structure.])

== Example - RECAP
#text(24pt)[```cs 
struct Student {
  public string name;
  public int age;
}
static void Main(string[] args) {
  Student FavouritePerson;
  
  Console.WriteLine("Enter name:");
  FavouritePerson.name = Console.ReadLine();
  Console.WriteLine("Enter an age:");
  FavouritePerson.age = int.Parse(Console.ReadLine());

  Console.WriteLine(FavPerson.name + "is the best, and only "+FavPerson.age);
}
```]
#pause
#place(dy:-14em,dx:9.5em,text(red)[Structures define \ templates])
#pause
#place(dy:-10em,dx:15em,text(red)[Then you can declare \ variables of that type.])
#pause
#place(dy:-1em,dx:15em,text(red)[You access the data \ with the '.'])

= Arrays of Structures

== Discuss
#mwb
How are arrays and structures the same? \ \
How are they different? \ \
Come up with at least 3 points for each.

== Making an array of structs
#text(18pt)[```cs
struct StudentRecord {
  public string name;
  public int score;
}

static void Main(string[] args) {
  StudentRecord[] TestScores = new StudentRecord[2];

  TestScores[0].name = "Isabel";
  TestScores[0].score = 100;
  TestScores[1].name = "Mr Tall";
  TestScores[1].score = 78;

  for (int i = 0; i < 2; i++)
  {
    Console.WriteLine(TestScores[i].name + " scored " + TestScores[i].score);
  }
  Console.ReadKey();
}```]

== Arrays of Structures
#mwb
#place(dy:1em,dx:14em,rect(inset:10pt,radius:20pt)[```cs struct StudentRecord {
  public string name;
  public int score;
}```])
#text(24pt)[#table(columns:2,
table.cell(colspan:2,stroke:none, inset:10pt)[```cs StudentRecord[] StudentTest```],
[Name: Mr Jelly \ Score: 3],table.cell(stroke:none)[` 0`],
[Name: Mr Small \ Score: 87],table.cell(stroke:none)[` 1`],
[Name: Mr Strong \ Score: 2],table.cell(stroke:none)[` 2`],
[Name: Mr Tall \ Score: 56],table.cell(stroke:none)[` 3`],
[Name: Mr Nosey \ Score: 33],table.cell(stroke:none)[` 4`],)]

#place(dy:-4em,dx:8.5em,text(22pt)[#table(columns:2, stroke: none,
[`studentTest[2].Name = `],[#uncover("2-")[#text(red)[Mr Strong]]],
[`studentTest[1].Score = `],[#uncover("2-")[#text(red)[87]]],
[`studentTest[0].Name = `],[#uncover("2-")[#text(red)[Mr Jelly]]],
[#uncover("3-")[Mr Tall's name: ]],[#uncover("4-")[#text(red)[`StudentTest[3].Name`]]],
[#uncover("3-")[Mr Nosey's name: ]],[#uncover("4-")[#text(red)[`StudentTest[4].Name`]]],
[#uncover("3-")[Mr Small's score: ]],[#uncover("4-")[#text(red)[`StudentTest[1].Score`]]],)])

== You Try!
#Comp
On BPCompSci: \  \
*W114 – C\# Arrays of Structures*