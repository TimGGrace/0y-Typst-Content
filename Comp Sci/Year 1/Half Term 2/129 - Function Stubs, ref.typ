#import "@preview/touying:0.5.5": *
#import "../../../Templates/template.typ": *
// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)

== Starter: What does this code output? \ Explain step-by-step
#mwb
#place(dy:1em,text(22pt)[```cs
List<string> myNames, yourNames;
myNames = new List<string>();
yourNames = new List<string>();

myNames.Add("Matt");
myNames.Add("Chris");

yourNames = myNames;

myNames.Remove("Matt");
myNames.Add("Isabel");

Console.WriteLine(myNames[0] + ", " + myNames[1]);
Console.WriteLine(yourNames[0] + ", " + yourNames[1]);

Console.ReadKey();
```])
#pause
#place(dy:5em,dx:10em,rect(fill:black,inset:10pt,text(white)[`Chris, Isabel` \ `Chris, Isabel`]))

= Function Stubs
#note([Keywords: `Function; stub; parameter; return value; ref;`])

== Function Stubs
#notes
Function Stubs are a template for a function. \ \
Great when programming for identifying features that you're going to have, but don't have yet. \ \
They contain:
#text(24pt)[- The static keyword (if in `Program`)
#uncover("2-")[- The return type]
#uncover("3-")[- An identifier]
#uncover("4-")[- The parameter list]
#uncover("5-")[- (optional) A basic return value]]

== Function Stubs
#notes
Function Stubs are a template for a function. \ \
Great when programming for identifying features that you're going to have, but don't have yet. \ \
#text(red)[
  #bold[They do not contain the final implementation of the function.] \ \ 
  #pause
  They do have the correct #bold[interface]
]

== Write the function stubs only.
#mwb
#text(22pt)[
  1. Create a function called `Subtract`. It should take as parameter an integer called num1. It should take as second parameter an integer called num2. It should return an integer.
  2. Create a function called `SortList`. It should take as parameter a list of integers to sort. It should return a new list containing the numbers in ascending order.
  3. Create a function called `DecToHex`. It should take as input a whole number (possibly negative) and convert it into hexadecimal. The result should be returned in the form “`0x5A81FF`”.
  4. Create a function called `RemoveStudent`. It should remove the student’s name from the specified *Lesson*’s student list. It should return True if a student was removed, and False otherwise]
== Identify the blanks
#mwb
#uncover("1-7")[#text(22pt)[```cs
struct Lesson
{
    public string room, teacher;
    public List<string> students;
}
static bool removeStudent(string name, Lesson less)
{
    if (less.students.Contains(name))
    {
        less.students.Remove(name);
        return true;
    }
    else
    {
        return false;
    }
}
```]]
#align(center+horizon)[
  #only(1)[
    #place(dy:-15em,dx:2.5em,rect(fill:yellow.lighten(50%),stroke:1pt,width: 150pt,height:30pt,`    1`))
  ]
  #only("1-2")[
    #place(dy:-8.8em,dx:4.9em,rect(fill:yellow.lighten(50%),stroke:1pt,width: 85pt,height:30pt,`  2`))
  ]
  #only("1-3")[
    #place(dy:-8.8em,dx:11.8em,rect(fill:yellow.lighten(50%),stroke:1pt,width: 48pt,height:30pt,` 3`))
  ]
  #only("1-4")[
    #place(dy:-7.1em,dx:3em,rect(fill:yellow.lighten(50%),stroke:1pt,width: 138pt,height:30pt,`    4`))
  ]
  #only("1-5")[
    #place(dy:-7.1em,dx:11em,rect(fill:yellow.lighten(50%),stroke:1pt,width: 41pt,height:30pt,` 5`))
  ]
  #only("1-6")[
    #place(dy:-6em,dx:5.5em,rect(fill:yellow.lighten(50%),stroke:1pt,width: 47pt,height:30pt,` 6`))
  ]
  #only(7)[]
]

= Passing Parameters
#note([Keywords: `Subroutine; parameter; passing parameters; call; calling code; by value; by reference; ref;`])

== What does this code output?
#mwb
```cs
static void Main(string[] args)
{
    int x = 4;
    doubler(x);
    Console.WriteLine(x);
    Console.ReadKey();
}
static void doubler(int x)
{
    x = x * 2;
    Console.WriteLine(x);
}
```
#only(2)[
  #place(dx:18em,dy:-8em,rect(fill:black, width:100pt, inset:10pt,text(48pt,white)[`8` \ `4`]))
]

== What does this code output?
#mwb
```cs
static void Main(string[] args)
{
    int x = 4;
    doubler(ref x);
    Console.WriteLine(x);
    Console.ReadKey();
}
static void doubler(ref int x)
{
    x = x * 2;
    Console.WriteLine(x);
}
```
#only(2)[
  #place(dx:18em,dy:-8em,rect(fill:black, width:100pt, inset:10pt,text(48pt,white)[`8` \ `8`]))
]

== Wait, What?
#notes
The difference:
#grid(columns:(1fr,1fr),
[Original: \
Call: \ `doubler(x);` \ \
Method: \ `doubler(int x)`],
[Changed: \
Call: \ `doubler(ref x);` \ \
Method: \ `doubler(ref int x)`])
#pause
So what is "`ref`"?

== The "`ref`" keyword
Whenever we pass a *primitive data type* into a function, we pass what's in the stack. \ \
Whenever we pass a *reference*, we pass a pointer to that memory location. \ \
Let's try the original again, but with some labels.

== What does this code output?
#mwb
```cs
static void Main(string[] args)
{
    int x = 4;
    doubler(x);
    Console.WriteLine(x);
    Console.ReadKey();
}
static void doubler(int x)
{
    x = x * 2;
    Console.WriteLine(x);
}
```
#only(2)[
  #place(dx:18em,dy:-8em,rect(fill:black, width:100pt, inset:10pt,text(48pt,white)[`8` \ `4`]))
]

== What does this code output?
#mwb
```cs
static void Main(string[] args)
{
    int x = 4;
    doubler(ref x);
    Console.WriteLine(x);
    Console.ReadKey();
}
static void doubler(ref int x)
{
    x = x * 2;
    Console.WriteLine(x);
}
```
#only(2)[
  #place(dx:18em,dy:-8em,rect(fill:black, width:100pt, inset:10pt,text(48pt,white)[`8` \ `8`]))
]

== You Try:
#mwb
```cs
static void Add1Val(int input)
{
    input += 1;
}
static void Main(string[] args)
{
    int num = 5;
    Console.WriteLine(num);
    Add1Val(num);
    Console.WriteLine(num);

    Console.ReadKey();
}

