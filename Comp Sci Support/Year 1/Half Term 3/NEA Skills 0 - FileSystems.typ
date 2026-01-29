#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show math.equation: set text(font:"New Computer Modern Math")
#show: set page(fill: fadedYellow)

= NEA Programming Concepts: \ Files
#Comp
#note([Log in and load Visual Studio. \ Make sure you have a pen and paper for notes])

== The NEA
From BPCompSci:
#text(24pt)[
1. A technical solution for a specific purpose
  - You will decide on a problem that could be solved using a large program. You will create that program
#uncover(2)[
2. A technical (written) report containing:
  - The research you did about the problem you’re solving
  - Documented design explaining how your program works (both at a high level, and at a low level for the key modules)
  - A copy of your (self-documenting) code
  - A comprehensive account of how you tested the key parts of your program
  - Your and your end user’s evaluation of how well your program meets initial requirements]]

== BPCompSci
#Comp
Go to BPCompSci.com and find the \ `Deciding on a Project` section.

It's under: `Year 2 > NEA > Deciding on a Project` #pause

What we're interested in today is: \ `Table 1: Example technical skills`

Open that in a new tab.

== Technical Skills
Your program will be marked from 0 to 27 for your programming, and 0 to 15 for your completeness.

Let's focus on the 0 to 27.#pause

Firstly, your program is placed in a 'band':
#enum(numbering:"A:")[
  Complex program, 19 - 27 marks
][
  Reasonably complex program 10 - 18
][
  Basic programming 0 - 9
]#pause

We'll look at how to ensure we're in B-band, and can improve the program later to reach A-band.

It's all about the #bold[techniques] you use.

== Concept: Complicated vs Complex
#notes
When programming the NEA, there will be a lot of things \
that are difficult. Some are complicated, some are complex.

*Complicated*:
- Takes a long time to code.
- A lot of code to write
  - eg: Using WinForms or another GUI

*Complex*:
- Takes a lot of thinking time.
- May result in very little code
  - eg: Using a recursive algorithm to generate a maze
#pause
#note([Complicated isn't worth marks!])

== Filesystems
#notes
SQL tables, text files and binary files are all valid ways to \ store our files.

What do you think should be used in the NEA? #pause

*SQL tables*:
  - #bold[Only] if you are using #bold[multi-table parameterised] queries. #pause
  
*Text files*:
- Generally the easiest option for any kind of file storage. #pause

*Binary files*:
- You're doing something that you don't want the end-user to be able to edit, or you're using custom objects to store information.

== Text files
#notes
Generally, text files are going to be the best option for you storing information for your program.

1. They're easier to use than anything else.
2. They can store anything you can write as text.
3. End users can add items/things to them without special training.

Consider a flashcard program:
- Stores flashcards (Q & As)
- Stores a score/percentage
- Can store multiple different topics.
- Can make quizes out of hand-selected flashcards.

== Complexity
When dealing with a system, it's unlikely to be your file storage that makes the system complex.

Let's say we make the flashcard program.
- Users can submit files into a folder to store their flashcards
- Users can see random flashcards

How do we make it more complex? #pause
- Flashcards are marked, rather than user-scored. #pause
- Flashcards users score badly on are shown more often. #pause
- Different practice types, eg: completely random vs learning. #pause
- Create/save sets of flashcards for later practice #pause
- Power-ups??

== Practicing it together
#Comp
Let's make that flashcard system from scratch!

It will:
- Read a text file with lines starting with 'Q:' and 'A:'
- Display a random Q to the screen
- When the user presses, reveal the answer.
- If they press a number from 1 to 5, move onto the next question.
- Otherwise, go back to the question side of the card.

For now, we won't deal with multiple-choice or tracking scores etc. That's for you to expand!