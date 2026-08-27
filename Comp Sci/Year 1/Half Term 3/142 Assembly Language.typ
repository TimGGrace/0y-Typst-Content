#import "../../../Templates/template.typ": *

#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)

#weeklyReview(title:"R110 - Boolean Algebra and File Sizes")

== Starter
#mwb
Define the following terms:
- Machine code

- Instruction Set

- Operation Code

- Operand

- Register


= Assembly Language

== Processor Instructions
#notes
#only("1-3")[At the processor level, instructions do not look like C\# \ or SQL (or even Python) code. ]

#only("2-3")[Instead, they are in a simpler format called *machine code* (just binary).] 

#only(3)[Machine code can be easily interpreted in *assembly form* for human readability.
]
#only("4-")[
  #grid(columns:2, column-gutter: 20pt, row-gutter: 20pt)[
  *Binary Form*][`0001 0001 0010 1111`][
    *Assembly Form*][`ADD R1, R2, #15`
  ]
]
#only("5-")[
#align(center)[
#place(dy:1em)[
  #rect(fill:orange, stroke:1pt,inset:10pt,radius:15pt)[
    Operation Code \ `      ADD`
  ]
]
#place(dy:1em, dx:8em)[
  #rect(fill:blue.lighten(60%), stroke:1pt,inset:10pt,radius:15pt)[
    Operand \ `   R1`
  ]
]
#place(dy:1em, dx:12.9em)[
  #rect(fill:blue.lighten(60%), stroke:1pt,inset:10pt,radius:15pt)[
    Operand \ `   R2`
  ]
]
#place(dy:1em, dx:17.8em)[
  #rect(fill:blue.lighten(60%), stroke:1pt,inset:10pt,radius:15pt)[
    Operand \ `   #15`
  ]
]

]]
#only(6)[
  #place(dy:5em)[
  #rect(inset:10pt,radius:15pt,fill:yellow.transparentize(40%), stroke:1pt)[
    *Instruction set* \
    The set of binary codes for the machine operations that a processor has been designed to perform \ (e.g. ADD, LOAD, SUBTRACT, LEFT SHIFT)

  ]
]
]

== OpCode
#notes
These are short abbreviations for what the instruction does.

Called mnemonics#pause

Generally between 1-4 letters#pause

Eg ADD, AND, B, BNE, HALT

== Operand
#notes
The “data” or “inputs” that the instruction uses.#pause

A bit like procedure parameters#pause

Eg ADD R1,R2,R3#pause

Rx refers to general purpose register x (on the CPU)#pause

There are three addressing modes:
- *Immediate Addressing* (`#15`)
- *Direct (register) Addressing* (R1)
- *Direct (memory) Addressing* (15)

== How does it go to code?
#notes
Assembly code instructions are *more human friendly* than \
machine code instructions.

They are converted by an *assembler* into machine code that can be run on a computer.

This process occurs as a set of *one-to-one* mappings.

== What can Assembly do?
Very little per instruction!
- Move data around (between CPU registers and main memory)#pause
- Perform simple arithmetic and logical operations on data in registers (eg add, subtract, and)#pause
- Simple branching (jumping to a different instruction in the code). Can be conditional (like an IF statement, but far less complex). #pause
- A few other instructions (eg HALT)

== AQA Instruction Set
#text(red)[#bold[You don’t need to remember them!]]

	#rect(radius:10pt)[“In the exam, students will be provided 	with a list of assembly language 	instructions so they will not need to recall 	the instruction set.”]
You will, of course, need to know what they do and how to use them.

You have a copy of the instruction set on Classroom \
(*L142 – Assembly Instruction Set*)

In an exam, you will be given them all if you need.


== Examples
#notes
`MOV R1, #45`#pause
- puts the immediate value 45 into register R1#pause
`LDR R1, 45`#pause
- Puts the contents of memory location 45 into R1#pause
- A Direct (memory) addressing instruction will take longer to execute since the main memory will need to be accessed (involving MAR, MBR, buses etc.)

== Example Programs
#mwb
#only("1-2")[
  `MOV R1, #23
ADD R1, R1, #41
HALT`

What is the effect of this program when run? \
]
#only(2)[
  #text(red)[Gives 64 in R1]
]
#only("3-4")[
  `LDR R1, 45
LDR R2, 46
SUB R1, R1, R2
STR R1, 47
HALT
`
What about this program?
#place(dy:-7em,dx:15em)[
  #table(columns:(auto,auto),
  table.cell(fill:green.transparentize(50%))[Address],table.cell(fill:green.transparentize(50%))[Value],
  [45],[36],
  [46],[31],
  [47],[])
]
]
#only(4)[
  #text(red)[This will give 5 at address 47]
]

== If Statements
#notes

`MOV R1, #5
CMP R1, #6
BNE notEqualPart
<code>
B endif
notEqualPart:
<more code>
endif:
`
== Practice
#notes
Write programs to achieve:
1. Add 23 & 12, storing the answer in R6
2. Add 54 and 77, storing the answer at memory location 9

== Assembly Practice
#Comp
https://compsci.barton.ac.uk/csStudent/assemblySimulator/

Play around and then start the worksheet:

*W120 - Assembly Language Problems*

== Checking Question
What does this do?
#mwb
`MOV R1, #5
start:
<code>
SUB R1, R1, #1
CMP R1, #0
BNE start
HALT
`
#only(2)[
  #text(red)[`               `Simple loop]
]