```
#only(2)[
  #place(dx:18em,dy:-8em,rect(fill:black, width:100pt, inset:10pt,text(48pt,white)[`5` \ `5`]))
]
== You Try:
#mwb
```cs
static void Add1Ref(ref int input)
{
    input += 1;
}
static void Main(string[] args)
{
    int num = 5;
    Console.WriteLine(num);
    Add1Ref(ref num);
    Console.WriteLine(num);

    Console.ReadKey();
}
```
#only(2)[
  #place(dx:18em,dy:-8em,rect(fill:black, width:100pt, inset:10pt,text(48pt,white)[`5` \ `6`]))
]
== You Try:
#mwb
#text(18pt)[```cs
static void ChangeVal(int[] input)
{
   input[0] += 1;
}
static void ChangeRef(ref int[] input)
{
   input[0] += 1;
}
static void Main(string[] args)
{
   int[] nums = new int[1];
   nums[0] = 5;

   Console.WriteLine(nums[0]);
   ChangeVal(nums);
   Console.WriteLine(nums[0]);
   ChangeRef(ref nums);
   Console.WriteLine(nums[0]);

   Console.ReadKey();
}
```]
#only(2)[
  #place(dx:18em,dy:-8em,rect(fill:black, width:100pt, inset:10pt,text(48pt,white)[`5` \ `6` \ `7`]))
]

== Practice!
#Comp
#place(dy:-2em,dx:6em,rect(stroke:2pt+red,radius:15pt,inset:10pt,text(22pt)[1. Complete this code:
]))

#text(22pt)[```cs static void Add(ref int answer, int num1, int num2)
{
    // To do: complete procedure body
}

static void Main(string[] args)
{
    int result = 0;
    //to do: call Add procedure
    Console.WriteLine(result);
    Console.ReadKey();
}```]
#place(dy:1em,dx:1em,rect(stroke:2pt+red,radius:15pt,inset:10pt,text(22pt)[2. Create a function called `Divide`, similar to `Add`, but which also returns a *Boolean* value indicating whether the division was possible or not (divide by zero)
]))
#place(dy:-5em,dx:13em,rect(stroke:2pt+purple,radius:15pt,inset:10pt,text(22pt)[*Extension*: Make a procedure \ called `Swapper` which swaps the \ values of two variables passed \ to it by reference.

]))
