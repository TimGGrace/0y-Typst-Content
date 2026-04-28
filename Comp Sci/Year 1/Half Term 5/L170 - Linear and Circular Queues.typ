#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter
#mwb
Recall the *five* key operations that can be carried out on the stack abstract data type.

*Extension*: Write function stubs for each of them.

#only(2)[
  - Pop
  - Push
  - Peek
  - IsEmpty
  - IsFull
]
#only(3)[
  - `T Pop()`
  - `bool Push(T item)` or `void Push(T item)`
  - `T Peek()`
  - `bool IsEmpty()`
  - `bool IsFull()`
]

= Queues
#note[
  Keywords: `Queue; FIFO; Linear Queue, Circular Queue, Priority Queue; Pointers;`
]
#only(1)[
  #place(dy:-10em,dx:19.3em,image("img/170 meme.png"))
]
#only(2)[
  #place(dy:-8em,dx:7em,image("img/170 spec.png"))
]

== Examples of Queues
What are some examples of queues in real life and digital systems?#pause
- Print jobs#pause

- Keyboard buffer#pause

- Rollercoaster#pause

- Supermarket#pause

- Queue of packets at a router

== Queue (Abstract Data Type)
#notes
Just like a stack, a queue is an abstract data type.

A stack is *First In, Last Out* (LIFO)#pause

Queues are *FIFO - First In, Last Out*

== Queue (Abstract Data Type)
#notes
There are *four* key operations for a queue:
#grid(columns:(0.4fr,1.5fr), row-gutter: 2em,
bold[Enqueue: ], only("2-")[Add item to the _rear_ of the queue.],
only("3-")[#bold[Dequeue:]],only("4-")[Remove and return the item at the _front_ of the queue.],
only("5-")[#bold[IsEmpty:]],only("6-")[Check if the queue is empty.],
only("7-")[#bold[IsFull:]],only("8-")[Check if the queue is full.])

== Implementing a Queue: Linear Queues
#notes
We can implement a Queue with an *array*. \ After two animals join, the queue looks like this:
#align(center)[#table(columns:range(5).map(_=>1fr),
`[0]`,`[1]`,`[2]`,`[3]`,`[4]`,
[Lion],[Tiger])]#pause

If an animal leaves the queue, it will be the Lion, \ and the queue will look like this:
#align(center)[#table(columns:range(5).map(_=>1fr),
`[0]`,`[1]`,`[2]`,`[3]`,`[4]`,
[ ],[Tiger])]

== Your Turn
#mwb
#align(center)[#table(columns:range(5).map(_=>1fr), rows:1em,
`[0]`,`[1]`,`[2]`,`[3]`,`[4]`,[])]
- Enqueue *Kelsier*
- Enqueue *Sazed*
- Enqueue *Tindwyl*
- Dequeue
- Enqueue *Elend*
- Dequeue
- Dequeue
#place(dy:-8em,dx:13em,[What does the queue look like \ after completing these operations?

*Discuss*: Is this a good way of \ implementing a queue?

What possible issues are there?])
#only(2)[
  #place(dy:0.5em,)[
    #align(center)[#table(columns:range(5).map(_=>1fr), rows:1em,
`[0]`,`[1]`,`[2]`,`[3]`,`[4]`,[],[],[],[*Elend*])]
  ]
]

== Implementing a Queue: Linear Queue
#notes
We could improve this system by moving all of the values \ forwards whenever an item is dequeued. This is often called a *Shuffle Queue*.#pause

This way, the front item is always the first.

This method is, however, #text(red)[very processing intensive].#pause

Another option is to store a `front` and a `rear` pointer.

