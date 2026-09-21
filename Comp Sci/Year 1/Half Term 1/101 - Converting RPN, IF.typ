#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))

#QuickQuestions(
  firstSet: (
    ([Evaluate $ 5 quad 4 quad * $],[$20$]),
    ([Evaluate $ 9 quad 3 quad \/ quad 2 quad + $],[$5$]),
    ([Evaluate $ 4 quad 5 quad + quad 7 quad 2 quad - quad * $],[$45$]),
  ),
  secondSet: (
    ([Calculate $ 8+4(6^2 div 3 - 2) $],[$48$]),
    ([Using BPCompSci.com, find the third instruction for the weekly Flashcards.],[You should be selecting all of the sets stated in the weekly assignment.]),
  )
)


== The Routine
+ Put your phone in the holder and swap it for a pen; put away any earbuds
+ Get a whiteboard and rubber
+ Find your seat
+ Start logging in to the computer
  - Your username is on the back of your ID card
  - You should know your password
+ Get a pen and paper ready for taking notes
+ Start working on the 5QQs

== Weekly Assignment
Set every *Thursday* morning on Google Classroom\
Due following #bold[Wednesday @ 20:00]. \
Every week you will be expected, as a minimum, to:
- Complete 1 hour of "on-going" revision using flashcards
  - This will not start until week 5
- Answer *theory* questions
- Complete *practical* programming work and submit code & screenshots
- *Self-mark* your answers in a different colour
- *Reflect* and make notes on improvement
#only(2)[
  #place(
    center+horizon,
    image("img/homeworkMarks.png",height:120%)
  )
]
== BPCompSci
Let's take a look to find:
- Lesson Slides
- Programming Worksheets

== #text(red)[Lunchtime workshop - Wednesday]
#only(1)[
  #bold[12:00pm - 12:45pm (drop in for as long as you want in this time)]
  - You're welcome to bring your (cold) lunch and log into a computer. Don't worry if the teacher is a bit late.
  - Starting w/b 22nd Sept.
  - Tristan will be there. 
]
#only(2)[
  #bold[Why come to workshop?]
  - To understand a difficult topic from a recent lesson
  - To help revise a topic (programming or theory) from a while ago
  - To get help with a weekly assignment
  - To get advice about future plans (UCAS, university, apprenticeships, personal statements)
  - To discuss something interesting related to Computer Science
  - For a quiet place to work on a PC at lunchtime
]

= Converting between Infix and Postfix
#note[Keywords: `Infix, postfix, reverse polish notation, operators, operands, converting`]

== Infix
#green-book
To recap:
- This is the 'normal' one (ie BIDMAS)
- *Operands*: $3, 4, 5$
- *Operators*: $+, *, \/$
- The operator is *between* the operands it acts on.

== Discuss
#discuss
#align(center+horizon)[
  #text(40pt)[*"Why might postfix be better than infix for computers?"*]
]

== Converting to postfix
#only(1)[#mwb]
#only("2-")[#green-book]
Can you convert this to postfix?
$ 3 + 4 * 5 $#pause
Since postfix does away with order of precidence of operators, we'll add brackets to 'enforce' the order:
$ (3 + ( 4 * 5 )) $#pause
Then we move each operator to the end of its bracket:
$ (&3 quad ( 4 quad 5 quad*) quad +)\ &3 quad 4 quad 5 quad* quad + $#pause
#place( dy:-5em,dx:16em,
  rect( inset:15pt,radius:20pt,stroke:2pt+orange,fill:orange.lighten(60%),
    [Note: The operands *never* move!]
  )
)

