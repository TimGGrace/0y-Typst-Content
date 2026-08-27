#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

#weeklyReview(title:"R111 - SQL, Boolean Algebra")

= Warships
#note[CAP 1 Skeleton Program]

== Paper 1 - Programming Paper
For the *Paper 1 exam* (practical exam) you will be given a large amount of pre-released code to study before hand (a.k.a. _skeleton program_)

During the exam you will be asked questions on this code and asked to make changes to it

Changing other people’s code is a difficult task and will take practice

== CAP 1
Week beginning $9^("th")$ February

Topic list:
- Part 1: Databases Theory
- Part 2: Changes and questions based on _Warships_ skeleton program

== Battleships
The Warships program is roughly based on the Battleships game.

Discuss with the people near you, what do you know about the game? What are the rules?

== Warships
#GClass
All files are on *Classroom*:
1. *“SkeletonProgram”* needs to be copied into a new C\# project
2. Copy of *“Training.txt”* text file put in `bin\debug` folder.
3. Open *“Preliminary material”*
4. Try the code and make sure it runs.  When it runs try it in training mode to make sure the text file is working

== Warships
#notes
In pairs come up with:

#text(36pt)[#emoji.face] A list of features that the code enables

#text(36pt)[#emoji.face.tear] A list of what could need improving in the game

#text(36pt)[#emoji.face.inv] #text(purple)[#bold[EXT: ]]A list of functions and properties that have been programmed strangely.

== Structure Diagrams
#notes
#grid(columns:(1fr,1fr),text(18pt)[```cs 
static void Times4(ref int num)
{
    int y = 4;
    num = Multiple(num, y);
}

static int Multiple(int num1, int num2)
{
    return num1 * num2;
}

static void AddOne(ref int num)
{
    num++;
}```],
[
  #text(18pt)[
    ```cs static void Main(string[] args)
{
    int x = 5;
    AddOne(ref x);
    Times4(ref x);
    Console.WriteLine(x);
    Console.ReadKey();
}
```
  ]
])

== Warships Structure Diagram
#mwb
In groups of 3 you are going to create a diagram of how all the code fits together.

You need to:
- List each subroutine
- Arrange them on the whiteboard so that you can draw arrows showing which subroutines are called from where
- Annotate the arrows with parameters as appropriate
*HINT*: Do not glue anything down until you are sure it is the in the right place!

== Investigation
#notes
#text(36pt)[`SetUpBoard`]

#only(2)[1. What does ```cs ref char[,] Board``` mean?

2. Why is it not needed?

3. What does the function do?

4. Why do we not see the dashes when the board is displayed?]

== Changes to the Code
#Comp
The best way to get to know the code is to start making \ changes to it

Let's look at adding summary notes to functions. #pause

As you make changes, add #text(green.darken(50%))[#bold[comments]] to remind yourself what you have added… *and why*

List of changes to make today are on BPCompSci: \ *W122 – C\# Warship changes 1*

