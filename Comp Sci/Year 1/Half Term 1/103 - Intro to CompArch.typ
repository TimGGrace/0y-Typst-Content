#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))

#QuickQuestions(
  firstSet:(
    ([Evaluate $ 3 quad 10 quad 5 quad + quad * $],[$45$]),
    ([Evaluate $ 1 quad 2 quad * quad 3 quad 4 quad * quad + $],[$14 $]),
    ([Convert the following RPN into infix notation:$ 5 quad 9 quad 2 quad + quad * $],[$ 5 quad * quad (9 quad + quad 2)$]),
  ),
  secondSet:(
    ([Write $1001 quad 1000_2$ in hexadecimal],[$98_h$]),
    ([Write $A 4_16$ in binary.],[$ 1010 quad 0100_2$]),
  )
)
= Computer Architecture
#place(dy:9em,
  note[Keywords: `Processor; Main memory; IO controllers and devices; Immediate Access Store; Memory location; RAM; ROM; System Bus; Data Bus; Address Bus; Control Bus; Stored Program Concept; Von Neumann and Harvard Architecture;`])#pause
  #place(center+horizon,
    image("img/103-spec.png",height:120%)
  )

== Abstraction
During the course, we will use simplified *models* to describe complicated systems and processes.#pause

This is especially true in Computer Architecture#pause

We need *abstraction* here to better understand how computers work.

== Three-box model
#green-book
A high level of abstraction (very simplified).\ Whole system overview.

#place(center+horizon, dy:2em,
canvas(
{
  import cetz.draw: *
  set-style(content: (frame:"rect",padding:1em,fill:fadedBlue.lighten(40%),stroke:fadedBlue+2pt))

  let arrow(start:(0,0),stop:(1,1),scale:5) = {
    let props = (symbol:"<",scale:scale,stroke:fadedBlue+2pt,fill:fadedBlue)
    line(start, stop, stroke:fadedBlue+10pt)
    mark(start, stop, ..props)
    mark(stop, start, ..props)
  }

  arrow(start:(-5,-2),stop:(20,-2),scale:5)
  
  arrow(start:(0,-1),stop:(0,0.3),scale:4)
  arrow(start:(7.5,-1),stop:(7.5,0.3),scale:4)
  arrow(start:(15,-1),stop:(15,0.3),scale:4)
  


  content((0,2),[Processor])
  content((7.5,2),[Main Memory])
  content((15,2),[I/O])
  set-style(content:(frame:"rect",fill:none,stroke:none))
  content((7.5,-3),[_Von Neumann Architecture_])
}))

== Types of Main Memory
#green-book
*RAM* - Random Access Memory
- Volatile memory.#pause
- Memory locations can be accessed directly in any order.#pause

*ROM* - Read Only Memory
- Non-volatile memory

== I/O
#green-book
The processor communicates through *I/O*\ controllers to *I/O* devices.#pause

I/O *devices* are your peripherals (eg. speakers, keyboard)

I/O *controllers* are circuits that connect to a bus and an I/O device
- Provides the correct voltages and currents
- Forms a standard interface for peripherals

==
#place( dy:-1.5em,
  image("img/pc-model.png",height:120%)
)#pause
#place(right,dy:0em, dx:-8.5em,
  [Computer]
)#pause
#place(right,dy:3em, dx:-2.3em,
  align(center)[. . . . . . . . .\ Data and\ Address Busses]
)#pause
#place(right,dy:8em, dx:-3em,
  align(center)[\_\_\_\_\_\_\_\_\_\ Control Bus ]
)

== Busses
#green-book
There's a few kinds of 'bus' we need to know.\
A bus is a set of wires that transfer data.

#only(2)[
  *System Bus*
  - A set of parallel wires connecting independent components.
  - Signals can be data, address or control information.
]

#only(3)[
  *Data Bus*
  - #bold[bidirectional]
  - Transfers data between components.
]

#only(4)[
  *Address Bus*
  - #bold[unidirectional]
  - Transfers address locations from the CPU to memory or I/O locations.
]

#only(5)[
  *Control Bus*
  - #bold[bidirectional]
  - Transfers command signals between components.
    - eg: Clock, Read, Write
]

== Question
#mwb
Suggest names for the components numbered $1$ to $5$.
#place( dy:10pt,
  image("img/103-component-task.png",height:90%)
)

