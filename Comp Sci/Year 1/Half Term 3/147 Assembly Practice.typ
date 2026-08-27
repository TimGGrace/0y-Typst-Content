#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

#weeklyReview(title:"R112 - SQL, Binary")

== Starter: Addressing Modes in Assembly Code
#notes
#only(1)[1. What are the different addressing modes?

2. Which two addressing modes are exhibited in the following instruction? \
#text(32pt)[`               SUB R0, R0, #1`]

3. Using the above instruction, explain the concepts of *Opcode*, *Operand* and *Instruction Set*
]
#only(2)[
  #text(red)[
    1. Direct (memory), Immediate, Direct (register)

    2. `R0`: Direct (register), `#1`: Immediate

    3. A processor's #bold[instruction set] defines the list of operations that the processor is built to perform, as binary codes called #bold[opcodes]. In assembly, these relate directly to mnemonics such as `SUB`. Depending on the type of operation a number of inputs, or #bold[operands], are supplied with the instruction. In this case they are `R0`, `R0`, and the number `1`. 
  ]
]

= Assembly Language 2
#place(dy:1em,dx:12em)[
  `MOV R0, #0
start:
ADD R0, R0, #1
CMP R0, #0
BNE start
HALT
  `
]

== Find the mistakes:
#mwb
#text(36pt)[ADD R1, R1, #pin(0)5#pin(1)]
#pause
#pinit-highlight(0,1,stroke:2pt+red,fill:none,dy:-35pt,extended-height: 45pt,dx:-5pt,extended-width: 10pt)

== Find the mistakes:
#mwb
#text(36pt)[LDR R1, #pin(0)\#4#pin(1)]
#pause
#pinit-highlight(0,1,stroke:2pt+red,fill:none,dy:-35pt,extended-height: 45pt,dx:-5pt,extended-width: 10pt) #pause

== Find the mistakes:
#mwb
#text(36pt)[LDR R1, 4

This sets the value of register 1 to #pin(0)4#pin(1)]
#pause
#pinit-highlight(0,1,stroke:2pt+red,fill:none,dy:-35pt,extended-height: 45pt,dx:-5pt,extended-width: 10pt)

== Find the mistakes:
#mwb
#text(36pt)[LDR R1, 5 \ LDR R2, 6 \ ADD R1, R1, R2 \ #pin(0)STO 7, R1#pin(1)]
#pause
#pinit-highlight(0,1,stroke:2pt+red,fill:none,dy:5pt,extended-height: 15pt,dx:-155pt,extended-width: 80pt)

== Find the mistakes:
#mwb
#text(36pt)[
  LDR R1, 5 \
  LDR R2, 6 \
  #pin(0)B R1 GT R2, else#pin(1) \
  SUB R3, R2, R1 \
  els#pin(2)e#pin(3) \
  SUB R3, R1, R2 \
  HALT
]
#pause
#pinit-highlight(0,1,stroke:2pt+red,fill:none,dy:5pt,extended-height: 15pt,dx:-155pt,extended-width: 160pt)
#pause
#pinit-highlight(2,3,stroke:2pt+red,fill:none,dy:-35pt,extended-height: 45pt,dx:20pt,)
#pause
#place(dy:-15em,dx:15em,rect(stroke:2pt,fill:blue.lighten(60%),inset:10pt,radius:15pt,height:500pt)[#text(36pt)[
  LDR R1, 5 \
  LDR R2, 6 \
  CMP R1, R2 \
  BGT else \
  SUB R3, R2, R1 \
  HALT \
  else: \
  SUB R3, R1, R2 \
  HALT
  ]
])

== Write an assembly program to:
#mwb
#only(1)[
  1. A number is stored in memory location 14.

  2. Multiply that number by 4 and store the result in memory location 15.
]
#only(2)[
  1. Two numbers $a$ and $b$ are stored in memory locations 21 and 22 resectively.

  2. Find $a + b$ and store the result in memory location 23.
]
#only(3)[
  1. Store the number 3 in register 1

  2. Add the number 4 to register 1

  3. If the number in register 1 is greater than 10, then divide the number in register 1 by 2

  4. Else multiply the number in register 1 by 4.
]
#only(4)[
  1. The ciphertext of a Vernam Cipher is stored in memory location 81.

  2. The key is stored in memory location 82.

  3. Find and store the plaintext in memory location 83.
]
#only(5)[
  1. Two numbers are stored in memory locations 100 and 101 respectively.

  2. If the number in location 100 is greater than the other number, store a 1 in memory location 102.

  3. Otherwise store a 0 in memory location 102.
]
#only(6)[
  1. A number is stored in memory location 15.

  2. Double that number.
  
  3. Keep doubling it until it is greater than 100.
  
  4. Store the result in memory location 16.
]
#only(7)[
  Write this in assembly, retrieve x from memory location 44, and save the result into location 44:
  ```cs 
  for (int i=0;i<5;i++){
    x = x + 2
  }```
]

Do *NOT* use the simulator. Only do it on you mini whiteboard with the instruction set sheet to help.

== More practice!
#Comp
Continue with the questions from last time on BPCompSci.com

*W120 - Assembly Language Problems*

https://mcc.barton.ac.uk/mcc/link/csStudent/assemblySimulator

== Time for a break from programming
Your friend, who studies Maths but not Computer Science, asks you:

#text(36pt)["Programming code tells the computer to do something, but what makes the code actually mean anything to the computer?"]

What do you say to them?

== "Exam"ple questions
#GClass
On Classroom, complete the past paper \ question *L147 - Assembly PPQ*

#text(red)[#bold[You must not use the Assembly simulator]]

You have 10 minutes.

#text(purple)[#bold[EXT:] If this is too easy, do 2023 P2 Q7 as well.]
#pause

Now self-mark the questions in a #text(green)[#bold[different colour]].
