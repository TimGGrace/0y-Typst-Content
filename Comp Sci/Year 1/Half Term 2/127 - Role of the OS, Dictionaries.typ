#import "@preview/touying:0.5.5": *
#import "../../../Templates/template.typ": *
#import "@preview/fletcher:0.5.8" : *
// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)

== Discuss
#mwb
#align(center)[*What is the role of the Operating System?*]

== Intellicode is being disabled. RIP
#Comp
Why??
#text(24pt)[- JCQ has decided that it is too helpful and counts as AI assistance.]
#pause
Wait, what is intellicode anyway?
#text(24pt)[- The (somewhat) helpeful suggestions while you're typing in VS 2022.]
How?
#pause
#text(24pt)[
- IT will be removing it from the college computers in the coming months. You will need to manually "untick" it from the options at home and in college for now.]

= Role of the Operating System
#note([Keywords: `Operating System; OS; Hardware; Software; System software; Virtual Machine; Abstraction; Graphical User Interface; Command Line Interface; Application Programming Interface;  Process; Processor; Memory;`])

== From the AQA Specification:
*4.6.1.3 System Software* \
#text(20pt)[Understand the need for, and functions of the following system software:
- operating systems (OSs)
- utility programs
- libraries
- translators (compiler, assembler, interpreter)]
*4.6.1.4 Role of an operating system (OS)* \
#text(20pt)[Understand that a role of the operating system is to hide the complexities of the hardware. \
Know that the OS handles resource management, managing hardware to allocate processors, memories and I/O devices among competing processes.
]

== Key Definition
#notes
#rect(inset:30pt,fill:yellow.lighten(50%),stroke:1pt,radius:30pt,
[The role of an operating system is to:
#enum[Hide the complexities of the hardware from the user.][Manage the computer resources which processes compete for.]
An operating system is what makes the hardware useable.])

== 1. Hide the complexities of the hardware from the user.
#notes
#underline[Virtual Machine] \
The *virtual machine*, or *platform*, that the operating system provides, helps to *hide the complexities of the hardware* behind layers of operating system software. \ \
#pause
#bold[Abstraction!]

== 1. Hide the complexities of the hardware from the user.
#notes
#grid(columns:(1fr,0.8fr),column-gutter: 25pt,
[The OS provides a platform on which other software can run. \
It handles the operations that are common to different pieces of software on the same system. \
This allows *applications* to make user interfaces.],
diagram(
node((0,0),rect(radius:5pt,width:300pt,height:50pt,fill:orange.lighten(50%),stroke:1pt,[User])),
node((0,0.5),rect(radius:5pt,width:300pt,height:50pt,fill:green.lighten(50%),stroke:1pt,[Application])),
node((0,1),rect(radius:5pt,width:300pt,height:50pt,fill:blue.lighten(50%),stroke:1pt,[Operating System])),
node((0,1.5),rect(radius:5pt,width:300pt,height:50pt,fill:red.lighten(50%),stroke:1pt,[Hardware]))
))

== How does it do that? (Beyond spec)
1. Interfaces:
#text(size:24pt)[
- Graphical User Interface (GUI)
  - Using Operating System commands to interact with \ I/O controllers]
#pause
#text(size:24pt)[2. Command line interface (CLI)
  - Still providing some form of GUI, as you need to be able to see what you're typing/seeing back.]
#pause
#text(size:24pt)[Note: Windows also provides a GUI, but that's an application called Windows, running on the operating system called Windows. \ ]
#pause
#text(size:24pt)[It's the same with MAC & Linux.]

== How does it do that? (Beyond spec)
2. Application Programming Interface (API)
APIs are layers of software that allow the application programmers to call them to perform common operating system tasks. \

eg. opening text files calls a *Windows API function* to execute that command.

== 2. Manage the computer resources \ which processes compete for.
#mwb
What is a process? \ \
#only(1)[Come up with a definition in pairs.]
#only(2)[#text(red)[An #bold[instance of a program being executed]. In many modern OS, many processes exist at once.]]

== 2. Manage the computer resources \ which processes compete for.
#notes
Sadly for us, 'resources' isn't enough to get marks.
You can remember then with: \
#grid(columns:(1fr,0.5fr),
[#uncover("2-")[*> Processor(s)* \ #text(size:24pt)[- CPU Scheduling]]
#uncover("3-")[*> Input/Output Devices* \ ]
#uncover("4-")[*> Memory* \ #text(size:24pt)[- Memory management]]
#uncover("5-")[*> Storage* \ #text(size:24pt)[- Filesystems]]],
[#only(6)[#text(55pt,red)[#bold[P \ I \ M \ S]]]
#only(7)[#text(55pt,red)[#bold[S \ I \ M \ P]]]]
)

== #text(red)[P]rocessors
#notes
Processes appear to be running at the same time, though (if there is only one processor) only one will actually be running at once.
#pause
One of the roles of the operating system is to *allocate processor time to each of the processes*.  There are lots of different ways that this can be done.
#pause
#rect(stroke:1pt,inset:20pt,fill:yellow.lighten(50%),radius:10pt,[Assume we have a single-core processor. There are a number of processes all waiting to be run. \ How might the OS decide which one to run next?])

== #text(red)[I]nput/Output Devices
#notes
The OS will allocate I/O devices to different processes and manage access between processes and devices.\ \
#pause
Example: Two processes both want to access the audio input from the microphone. 
== #text(red)[M]emory
#notes
The operating system will keep track of and allocate which parts of the main memory are being used by which process. \ \
#pause
Remember, processes may be allocated blocks of memory that are not *contiguous*. \ \
The OS hides this complexity. Our programs simply don't need to know that most of the time.
== #text(red)[S]torage
#notes
The operating system will allocate *space on a storage device* to files, *organise files into directories*, and determine *where on the device* to save a file.

All of these features are part of a *filesystem*.

== Additional functions of the OS \ #text(size:30pt)[(From mark schemes)]
#notes
- Handle interrupts
#pause
- Installation and automatic updating of software
#pause
- Managing power consumption

= Dictionaries
== Abstract Data Types
#notes
A dictionary is an *abstract data type*, but what does that mean? \ \
#pause
An abstract data type is just the rules for how the object *will* function. It doesn't contain algorithms, or even any code.  \ \
A *data structure* is the realisation of that ADT within a programming language.

== Dictionaries
#notes

A Dictionary is defined by:
- A collection of (*key*, *value*) pairs.
- Values can only be accessed using the associated key
- There can be #underline[no duplicate keys]
#pause
They can be thought of as an array where items are used to access an index, rather than just sequential integers.

== A comparison:
#Comp
#grid(columns:(1fr,1.5fr),column-gutter: 20pt,
[Arrays:
#text(20pt)[```cs
string[] B007-names = {"Jim","Sara","Ao"};

B007-names[1] = "Sarah";

Console.WriteLine(
         B007-names[2]);
```]
],
uncover("2-")[
  Dictionaries:
  #text(20pt)[```cs
Dictionary<string,int> B007-scores 
          = new Dictionary<string,int>();

B007-scores.Add("Jim",85);
B007-scores.Add("Sara",100);
B007-scores.Add("Ao",40);

B007-scores["Ao"] = 400;

Console.WriteLine(B007-scores["Jim"]);

foreach 
    (string name in B007-scores.Keys()) 
    {
        Console.WriteLine($"Hi {name}!");
    }
    ```]
])
#uncover(3)[#place(dy:-2.5em,dx:-1em,rect(fill:yellow.lighten(50%),stroke:1pt,radius:10pt,inset:20pt,[*W137 - C\# Dictionaries*]))]