== Stored Program Concept
#green-book
#place( dy:4em,
  rect( stroke:5pt+orange,inset:20pt,
    [Two parts:
    #set enum(numbering:"(a)")
    + *A program must be resident in main memory to be executed.*
    + *Machine code instructions are fetched sequentially and executed one at a time in the processor.*
    ]
  )
)#pause
#place(horizon,dy:6em,
  [
    The processor performs arithmetic and logical operations
      - eg: ADD, SUBTRACT, XOR

    These are stored as machine code/binary.
  ]
)

== Types of Stored Program Concept
#green-book
#place(
  dy:3em,
  align(right)[Von Neumann\ Architecture]
)
#place(center+horizon, dy:-2em,
canvas(
{
  import cetz.draw: *
  set-style(content: (frame:"rect",padding:1em,fill:fadedBlue.lighten(40%),stroke:fadedBlue+2pt))

  let arrow(head:(0,0),tail:(1,1),scale:5) = {
    let props = (symbol:"<",scale:scale,stroke:fadedBlue+2pt,fill:fadedBlue)
    line(head, tail, stroke:fadedBlue+10pt)
    mark(head, tail, ..props)
  }

  content((0,6),
    box(height:80pt,width:100pt,align(center+horizon)[
      Processor
  ]))
  content((10,6),
    box(height:80pt,width:100pt,align(center+horizon)[
      Main Memory
  ]))

  arrow(head:(3.8,7),tail:(7.4,7),scale:5)
  arrow(head:(6.3,5),tail:(2.6,5),scale:5)

  set-style(content: (frame:"rect",padding:0,fill:none,stroke:none))
  content(((3.8,9),35%,(7.4,9)),align(center)[Data\ and\ Instructions])
  content(((3.8,4.5),35%,(7.4,4.5)),[Addresses])
}
)
)#pause

#place(center+horizon, dy:5.6em,
canvas(
{
  import cetz.draw: *
  set-style(content: (frame:"rect",padding:1em,fill:fadedBlue.lighten(40%),stroke:fadedBlue+2pt))

  let arrow(head:(0,0),tail:(1,1),scale:5) = {
    let props = (symbol:"<",scale:scale,stroke:fadedBlue+2pt,fill:fadedBlue)
    line(head, tail, stroke:fadedBlue+10pt)
    mark(head, tail, ..props)
  }

  content((0,6),
    box(height:80pt,width:100pt,align(center+horizon)[
      Instruction\ Memory
  ]))
  content((10,6),
    box(height:80pt,width:100pt,align(center+horizon)[
      Processor
  ]))

  content((20,6),
    box(height:80pt,width:100pt,align(center+horizon)[
      Data\ Memory
  ]))

  let a = (3.8,7)
  let b = (7.4,7)
  arrow(head:a,tail:b,scale:5)
  arrow(head:(6.3,5),tail:(2.6,5),scale:5)

  set-style(content: (frame:"rect",padding:0,fill:none,stroke:none))
  content((a,35%,b),align(center)[Addresses],anchor:"south",padding:0.5em)
  content(((3.8,4.5),35%,(7.4,4.5)),[Instructions],anchor:"north")

  (a, b) = ((16.3,7),(12.6,7))
  arrow(head:a,tail:b,scale:5)
  content((a,35%,b),align(center)[Addresses], anchor:"south",padding:0.5em)
  
  (a, b) = ((17.4,5),(13.8,5))
  arrow(head:b,tail:a,scale:5)
  content((a,65%,b),[Data], anchor:"north",padding:0.5em,)
}
)
)
#place(
  dy:7.7em, dx:-1.5em,
  align(right)[Harvard\ Architecture]
)

== Discuss
#discuss
#align(center+horizon,
text(48pt)[*What are some advantages\ and disadvantages of\ Harvard over Von Neumann?*])

== Von Neumann vs Harvard
*Von Neumann*
#text(22pt)[- Competition for resources as data and instructions share the same bus]#pause

*Harvard*
#text(22pt)[- Avoids bottleneck of single data/address bus
- Instruction and data memory can have different word lengths
- Address lengths can differ too
- Avoids possibility of data being executed as code, which is one method that can be exploited by hackers 
- Different technologies can be used to implement instruction and data memory
]

