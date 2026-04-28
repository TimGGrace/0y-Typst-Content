#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)



= Recursion
#note[Keywords: `Stack; recursive; factorial; base case; general case;`]
#only(1)[
  #place(dy:-10em, dx:18.5em)[
    #image("img/Rec meme 1.png", width:340pt)
  ]
  #place(dy:-10em, dx:-1.5em)[
    #image("img/Rec meme 2.png", width:340pt)
  ]
]
#only(2)[]

== Factorial
#notes
$
  5! &= 5 times 4 times 3 times 2 times 1 = 120 \
  6! &= 6 times 5 times 4 times 3 times 2 times 1 = 720 \
  &"OR" \
  6! &= 6 times 5!
$
#pause
General Case:
$ n! &= n times (n-1)! \
  0! &= 1
$
== Example

```cs 
static int factorial(int n) {
  if (n > 1) return n * factorial(n - 1); \

  return 1;
}

static void Main(string args[]) {
  Console.WriteLine(factorial(4));
}
```
#pause
#mwb
With me, let's demonstrate the call stack.

#MWBQ(title:"What does this code do?",
([```cs static void fun(int n) {
    if (n != 0) {
        fun(n/2);
        Console.Write(n%2);
    }
  }
  ```],
[Converts the integer n into binary]),
([```cs static void fun2(int x) {
    if (x > 0) {
      fun2(x - 1);
      Console.Write(x);
      fun2(x - 1);
    }
  }
static void Main(string[] args) {
  fun2(4);
}
```],
place(dy:-1em,dx:5em)[Outputs `121312141213121`]),
([`Procedure PrintSequence(n)
  n = n - 1
  If n > 1 then
    PrintSequence(n)
  End if
  Output(n)
End Procedure
` #bold[When `PrintSequence(5)` is called.]],
[
  Outputs: 1234
]),
([```cs static void Print(string word) {
  Console.WriteLine(word);
  if (word.Length > 1) {
    word = word.Substring(0, word.Length - 1);
    Print(word);
  }
  Console.WriteLine(word);
}
```
#bold[When ```cs Print("LONDON")``` is called]],
place(dy:-10em,dx:23em)[#image("img/Rec Londo Solution.png")]),)

== But whyyyyyyyyy though?
This seems to be needlessly hard.

Why would you have functions caling themselves? Isn't that just hard to think about? #pause

#discuss
Discuss, then write down at least one advantage and one disadvantage of using recursion in your programs.

== Pros/Cons of Recursion
#grid(columns:(1fr,1fr),[
- It’s often easier to create solutions to tricky problems using recursive solutions
- Sometimes it’s the only feasible way to solve a problem
- It can lead to elegant solutions that use far fewer lines of code
],uncover(2)[
- You can end up with odd bugs
- It can be harder to debug
- It usually leads to programs that run slower
- You can use up more memory (since each recursive call adds another stack frame to the call stack)
])

== Practice Time!
#Comp
#text(36pt)[On BPCompSci: *W133 - C\# Recursion*

#bold[Aim to complete questions 1 and 2 as a minimum today.]]