== You try
#notes
#grid(columns:(1fr,1fr), column-gutter: 40pt,
[
Convert the expression into postfix: $ 6-8\/3+4 $
],
only("3-")[
  Convert the expression into postfix:
  $ 4 + (9 \/ 3 + 2) $
],
only("2-")[
  #text(red)[
    $ ((6 - (8 \/ 3)) + 4)\ 
      ((6 quad (8 quad 3 quad \/) quad - quad ) quad 4 quad + )\
      6 quad 8 quad 3 quad \/ quad -  quad 4 quad + 
    $
  ]
],
only("4-")[
  #text(red)[$
    (4 + ((9 \/ 3) + 2))\ 
    (4 quad  ((9 quad 3 quad \/) quad 2 quad +) quad +)\
    4 quad  9 quad 3 quad \/ quad 2 quad + quad +
  $]
])

#only(5)[
  #place( dy:1em,dx:7em,
  rect( inset:15pt,radius:20pt,stroke:2pt+orange,fill:orange.lighten(60%),
    [You can google 'shunting yard algorithm'\ if you're interested seeing how a computer does this!]
  )
)
]

#MWBQ(
  (text(36pt)[Convert $ 8+2*5 $into postfix notation.],
  text(36pt)[$ 8 quad 2 quad 5 quad * quad + $]),

  (text(36pt)[Convert $ 9-(4+2)*2 $into postfix notation.],
  text(36pt)[$ 9 quad 4 quad 2 quad + quad 2 quad * quad - $]),

  (text(36pt)[Convert $ 7-6\/2+5 $into postfix notation.],
  text(36pt)[$ 7 quad 6 quad 2 quad \/ quad - quad 5 quad + $]),
  
)

== Converting from postfix to infix
#green-book
It's a little tricker, but OK so long as we use postfix's\ order of operations.
eg:
$ 3 quad 4 quad + quad 2 quad * $#pause
First, write just the operands, in order.
$ 3 quad  quad 4 quad  quad 2 $#pause
Add the operands in the order they appear in the *postfix*, adding brackets.
#place(center)[$ 
(3  quad + quad 4) quad  quad 2\
((3  quad + quad 4) quad * quad 2)
$]

== You try
#notes
#grid(columns:(1fr,1fr), column-gutter: 40pt,
[
Convert the expression\ into infix: $ 6 quad 2 quad 7 quad \/ quad - $
],
only("3-")[
  Convert the expression\ into infix:
  $ 8 quad 3 quad 5 quad + quad 2 quad \/ quad * $
],
only("2-")[
  #text(red)[\ 
    $ 6 quad  quad 2 quad  quad 7\
      6  quad quad (2 quad \/ quad 7)\
      6 quad - quad (2 quad \/ quad 7)\
      6-2\/7
    $
  ]
],
only("4-")[
  #text(red)[\ $
    8 quad quad  3 quad quad  5 quad quad 2\
    8 quad quad  (3 quad + quad  5) quad quad 2\
    8 quad quad  ((3 quad + quad  5) quad \/ quad 2)\
    8 quad * quad  ((3 quad + quad  5) quad \/ quad 2)\
    8*((3+5)\/2)
  $]
])

#MWBQ(
  (text(36pt)[Convert $ 8 quad 2 quad 3 quad * quad - $ into infix notation.],text(36pt)[$ 8 quad - quad 2 quad * quad 6 $]),

  (text(36pt)[Convert $ 3 quad 5 quad + quad 2 quad \/ $ into infix notation.],text(36pt)[$ (3 quad + quad 5) quad \/ quad 2 $]),

  (text(36pt)[Convert $ 8 quad 5 quad 2 quad + quad 2 quad * quad - $ into infix notation.],text(36pt)[$ 8 quad - quad (5 quad + quad 2) quad * quad 2 $]),
)