== Shuffle Queue
#align(center)[
  #only(1)[
    #table(columns:range(4).map(_=>1fr), rows:1em,
          `[0]`,`[1]`,`[2]`,`[3]`,[],[],[],[])
          #place(dy:0em,dx:15em,rect(width:130pt,inset:10pt,[Rear: -1]))
  ]
  #only(2)[
    #table(columns:range(4).map(_=>1fr), rows:1em,
          `[0]`,`[1]`,`[2]`,`[3]`,[*Kelsier*],[],[],[])
          #place(dy:0em,dx:15em,rect(width:130pt,inset:10pt,[Rear: 0]))
  ]
  #only(3)[
    #table(columns:range(4).map(_=>1fr), rows:1em,
          `[0]`,`[1]`,`[2]`,`[3]`,[*Kelsier*],[*Sazed*],[],[])
          #place(dy:0em,dx:15em,rect(width:130pt,inset:10pt,[Rear: 1]))
  ]
  #only(4)[
    #table(columns:range(4).map(_=>1fr), rows:1em,
          `[0]`,`[1]`,`[2]`,`[3]`,[*Kelsier*],[*Sazed*],[*Tindwyl*],[])
          #place(dy:0em,dx:15em,rect(width:130pt,inset:10pt,[Rear: 2]))
  ]
  #only(5)[
    #table(columns:range(4).map(_=>1fr), rows:1em,
          `[0]`,`[1]`,`[2]`,`[3]`,[*Sazed*],[*Tindwyl*],[],[])
          #place(dy:0em,dx:15em,rect(width:130pt,inset:10pt,[Rear: 1]))
  ]
  #only(6)[
    #table(columns:range(4).map(_=>1fr), rows:1em,
          `[0]`,`[1]`,`[2]`,`[3]`,[*Sazed*],[*Tindwyl*],[*Elend*],[])
          #place(dy:0em,dx:15em,rect(width:130pt,inset:10pt,[Rear: 2]))
  ]
  #only(7)[
    #table(columns:range(4).map(_=>1fr), rows:1em,
          `[0]`,`[1]`,`[2]`,`[3]`,[*Tindwyl*],[*Elend*],[])
          #place(dy:0em,dx:15em,rect(width:130pt,inset:10pt,[Rear: 1]))
  ]
  #only(8)[
    #table(columns:range(4).map(_=>1fr), rows:1em,
          `[0]`,`[1]`,`[2]`,`[3]`,[*Elend*],[])
          #place(dy:0em,dx:15em,rect(width:130pt,inset:10pt,[Rear: 0]))
  ]
]

- Enqueue *Kelsier*
- Enqueue *Sazed*
- Enqueue *Tindwyl*
- Dequeue
- Enqueue *Elend*
- Dequeue
- Dequeue

== Front and Rear
#align(center)[
  #only(1)[
    #table(columns:range(4).map(_=>1fr), rows:1em,
          `[0]`,`[1]`,`[2]`,`[3]`,[],[],[],[])
    #place(dy:0em,dx:15em,rect(width:130pt,inset:10pt,[Front: 0 \ Rear: -1 ]))
  ]
  #only(2)[
    #table(columns:range(4).map(_=>1fr), rows:1em,
          `[0]`,`[1]`,`[2]`,`[3]`,[*Kelsier*],[],[],[])
          #place(dy:0em,dx:15em,rect(width:130pt,inset:10pt,[Front: 0 \ Rear: 0 ]))
  ]
  #only(3)[
    #table(columns:range(4).map(_=>1fr), rows:1em,
          `[0]`,`[1]`,`[2]`,`[3]`,[*Kelsier*],[*Sazed*],[],[])
          #place(dy:0em,dx:15em,rect(width:130pt,inset:10pt,[Front: 0 \ Rear: 1 ]))
  ]
  #only(4)[
    #table(columns:range(4).map(_=>1fr), rows:1em,
          `[0]`,`[1]`,`[2]`,`[3]`,[*Kelsier*],[*Sazed*],[*Tindwyl*],[])
          #place(dy:0em,dx:15em,rect(width:130pt,inset:10pt,[Front: 0 \ Rear: 2 ]))
  ]
  #only(5)[
    #table(columns:range(4).map(_=>1fr), rows:1em,
          `[0]`,`[1]`,`[2]`,`[3]`,[],[*Sazed*],[*Tindwyl*],[])
          #place(dy:0em,dx:15em,rect(width:130pt,inset:10pt,[Front: 1 \ Rear: 2 ]))
  ]
  #only(6)[
    #table(columns:range(4).map(_=>1fr), rows:1em,
          `[0]`,`[1]`,`[2]`,`[3]`,[],[*Sazed*],[*Tindwyl*],[*Elend*])
          #place(dy:0em,dx:15em,rect(width:130pt,inset:10pt,[Front: 1 \ Rear: 3 ]))
  ]
  #only(7)[
    #table(columns:range(4).map(_=>1fr), rows:1em,
          `[0]`,`[1]`,`[2]`,`[3]`,[],[],[*Tindwyl*],[*Elend*])
          #place(dy:0em,dx:15em,rect(width:130pt,inset:10pt,[Front: 2 \ Rear: 3 ]))
  ]
  #only(8)[
    #table(columns:range(4).map(_=>1fr), rows:1em,
          `[0]`,`[1]`,`[2]`,`[3]`,[],[],[],[*Elend*])
          #place(dy:0em,dx:15em,rect(width:130pt,inset:10pt,[Front: 3 \ Rear: 3 ]))
  ]
]

