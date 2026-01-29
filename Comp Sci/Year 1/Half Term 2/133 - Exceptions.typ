#import "@preview/touying:0.5.5": *
#import "../../../Templates/template.typ": *
// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)

== Starter
#mwb
Find the *possible* errors in the following code. \ 
What type of errors are they? \
#place(dy:20pt,dx:-1em,text(22pt)[```cs static char gradeCalculator(string scorePercnetage) {      
  if (scorePercentage>=80) {
    return 'A';
  }
  else if (scorePercentage>=70) {
    return 'B';
  }
  else if (scorePercentage>=60) {
    return 'C';
  }
  else if (scorePercentage>=50) {
    return 'D';
  }
  else if (scorePercentage>=0) {
    return "U";
  }         
}```])

#place(dx:12em,dy:2em,rect(width:14em,text(20pt)[```cs static void Main(string[] args) {
    int score;
    char result;
    Console.Write("What’s your percentage: );
    score = Console.ReadLine();
    Console.Write("Your grade was ");
    result = GradeCalculator(score)
    Console.WriteLine(result);
    Console.ReadKey()
                    
}```]))

= Exceptions
#note([Key words: `Syntax errors; Logic errors; Runtime errors; Exception; Throw; Try-Catch; Finally; Handling;`])

== Exceptions
#notes
*Exception* is another name for a *Runtime Error*. \ \
They are *thrown* when something problematic occurs. \ \
It's only *unhandled* exceptions that cause our programs to crash. \ \
If something is thrown, what should you do?

== Catching Exceptions
#notes
*Catching* an exception is to let the running program recognise what has occurred, and react appropriately. \ \
*"Why might we want to catch exceptions?"*

== Catching Exceptions
#notes
In C\#, we catch exceptions with a *`try-catch`*
#text(24pt)[```cs
try
{
    //Your code which might throw 
    // a runtime error
}
catch (Exception e)
{
    // Your code for dealing with
    //the runtime error
}```]

== Let's *try* again...
#text(20pt)[```cs
int score;
bool success = false;
do
{
    success = true;
    try
    {
       Console.Write("What's your score: ");
       score = int.Parse(Console.ReadLine());
       Console.WriteLine("Your grade was “ + gradeCalculator(score));
    }
    catch (Exception e)
    {
       Console.WriteLine("Invalid input. You must enter a number.");
       success = false;
    }
} while (success==false);
```]
#pause
#place(dy:-13em,dx:5em,rect(fill:black,text(white)[`What percentage score did you receive? 
Fifty
Invalid input. You must enter a number.
What percentage score did you receive? 
50
Your grade was D`
]))


== More improvements
#only(1)[#text(20pt)[```cs static string gradeCalculator(int scorePercentage)
{
    if (scorePercentage >= 80) {
        return ‘A’;
    }
    else if (scorePercentage >= 70) {
        return ‘B’;
    }
    else if (scorePercentage >= 60) {
        return ‘C’;
    }
    else if (scorePercentage >= 0) {
        return ‘U’;
    }
}```]
*How can we protect against invalid inputs?*]
#only(2)[
  #text(20pt)[```cs static string gradeCalculator(int scorePercentage)
{
    if (scorePercentage < 0 || scorePercentage > 100) {
      return 'X';
    }
    else if (scorePercentage >= 80) {
        return ‘A’;
    }
    else if (scorePercentage >= 70) {
        return ‘B’;
    }
    else if (scorePercentage >= 60) {
        return ‘C’;
    }
    else if (scorePercentage >= 0) {
        return ‘U’;
    }
}```]
#place(dy:-8em,dx:15em,rect(width:8em)[Not ideal, as the program could keep running.])
]
#only(3)[
  #text(20pt)[```cs static string gradeCalculator(int scorePercentage)
{
    if (scorePercentage < 0 || scorePercentage > 100) {
      throw new ArgumentOutOfRangeException();
    }
    else if (scorePercentage >= 80) {
        return ‘A’;
    }
    else if (scorePercentage >= 70) {
        return ‘B’;
    }
    else if (scorePercentage >= 60) {
        return ‘C’;
    }
    else if (scorePercentage >= 0) {
        return ‘U’;
    }
}```]
#place(dy:-8em,dx:15em,rect(width:8em)[Better, now we can catch and deal with it.])
]
#only(4)[
  #text(20pt)[```cs
int score;
bool success = false;
do
{
    try {
       Console.Write("What's your score: ");
       score = int.Parse(Console.ReadLine());
       Console.WriteLine("Your grade was “ + gradeCalculator(score));
       success = true;
    }
    catch (InvalidCastException e) {
       Console.WriteLine("Invalid input. You must enter a number.");
    }
    catch (ArgumentOutOfRangeException e) {
      Console.WriteLine("Invalid input. Must be between 0 and 100.");
    }
} while (success==false);
```]
#place(dy:-12em,dx:16em,rect(width:9.5em)[Now we can react differently to different exceptions.])
#place(dy:0.6em,)[These different catches run similarly to else-if. They work down the list until the correct one is found.]
]
== Properties of Exceptions
#notes
```cs throw new <Name of exception>()``` \
Throwing an exception exits the current subroutine just like ```cs return```. \
Exceptions all have the following properties:
- *.Message* 
  - The error message
- *.StackTrace* 
  - Gets the line of code which threw the error, 
  - and a list of all functions running at the time

== You Try!
#Comp
On BPCompSci:\
*W116 - C\# Exceptions* \ \
#text(purple)[#bold[Challenge:] ]
- Research 'how to create user-defined \ exceptions in C\#'
- Find a program which you've written in the past that would benefit from exception handling, and add a suitable custom exception. *Test this!*
- Research the ```cs finally``` keyword.