== Conversion Practice!
#notes
#grid(columns:(1fr,1fr),column-gutter: 30pt,
[
  Convert to postfix:
  + $ 4 quad + quad 2 quad * quad 9$

  + $(8 quad - quad 5) quad \/ quad 3$
  + $4 quad + quad 7 quad - quad 2 quad * quad 3$
  + #text(20pt)[$(9 quad - quad 2) quad \/ quad ((3 quad + quad 9) quad \/ quad 4)$]
],
[
  #set enum(start:5)
  Convert to infix:
  + $4 quad 9 quad 5 quad + quad *$

  + $3 quad 6 quad 2 quad 1 quad + quad * quad -$
  + $6 quad 8 quad + quad 2 quad \/ quad 3 quad +$
  + #text(16pt)[$8 quad 3 quad 6 quad + quad 3 quad \/ quad + quad 9 quad 4 quad - quad * quad 5 quad -$]
])

= if .. else
#only(2)[
  #place(center+horizon,
    image(
      "img/if_meme.png"
    )
  )
]

== If .. else
An `if` statement is a form of *selection* statement.

It allows us to chose whether or not to run the next block of code.

`else` allows us to run a different piece of code, *if* the first block doesn't run.

They require a *condition*, which evaluates to either True or False.

== *Condition* expressions:
#grid(columns:(1fr,8fr), column-gutter: 10pt,
text(76pt)[<],[#v(0.5em)Less than],
text(76pt)[<=],[#v(0.5em)Less than or equal to],
text(76pt)[>],[#v(0.5em)More than],
text(76pt)[>=],[#v(0.5em)More than or equal to],
text(76pt)[==],[#v(0.5em)Strictly equal],
text(76pt)[!=],[#v(0.5em)Not equal],
)

== If A = 1, B = -2, C = 3, D = 4, E = 'S' and F = 'J',\ state whether the following are true or false
#mwb
+ A==B #only(2)[#h(2em)#text(red)[FALSE]]
+ A>B #only(2)[#h(2em)#text(red)[TRUE]]

+ (A < C) and (B>D) #only(2)[#h(2em)#text(red)[FALSE]]
+ (A < C) and (B < D)#only(2)[#h(2em)#text(red)[TRUE]]
+ (A < B) or (C < D)#only(2)[#h(2em)#text(red)[TRUE]]
+ E>F#only(2)[#h(2em)#text(red)[TRUE]]
+ ((A+C)>(B-D)) and ((B+C)<(D-A))#only(2)[#h(2em)#text(red)[TRUE]]


== Let's annotate:
```cs
static void Main(string[] args)
{
  Console.Write("Enter name: ");
  string name = Console.ReadLine();

  if (name != "Kyle") {
    Console.WriteLine("Welcome " + name);
  }
  else {
    Console.WriteLine("You're the best, " + name)
  }
}
```

== Let's annotate another:
```cs
static void Main(string[] args)
{
  Console.Write("Enter number: ");
  int num = int.Parse(Console.ReadLine());

  if (num > 0) {
    Console.WriteLine(num + " is positive");
  }
  else {
    Console.WriteLine(num + " is negative");
  }
}
```
#only(2)[
 #place( dy:-15em,dx:16em,
  rect( inset:15pt,radius:20pt,stroke:2pt+orange,fill:orange.lighten(60%),
    [What has not been considered?\
    How do we fix it?]
  )
 ) 
]

== Discuss: What's new? What does it do?
#discuss
```cs
static void Main(string[] args)
{
  Console.Write("Enter number between 1 and 10: ");
  int num = int.Parse(Console.ReadLine());

  if (num > 0 && num < 11) {
    Console.WriteLine(num + " is within the range");
  }
  else if (num <= 0 || num >= 11) {
    Console.WriteLine(num + " is outside range");
  }
}
```

#Worksheet(
  [On BPCompSci:\ *W101 - If*
  
  Remember to make a copy of the worksheet.
  
  #place( dy:1em,dx:1em,
  rect( inset:15pt,radius:20pt,stroke:2pt+orange,fill:orange.lighten(60%),
    text(30pt)[#bold[Study skills tip]\
    We deliberately make the worksheets too long to finish in class. Use the remaining questions to improve your skills between lessons 
    ]
  )
 ) 
  ]
)