#import "../../../Templates/template.typ": *
#import "@preview/fletcher:0.5.1"
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))

#QuickQuestions(
  firstSet: (
    ([Write $1011" "1111_2$ in hexadecimal.],[$B F_16$]),
    ([State the three components of Harvard Architecture.],[- Processor
    - Data memory
    - Instruction memory]),
    ([Evaluate $ 2 quad 5 quad 4 quad - quad 3 quad * quad \/ $],[$2 div ((5 - 4) times 3)$])
  ),
  secondSet: (
    ([Write $10.25_10$ as an $8$ bit fixed point binary number with $4$ digits after the fixed point.],[$1010.0100_2$]),
    ([Simplify $A dot A$],[$A$])
  )
)

= Processors
#pause
#note[
  Keywords: `Processor; Machine Code; Op(eration) code; Operand; Instruction Set; ALU; Control Unit; System Clock; Register; Internal Bus; Program Counter; General Purpose Registers; Current Instruction Register; Memory Address Register; Memory Buffer Register; Status Register; Fetch-Decode-Execute Cycle;`
]#pause
#place(center+horizon,
image("img/106-spec.png", height:120%))

== Role Play
#discuss
In your groups, you will be assigned one of the roles below.\ You should #bold[only open the instruction document for your role].#pause

Roles:
- CPU
- Display
- Main Memory
- ALU (if there's a group of 4)#pause

#bold[Extension]: Estimate your group's average clock speed!

==
#place( center+horizon,
  image("img/106-wafer-1.png",height:120%)
)
== PlayStation 3: 234 million transistors
#place(center+horizon, dy:1em,
image("img/106-wafer-2.png"))#pause
#place(center+horizon,
image("img/106-wafer-3.png"))

== Structure of the Processor
#green-book
There are 9 components within the processor. We need to\ know what they are and what they do!
#set text(size:20pt)
#place(dy:0.5em,)[#grid(columns:(1fr,1fr,1fr), gutter:20pt,stroke:1pt,inset:20pt,align:center+horizon,
[Arithmetic Logic Unit (ALU)],
uncover("2-")[Control Unit],
uncover("3-")[Clock],
uncover("4-")[General Purpose Registers],
uncover("5-")[Program Counter],
uncover("6-")[Current Instruction Register (CIR)],
uncover("7-")[Status Registers],
uncover("8-")[Memory Buffer Register (MBR)],
uncover("9-")[Memory Address Register (MAR)]
)]



== Fetch-Decode-Execute Cycle (GCSE)
#set text(size:24pt)
#v(2em)
#grid(columns:(0.5fr,5fr),
[],
[#pin(0)*Fetch*: The next instruction is copied from main memory into the processor.

*Decode*: The instruction gets interpreted/decoded

*Execute*: The instruction gets carried out.

#pin(1)
]
)
#pause
#pinit-arrow(0,0,start-dx:-2em,end-dx:-0.2em,start-dy:-0.3em,end-dy:-0.3em,stroke:fadedBlue+2pt,fill:none, tail:(stroke:2pt+fadedBlue))
#pinit-line(0,1,start-dx:-2em,end-dx:-2em,end-dy:0.2em, start-dy:-0.3em,stroke:2pt+fadedBlue)
#pinit-line(1,1,start-dx:-2em,end-dx:0.5em,start-dy:0.2em,end-dy:0.2em,stroke:2pt+fadedBlue)
#pinit-line(1,1,start-dy:-1em,end-dy:0.2em,start-dx:0.5em,end-dx:0.5em,stroke:2pt+fadedBlue)

== Fetch-Decode-Execute Cycle (A Level)
#set text(size:15pt)
#v(-1em)
#grid(columns:(0.5fr,5fr),
[],
[#pin(0)*Fetch*: 
+ The contents of the #bold[PC] are copied into the #bold[MAR]
+ The #bold[address bus] is used to transfer this address to #bold[main memory]
+ A read signal is sent along the #bold[control bus]
+ The instruction held at that address in main memory is transferred via the #bold[data bus] to the #bold[MBR]
+ The #bold[PC] is incremented to hold the address of the next instruction to be executed
+ The contents of the #bold[MBR] are copied into the #bold[CIR]

*Decode*: #set enum(start:7)
+ The instruction held in the #bold[CIR] is decoded by the control unit into #bold[opcode and operands]


*Execute*: #set enum(start:8)
+ The #bold[ALU] is used for maths and logic instructions
+ For #bold[LOAD] and #bold[STORE] instructions, the #bold[MAR] and #bold[MBR] are used to access data from main memory
+ The #bold[General Purpose Registers] and #bold[SR] are updated during this step
+ The #bold[control bus] will transfer signals to other components to initiate or sequence actions

#pin(1)
]
)
#pause
#pinit-arrow(0,0,start-dx:-2em,end-dx:-0.2em,start-dy:-0.3em,end-dy:-0.3em,stroke:fadedBlue+2pt,fill:none, tail:(stroke:2pt+fadedBlue))
#pinit-line(0,1,start-dx:-2em,end-dx:-2em,end-dy:0.2em, start-dy:-0.3em,stroke:2pt+fadedBlue)
#pinit-line(1,1,start-dx:-2em,end-dx:0.5em,start-dy:0.2em,end-dy:0.2em,stroke:2pt+fadedBlue)
#pinit-line(1,1,start-dy:-1em,end-dy:0.2em,start-dx:0.5em,end-dx:0.5em,stroke:2pt+fadedBlue)

== #text(28pt)[Let's give it a go!]
#set text(size:18pt)
#box(stroke:1pt,inset:10pt, width:24em,
grid(columns:(1fr,1fr,1fr), inset:5pt,align:center+horizon,gutter:20pt,stroke:1pt,
[Arithmetic Logic Unit (ALU)],
[Control Unit\ \ ],
[Clock\ \ ],
[General Purpose Registers\ \ \ ],
[Program Counter\ \ \ ],
[Current Instruction Register (CIR)\ \ \ ],
[Status Registers\ \ \ ],
[Memory Buffer Register (MBR)\ \ \ ],
[Memory Address Register (MAR)\ \ \ ]
))
#place( right+ horizon, dy:-2em,
  box(width:18em,table(
    columns:(1fr,1.5fr), inset:10pt,align:left,
    table.cell(fill:fadedBlue.lighten(40%))[Main Memory Address],
    table.cell(fill:fadedBlue.lighten(40%))[Contents],
    `500`, `LDR R1, 1000`,
    `503`, `ADD R1, R1, #5`,
    `506`, `STO R1, 1002`,
    `...`,`...`,
    `1000`,` `,
    `1001`, ` `,
    `1002`, ` `,
  )
  )
)

== Some interesting youtube videos:
Transitors to make logic gates:\ 
#underline[#text(fadedBlue)[https://www.youtube.com/watch?v=HjneAhCy2N4]]\
0:58-> (Mentions adders + binary decoders but kinda nice nonetheless)

(Can skip this video) Memory:\
#underline[#text(fadedBlue)[https://www.youtube.com/watch?v=rM9BjciBLmg]]\
0:50 -> 6:45\
7:26 -> 


CPU: \
#underline[#text(fadedBlue)[https://www.youtube.com/watch?v=GYlNoAMBY6o]]\
0:40 -> 5:15\
6:05 -> 