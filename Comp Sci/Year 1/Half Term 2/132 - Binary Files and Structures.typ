#import "../../../Templates/template.typ": *
// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)

#import "@preview/circuiteria:0.2.0": *
#let starter-logic = circuit({
  element.gate-or(x:0,y:0,w:1,h:1,id:"or1")
  wire.stub("or1-port-in0","west",name:"A",length:1)
  wire.wire("w1",((-1,-1),"or1-port-in1"),name:"B", style:"zigzag",name-pos:"start")
  wire.intersection("w1.zig")
  element.gate-not(x:2,y:0,w:1,h:1,id:"not1")
  wire.wire("w2",("or1-port-out","not1-port-in0"),style:"zigzag")
  element.gate-or(x:4,y:-0.25,w:1,h:1,id:"or2")
  wire.wire("w3",("not1-port-out","or2-port-in0"))
  wire.wire("w4",("w1.zig","or2-port-in1"),style:"zigzag",zigzag-ratio:85%)
  wire.intersection("w4.zig")
  element.gate-not(x:6,y:-0.25,w:1,h:1,id:"not2")
  wire.wire("w5",("or2-port-out","not2-port-in0"))
  element.gate-and(x:8,y:-0.5,w:1,h:1,id:"and1")
  wire.wire("w6",("not2-port-out","and1-port-in0"))
  wire.wire("w7",("w4.zig","and1-port-in1"),style:"zigzag",zigzag-ratio:85%)
  element.gate-or(x:10,y:-2,w:1,h:1,id:"or3")
  wire.wire("w8",("and1-port-out","or3-port-in0"),style:"zigzag")
  wire.wire("w9",((-1,-1.75),"or3-port-in1"),name:"C",name-pos:"start")
  wire.stub("or3-port-out","east",name:"X")
})

#weeklyReview(title:"R108 - Subroutines, Variables")

== Starter
#notes
#only(1)[
  1. Simplify the boolean expression $ B dot overline(overline(A+B)+B) $
2. Hence what can be said about the value of $X$ in this logic circuit, depending on $C$?
#place(dy:1em,dx:-1em, starter-logic)]
#only(2)[
  1. Simplify the boolean expression $ B dot overline(overline(A+B)+B) $
  #text(red)[
    #table(stroke:0pt,columns:2,align:left,
    [$& B dot overline(overline(A+B)+B) \ 
    = & B dot overline(overline(A+B)) dot overline(B) \
    = & B dot overline(B) dot (A+B) \
    = & 0 dot (A+B) \
    = & 0 $],
    [$ " " \ "De Morgan's Law" \ "Associative Property" \ A dot overline(A) equiv 0 \ A dot overline(A) equiv 0 $])
  ]
]
#only(3)[
  2. Hence what can be said about the value of $X$ in this logic circuit, depending on $C$?
  #text(red)[
    This circuit simplifies to $X = C + 0 = C$
  ]#place(dy:1em,dx:-1em, starter-logic)
]

== RECAP: Text Files
#mwb
#only(1)[Without looking at your notes, write a C\# program on your whiteboard. \ \
The program should output each line from the `"input.txt"` file onto the Console.]
#only(2)[
  ```cs
  using System.IO;
  ...
  static void Main(stirng[] Args) {
    string[] all_lines = File.ReadAllLines();

    foreach (string line in all_lines) {
      Console.WriteLine(line);
    }
  }
  ```
]

= Binary Files
#note([
  Keywords: `File; Using; BinaryReader; BinaryWriter; Int32; Binary;`
])

== Binary Files
#only("1-2")[#notes]
Text files are restricted to a particular encoding \
(eg. UTF-8) \
#uncover("2-")[Binary files allow storage of any formats of binary \
That means we can store anything (text included)!
]
#only(3)[#mwb]
#uncover(3)[
  *Discuss*: Write down at least one advantage and at least one disadvantage of using binary files compared with text files
]

== Writing to a Binary File
#notes
Since we're writing specific data in, there's no handy new-line characters that we could search for. We're going to have to use a stream.
`StreamReader` was for text files, so we'll use `BinaryWriter`
#text(20pt)[```cs
string fileName = "myFile.bin";
using (BinaryWriter writer = new BinaryWriter(File.Open(fileName, FileMode.OpenOrCreate))){
    writer.Write(5);
    writer.Write("Hello world");
    writer.Write(true);
}```]
Let's annotate that on the board.

== Reading from Binary Files
Since the data could be any datatype, you *need to know how the data was originally stored*. \ \ #pause
With a BinaryReader, we can get that data out, if we read it in the correct order. #pause
#text(20pt)[```cs
string fileName = "myFile.bin";
using (BinaryReader reader = new BinaryReader(File.Open(fileName, FileMode.OpenOrCreate))) {
    myInt = reader.ReadInt32();
    myString = reader.ReadString();
    myBool = reader.ReadBoolean();
}```]
Let's annotate the new information here.
== Experiment time
#Comp
Go to BPCompSci and find those bits of codes \ in the lesson slides.
(*L132 - Binary Files*) \ \
Once you've run the BinaryWriter and BinaryReader to confirm it all works... \ \
What happens if you read the data in the wrong order?

== Visual Studio Binary File Viewer
Usefully, Visual Studio has a binary file viewer, so you can check your data. \ \
Unfortunately, it can't read *everything*, it's just making its best guess. \ \
Let's have a look at a file.

== Binary Files Investigation
#mwb
*Discuss*: What does each byte in this binary file represent?
#text(20pt)[```cs string[] myArray = {"Hello", "Beautiful", "World"};
using (BinaryWriter writer = new                         	BinaryWriter(File.Open(fileName, FileMode.OpenOrCreate)))
{
    for (int i = 0; i < myArray.Length; i++)
    {
        writer.Write(myArray[i]);
    }
}```]
#place(dy:-4em,dx:14em,rect(inset:10pt,`05 48 65 6C 6C 6F 09 42
65 61 75 74 69 66 75 6C
05 57 6F 72 6C 64
`))
*EXT*: What array of strings was stored in this binary file?
#place(dy:-0.5em,dx:5em,rect(inset:10pt,`03 54 68 65 03 42 65 65 05 4D
6F 76 69 65 05 52 6F 63 6B 73
`))

== Why Binary, When Binary?
#notes
Binary files are going to be most useful when dealing with *mixed data types*, or anything that's not mostly text. \ \
Importantly, *structures* can be stored by writing their data elements individually into the file.
EG:
```cs 
writer.Write(lessonsToWrite[i].teacherName);
writer.Write(lessonsToWrite[i].room);
writer.Write(lessonsToWrite[i].numberOfStudents);
```
Then you can read them out later!
f
== You Try
#Comp
On BPCompSci \ \
*W115 - Binary Files with Structures*