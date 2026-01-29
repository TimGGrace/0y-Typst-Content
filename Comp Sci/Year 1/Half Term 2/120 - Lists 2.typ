#import "@preview/touying:0.5.5": *
#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)

== Starter
#notes
#enum(
  [What is stored in a stack frame?],
  [How/when does the call stack grow and shrink?]
) \
#uncover(2)[
#text(fill:red)[
  #enum(
    [Local Variables, parameters, return address],
    [When a method is called the calls tack grows by one stack frame. \ When the method ends, the stack shrinks as the frame is removed.]
  )
]]

= Lists 2
#note([Keywords: `Array; List; Data structure; Dynamic memory allocation; Object; New;`
])

== British Informatics Olympiad
#text(size:20pt)[
A fun, but very challenging programming competition. Can be completed in any programming language. \
$3$ hours, $3$ problems.
#place(left,dy:15pt,rect(fill:rgb(200,200,200),inset:10pt,text(size:20pt)[Each letter in the alphabet can be given a value based on its position in the alphabet, A being 1 through to Z being 26. Two letters can produce a third letter by adding together their values, deducting 26 from the sum if it is greater than 26, and finding the letter whose value equals this result. 

A simple encryption scheme for a string is as follows. Working from left to right, after leaving the leftmost character alone, each character is replaced with the character produced by adding it to the character to its immediate left. 

For example: 
The string ENCRYPT goes through the steps ENCRYPT → ESCRYPT → ESVRYPT → ESVNYPT → ESVNMPT -> ESVNMCT -> ESVNMCW 
]))
#place(left,dy:15.8em,text(size:24pt,[To participate, you must have completed at least one question from last year's paper. More information on GClassroom, or email Isabel (imc\@barton.ac.uk)]))]


== In pairs, discuss
#mwb
*What is the difference between an array and a list* \ \
Write down ideas on a whiteboard:
- How are they declared and accessed in C\#?
- What properties do they have?
- How are they stored in memory?

== In pairs, discuss
#mwb
*What is the difference between an static and dynamic memory allocation?* \ \
Write down ideas on a whiteboard:
- Where in the process's memory are they stored?
- Why might dynamic be advantageous?
- What are the overheads of dynamic?

== Static
#notes
*Static*: we will have #underline[values of a fixed size] such \ as `int` and `float`, which both always need $32$ bits of memory. \
These are *PRIMITIVE DATA TYPES* \ 
These are stored in the *STACK* \ \
#pause
Can you think of any more?

== Dynamic
#notes
*Dynamic*: we may also have some values where \ we #underline[don't know exactly how much memory space] we will need at all times, such as `List`. \
These are called *OBJECTS* \
These are stored in the *HEAP* \ \
#pause
Can you think of any more?

== Storing variables of a fixed length
#text(size:20pt)[When we store a variable of a fixed length, we can simply put it into a memory location in the stack:]

#text(size:24pt)[#grid(columns:(0.2fr,1fr,0.2fr),[],
table(columns:(0.2fr,0.8fr),inset:10pt,
table.header([M.A.],[Data]),
[`0001`],[#uncover("2-4")[`0000 0000 0000 0001` \ `1101 0000 0100 0101 `]],
[`0002`],[#uncover("3-4")[`0000 0000 0000 0000` \ `0000 0000 0110 0011`]],
[`0003`],[` ` \ ` `],
[`0004`],[` ` \ ` `]
))]

#only(2)[```cs int myNum = 118853```]
#only(3)[```cs char myLetter = 'c'```]
#only(4)[```cs double myNum = 0.5567```
#place(left,dy:-6em,dx:7em,rect(fill:rgb(255,255,180),width:56.5%,stroke:0pt,text(size:24pt)[
  `0011 1111 1110 0001 ` \
  `1101 0000 0111 1100 ` \ 
  `1000 0100 1011 0101 ` \ 
  `1101 1100 1100 0110`]))]