- Enqueue *Kelsier*
- Enqueue *Sazed*
- Enqueue *Tindwyl*
- Dequeue
- Enqueue *Elend*
- Dequeue
- Dequeue

== Empty and Full Queues
#notes
We can't add to a full queue, or remove from an empty queue.

How do we detect that with our pointers?#pause

#grid(columns:(0.5fr,1.5fr), row-gutter: 50pt, column-gutter: 20pt,
bold[Full Queue:],[Rear pointer is the value of the largest *index*.],
only(3)[#bold[Empty Queue:]],only(3)[Front pointer is one *greater* than the rear pointer.])

== Problems with a Linear Queue
#notes
When using a linear queue, we can run into the following issues:
- Limited number of enqueue operations (if not shuffling)#pause
  - This leaves 'wasted' space at the front of the queue that \ we can't ever re-access.#pause

- Processor intensive (if shuffling)
  - Performing an operation per item is a bad idea with large queues!#pause

How could we fix these problems?

== Circular Queues
#notes
#v(1cm)
#table(columns:range(4).map(_=>1fr), rows:1em,
          `[0]`,`[1]`,`[2]`,`[3]`,[],[*Sazed*],[*Tindwyl*],[],
          table.cell(colspan: 2,stroke:(left:0pt,right:0pt,bottom:0pt),align:center)[Front: 1],
          table.cell(colspan: 2,stroke:(left:0pt,right:0pt,bottom:0pt),align:center)[Rear: 2])

Like a linear queue, index 3 is after index 2.#pause \ 
Unlike a linear queue, index 0 is after index 3 (in this case).

If we enqueue two more people into this queue, we would have:#pause

#table(columns:range(4).map(_=>1fr), rows:1em,
          `[0]`,`[1]`,`[2]`,`[3]`,[*Tensoon*],[*Sazed*],[*Tindwyl*],[*Elend*],
          table.cell(colspan: 2,stroke:(left:0pt,right:0pt,bottom:0pt),align:center)[Front: 1],
          table.cell(colspan: 2,stroke:(left:0pt,right:0pt,bottom:0pt),align:center)[Rear: 0])

== Circular Queue
#notes
Be careful with circular queues! They make some of our previous assumptions problematic.

We can't check if `rear = maxSize` any more. Since rear loops around. #pause

We can't check if `rear = front - 1`, even with some clever wrap-around maths, as that's the condition for *both* full and empty!#pause

We need to store the *number of items in the queue*

#Worksheet[On BPCompSci: \ *W134 - C\# Queues*]