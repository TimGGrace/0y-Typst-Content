#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))



#QuickQuestions(
  firstSet:(
    ([Write down the Sine Rule],[$sin(A)/a = sin(B)/b = sin(C)/c$]),
    ([Factorise $x^2+4x$],[$x(x+4)$]),
    ([Expand $-3x(2x-7)$],[$-6x^2+21x$]),
    ([Expand $(3x-1)(2x+5)$],[$6x^2+13x-5$]),
    ),
  secondSet:(
    ([Simplify $sqrt(12)$],[$2sqrt(3)$]),
    ([Solve $frac(5x+4,x)=1$],[$x=-1$]),
    ([Solve $frac(x,x+1)=1/3$],[$x=-1/2$]),
    ([Show that $mat(5;-6)$ and $mat(-15;18)$ are parallel],[$-3 mat(5;-6) = mat(-15;18) therefore "parallel"$]),
    ),
)

= Induction
#note[Key information and maths!]

== Welcome to A Level Maths!
#grid(columns:(1fr,1fr),
align(center)[
  #image("img/jkb_profile.png",height:50%)
  Jack Brown\ Subject Leader for\ A-Level Maths
],
align(center)[
  #image("img/mwa_profile.png",height:50%)
  Matt Arnmor\ Director of\ Maths and Computing
]
)

== Equiment - Be prepared!
#grid(columns:(0.2fr,0.8fr),row-gutter: 20pt,
image("../../../Templates/yellow-book.png",width:70%),
[*Yellow Book*: #text(20pt)[(Supplied by the college)]\
This is where all of your important notes/examples will go.],
image("../../../Templates/note-paper.svg",width:70%),
[*Paper*: #text(20pt)[(Not supplied by the college)]\
This is where you will write down all of your textbook exercises, workings etc. You need to bring paper with you to every lesson.],
)

== Our calculator recommendation:
#place(dy:1em,
  image("img/numworks.png")
)
#place(dy:1em,dx:8em,[
  #text(red)[#bold[£86 from the college shop.]]

  There is a free app with full calculator functionality\ you can download onto your phone, AND a free to use\ browser-based simulator. (Try before you buy!)
  
  The graphing and statistical functions\ are *incredibly* useful.
])
== Alternative calculator
#place(dy:1em,
  image("img/casio.png")
)
#place(dy:1em,dx:8em,[
  #text(red)[#bold[NOTE: Not the GCSE calculator]]

  The alternative calculator is the Casio *fx-991CW*

  Other models will not have the functionality you need.

  The college shop sells these too!
])

== Textbook
#place(dy:1em,
  image("img/textbook.png")
)
#place(dy:1em,dx:12em,[
  It costs £15 from the college shop and will\ cover the whole two years of study!

  - Finish off exercises you start in class.
  - There are also copies in the library.
])
== bpmaths.com
#Comp
bpmaths.com is a Google Site with all of the resources you\ need this year, including all of your Key Assignments\ (weekly homework), past papers, and a host of other resources.
#place(dy:2em,
grid(columns:2, column-gutter: 20pt,
  image("img/bpmaths_logo.png", width:100%),
  [
    You will need your college account to access it.

    #underline[Let's take a look!]
]))

== Google Classroom
#GClass
Every week you will complete a Key Assignment and submit it via Google Classroom.

#underline[Let's take a look!]

You will need your college account to access it.

== Key Assignment
#place(dy:1em,
  image("img/Assignment 101.png")
)
#only(1)[#place(dy:1em,dx:10em,[
  Every week you will be set a Key Assignment.

  #bold[How should I complete my homework?]
  - Complete your weekly homework in one of\ three ways. Write down your solutions showing\ all your workings on:
    - lined or squared paper;
    - or on the Spaced Version\ (you'll need to print this out or use a tablet);
  - Write your working in #bold[black]. Mark your work\ in #bold[#text(red)[red]], and make corrections in a third\ colour (such as #text(blue)[#bold[blue]] or #bold[#text(green.darken(20%))[green]]).
])
]
#only(2)[#place(dy:1em,dx:10em,[
  #bold[What do I need to do?]
  - Complete Q1-Q5 on Day One.
  - Complete the Day Two KA Quiz online\ through Google Classroom.
  - Complete Q6 - 20 across Days\ Three, Four and Five.
  - Questions 21-25 are extension questions\ for students aiming for A\*.
])
]
#only(3)[#place(dy:1em,dx:10em,[
  #bold[How do I submit my homework?]
  - On Google Classroom, you will see two\ assignments appear each week, #bold[both due\ by Wednesday at 8pm], e.g.
    - KA02 Linear Functions
    - KAQ02 QUIZ
])
]
== Let's try uploading some work now...
#GClass
1. Download the Google Classroom app
2. Scan your answers to the starter.
3. Upload to the assignment.
4. Click on the Induction Lesson Quiz and answer the questions.

== Enrolment Work & KA01
#only(1)[#place(center+horizon)[
  #image("img/ka_example.png",height:120%)
]]
#only(2)[
  #GClass
  Your Enrolment Work is the first piece of work to be\ submitted to Google Classroom. It is due\ Wednesday 16th September, 8:00pm.
  
  Use the Google Classroom app (or an alternative)\ to scan your work and upload it.
  
  KA01 GCSE Skills is due for:\
  Wednesday 23rd September, 8:00pm
  
]

== The secrets to be successful at A-Level Maths:
#text(28pt)[#emoji.calendar Be here.\ ]
#text(gray.darken(50%))[(Aim for 100% attendance)]#pause

#text(28pt)[#emoji.pen Do the work.\ ]
#text(gray.darken(50%))[(100% Homework completion)]#pause

#text(28pt)[#emoji.calendar Get unstuck.\ ]
#text(gray.darken(50%))[(Ask questions when you don't understand!)]

== Universities are looking for people who can:
#text(28pt)[#emoji.magnify Tackle unfamiliar problems.\ ]
#text(gray.darken(50%))[(and not just repeat methods)]#pause

#text(28pt)[#emoji.bubble.speech Explain their thinking clearly.\ ]
#text(gray.darken(50%))[(using mathematical language)]#pause

#text(28pt)[#emoji.arm.muscle Persist when things get difficult.\ ]
#text(gray.darken(50%))[(and learn from mistakes)]