== Storing Objects
Storing objects is more complicated, as we don't know how much space they will need. \
#pause
But to store a variable, we *must* place something in the stack. \
#pause
We use an *object reference* (a pointer) which points to a memory location in the heap.
#pause
#grid(columns:(1fr,0.5fr,1fr),
[#table(columns:(0.4fr,0.8fr),inset: 10pt,
[`0001`],[#uncover("7-8")[#text(fill:red)[`0x0010 5F4C`]]#pin(1)],
[`0002`],[],
[`0003`],[],
[`0004`],[])],
[],
[#uncover("6-8")[#place(left,rect(inset:10pt,radius: 10pt,
[*HEAP*: \
#table(columns:(0.8fr,1fr),
[#pin(2)Value],[`null`],
[Next],[`null`]
)

]))]])
#uncover(8)[#pinit-arrow(1,2,fill:red,start-dx:15pt,end-dx:-10pt)]
#uncover("5-8")[
  #place(left,dy:1em,[```cs List<int> myList = new List<int>();```])
]

== Storing Objects

Every time we add another item to the list, we update Value and Next.
#place(left,dy:15pt,dx:12pt,text(22pt)[*HEAD*:])
#place(left,dy:1em,dx:0em,rect(width:8em,stroke:0pt,[#table(columns:(0.8fr,1fr),
[#pin(1)Value],[#only(1)[`null`]#only("2-8")[`4`]],
[Next],[#only("1-3")[`null`]#only("4-6")[`0x123A`]#only("7-8")[`0x21C1`]]
)]))
#place(left,dy:5em,dx:2em,rect(width:8em,stroke:0pt,[#table(columns:(0.8fr,1fr),
[#pin(2)Value],[#only("1-3")[`null`]#only("4-8")[`-3`]],
[Next],[#only("1-4")[`null`]#only("5-8")[`0x21C1`]]
)]))
#place(left,dy:1em,dx:17em,rect(width:8em,stroke:0pt,[#table(columns:(0.8fr,1fr),
[#pin(3)Value],[#only("1-4")[`null`]#only("5-8")[`12`]],
[Next],[#only(1-5)[`null`]#only("6-8")[`0x5D50`]]
)]))
#place(left,dy:8em,dx:10em,rect(width:8em,stroke:0pt,[#table(columns:(0.8fr,1fr),
[#pin(4)Value],[#only("1-5")[`null`]#only("6-8")[`4438`]],
[Next],[`null`]
)]))

#only(2)[#place(left,dy:12em,[```cs myList.Add(4);```])]
#only(4)[#place(left,dy:12em,[```cs myList.Add(-3);```])]
#only("4-6")[#pinit-arrow(1,2,start-dx:130pt,start-dy:50pt,end-dy:-5pt,end-dx:50pt)]
#only(5)[#place(left,dy:12em,[```cs myList.Add(12);```])]
#only("5-7")[#pinit-arrow(2,3,start-dx:180pt,start-dy:40pt,end-dy:15pt,end-dx:-10pt)]
#only(6)[#place(left,dy:12em,[```cs myList.Add(4438);```])]
#only("6-8")[#pinit-arrow(3,4,start-dx:130pt,start-dy:50pt,end-dy:-5pt,end-dx:60pt)]
#only(7)[#place(left,dy:12em,[```cs myList.Remove(-3);```])]
#only("7-8")[#pinit-arrow(1,3,start-dx:180pt,start-dy:40pt,end-dy:10pt,end-dx:-5pt)]

#only(8)[#place(left,dx:2em,dy:5em,rect(width:225pt,height:70pt,fill:fadedYellow))]

#only(8)[#note([The cleanup of this element is handled by the Operating System.])]

== Your Turn
On BPCompSci: *W109 - C\# Lists* \ \
Example Code:
#show: set text(20pt)
#place(left,dy:3em,dx:-2em,rect(inset:15pt,[
  ```cs 
for(int i = 0; i<numbers.Count -1; i++)
{
     Console.WriteLine(numbers[i]);
}
foreach(int num in numbers)
{
      Console.WriteLine(num);
}```]))
#place(left,dy:-3.5em,dx:19em,rect(inset:15pt,width:350pt,[
  ```cs 
List<int> numbers;
numbers = new List<int>();
            
numbers.Add(6);
numbers.Add(-3);
numbers.Add(4);

numbers.Remove(-3);

Console.WriteLine(numbers.Count);

Console.WriteLine(numbers[0] + 
              " " + numbers[1]);

numbers = new List<int>();

Console.WriteLine(numbers.Count);
```]))