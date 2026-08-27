#import "@preview/touying:0.5.5": *
#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)
= Bebras
== Bebras 2025 Challenge
#list(
  [You have 45 minutes to complete it],
  [You don’t have to complete all the questions. #bold[Just try your best!]],
[This is an international competition running in approximately #bold[30 countries].],
[Top achievers will obtain a certificate of *Distinction*. There is a certificate for “*Best In School*” in each age category],
[The top students will be invited to the UK Bebras Coding Challenge]
)

== Scoring
#text(24pt)[You start with 38 points. The maximum score is 200. \
The tasks are marked automatically, but you won’t get your ﬁnal result for about 2 weeks. \
There will be 3 categories of tasks, *A*, *B* and *C*, each getting progressively harder.
The scoring is as follows (penalties for incorrect answers are to discourage random guessing):]
#grid(columns:(4fr,1fr),
table( columns:4, inset:10pt,
[Difficulty],[Correct],[Incorrect],[Unanswered],
[*A*],$+6$,$+0$,$+0$,
[*B*],$+9$,text(red)[$-2$],$+0$,
[*C*],$+12$,text(red)[$-4$],$+0$
))

#let RuleList = [
== Rules
#text(22pt)[
#list([No talking or communicating with each other during the competition.],
[You may ﬁnd it helpful to do some working out on a piece of paper/whiteboard, but please don’t take the paper out of the classroom.],
[You don’t need to answer all the questions.],
[You can answer the questions in any order (use the left hand menu to navigate)],
[Some questions need you to press Save to save your answer; others save automatically. ],[You can tell if you have answered a question as it will have a ﬂower next to it in the left hand menu.],
[You can End the competition at any time - but don’t worry if you run out of time and didn’t press End - your progress will be saved.])
]]

#RuleList

== Do NOT CLICK START
#enum[❏	Go to the website: #link("https://bebras.uk/")[https://bebras.uk/]][❏	Click Login (top right) and enter your details][❏	You will see a list of challenges but only one will be active for your age group. Click that link][*DO NOT CLICK START*][Stand behind your chair so I know you're ready]


#RuleList

= Text Files
== Text Files
#mwb
So far we have only stored data in memory \ \
Discuss in pairs: Write down at least 3 advantages of using *files* to store program data over variables alone

So we use:
#list[Text files][CSV files][Binary files][Databases]

== Random Access
For historical reasons (Hard Disks), systems support *sequential access* to files. \ \
#pause
However, sometimes we want *random access*. \ \
#pause
Note: This doesn't mean accessing addresses in a random order, but rather one that is *not sequential*

== Coding Text Files
#notes
Let's annotate:
```cs 
``` #pin(1)```cs using System.IO; ``` #pin(2)```cs
namespace Code {
  public class Program {
    static void Main(string[] args) {
      ...
    }
  }
}
```
#only("2-")[#pinit-highlight(1,2,extended-width:-15pt,dx:-5pt)]
#only(2)[
  #place(dy:-10em,dx:8em,rect(inset:10pt,radius:5pt,stroke:0pt,fill:red.transparentize(85%),[We're going outside of `namespace`!]))
]
#only(3)[
  #place(dy:-10em,dx:8em,rect(inset:10pt,radius:5pt,stroke:0pt,fill:red.transparentize(85%),[`System.IO` is a #bold[standard library] for \ inputs and outputs to files.]))
]

== Reading text Files
#notes
#text(26pt)[```cs
using System.IO; 
namespace Code {
  public class Program {
    const string FileName = "input.txt";
    
    static void Main(string[] args) {
      //Load it as one big long string:
      string contents = File.ReadAllText(FileName);
      //OR, load it as an array of lines:
      string[] lines = File.ReadAllLines(FileName);
    }
  }
} ```]

== Writing text Files
#notes
#text(26pt)[```cs
using System.IO; 
namespace Code {
  public class Program {
    const string FileName = "input.txt";
    
    static void Main(string[] args) {
      //Write a single thing into the file:
      string toStore = "Blobbity Blibily";
      File.WriteAllText(FileName, toStore);
    }
  }
} ```]
== Writing text Files 2
#notes
#text(26pt)[```cs
using System.IO; 
namespace Code {
  public class Program {
    const string FileName = "input.txt";
    
    static void Main(string[] args) {
      //Write a set of lines into the file:
      string[] toStore = {"Blob","Blib","Blubber"};
      File.WriteAllLines(FileName, toStore);
    }
  }
} ```]
#note([We can use a list, so long as we use the `.ToArray()` method.])

== Practice!
#Comp
On BPCompSci: \
*W113a - C\# Reading and Writing to Text Files*