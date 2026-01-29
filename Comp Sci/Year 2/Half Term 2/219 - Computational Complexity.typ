
#import "../../../Templates/template.typ": *
#import "@preview/fletcher:0.5.8" : *
// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter
#notes
For each of the following functions, \ write down the *Big-O notation*:
#grid(columns:2, column-gutter: 40pt)[1. $a(x) = x + 10$
2. $b(t) = 4t^3 + 6t^2$
3. $c(t) = 2^pi +1$ 
4. $d(n) = 5 log_2 n + 0.6n$
5. $e(n) = 2^n + n^2$
6. $f(n,t) = 5n t + log_2 n$][
  #uncover(2)[#text(red)[
    1. $O(x)$
    2. $O(t^3)$
    3. $O(1)$
    4. $O(n)$
    5. $O(2^n)$
    6. $O(n t)$
  ]]
]

== Starter 2
#notes
For each of the following functions, \ write down the *Big-O notation*:
#grid(columns:2, column-gutter: 40pt)[
  1. $a(x) = 4x + 1$
  2. $b(t) = 10t^2 + t^4$
  3. $c(t) = log_2 t + t$ 
  4. $d(n) = 7n^7 + 2^n$
  5. $e(n) = 2n^2 + 3n + 4n log_2 n$
  6. $f(n,t) = 5n t + log_2 n + t^4$
][
  #uncover(2)[#text(red)[
    1. $O(x)$
    2. $O(t^4)$
    3. $O(t)$
    4. $O(2^n)$
    5. $O(n^2)$
    6. $O(t^4)$
  ]]
]

== Common Algorithms Recap
#mwb
#only(1)[
#table(columns:3, inset:5pt,
table.header([Algorithm],[Size of Problem($n$)],[Time Comp],
[Linear Search],align(center)[#text(red)[`(1)`]],[$O(n)$],
[Binary Search],[Length of search list],align(center)[#text(red)[`(2)`]],
[Binary Tree Search],align(center)[#text(red)[`(3)`]],[$O(log n)$],
[Bubble Sort],[Length of list to sort],align(center)[#text(red)[`(4)`]],
[Merge Sort],[Length of list to sort],align(center)[#text(red)[`(5)`]]
))]
#only(2)[
#table(columns:3, inset:5pt,
table.header([Algorithm],[Size of Problem($n$)],[Time Comp],
[Linear Search],align(center)[#text(red)[Length of search list]],[$O(n)$],
[Binary Search],[Length of search list],align(center)[#text(red)[$O(log n)$]],
[Binary Tree Search],align(center)[#text(red)[Length of search list]],[$O(log n)$],
[Bubble Sort],[Length of list to sort],align(center)[#text(red)[$O(n^2)$]],
[Merge Sort],[Length of list to sort],align(center)[#text(red)[$O(n log n)$]]
))]

== Units for measuring time
We use Big O notation when it's not sensible to know a unit of time. Too many factors are involved. \
#uncover(2)[$quad quad$What can you think of? \ ]
#uncover("3")[Could count how many times each operation in an algorithm is run, but that'll take ages.]

== Order of Growth
#notes
It is sufficient to identify the operation contributing most to the total running time and compute the number of times this operation is carried out. \ \
This is sometimes called the *basic operation*. \ \
For searching and sorting algorithms, we often count the *number of comparisons* made. In this case, the basic operation is a comparison between values.

== Order of Growth
#notes
Estimated running time for a *linear* algorithm can be expressed as:
$ "Time taken" approx "Basic Op. Time" times "Op. Count" $
What would this look like for a *quadratic* algorithm?
#pause
$ "Time taken" approx "Basic Op. Time" times ("Op. Count")^2 $
How could we find the *basic op. time* for \ a *cubic* algorithm?
#pause
$ "Basic Op. Time" approx "Time taken" div ("Op. Count")^3 $

== Example
#notes
A large data-crunching algorithm has *quadratic* time complexity, and takes $43$ seconds to process $100$ pieces of data. \ \
How long will the algorithm take to process $1000$ pieces of data? \ \
#only(2)[#text(red)[
  $ "Basic Op. Time" = 43 div 100^2 = 0.0043"s" \ 
  "Total Time" = 0.0043 times 1000^2 = 4300"s" $
]]
#only(3)[#text(red)[
  #bold[Alternatively:] \
  Number of elements has gone up by a factor of $10$, \
  Time taken will go up by a factor of $10^2$, \
  $"Total Time" = 43 times 10^2 = 4300"s"$
]]

== You Try
#notes
1. A searching algorithm with time complexity $O(n)$ searches a list of $1000$ items in 5 seconds. How long will it take to search a list of $500$ items?
2. A *quadratic* complexity algorithm takes $64$ minutes to process 6400 items. How long will it take to process 12800 items?
3. An algorithm takes 500 seconds to process a dataset of 50 items. It then takes 4000 seconds for another dataset of 100 items. State the time complexity of the algorithm.

== Determining the Time Complexity
#notes
To determine the time complexity of an algorithm, we'll need to look for the number of times the *primary operation* is performed, relating to the size of the input. \ \
Look for:
- Loops
- Calculations
- Comparisons

== What's the time complexity?
#notes
```cs
static long upperLimit, total;
static void Main(string[] args) {
  Console.WriteLine("Enter upper limit");
  upperLimit = long.Parse(Console.ReadLine());
  total = 0;
  for (int i = 0; i < upperLimit; i++) {
    total += i;
  }
  Console.WriteLine(total);
  Console.ReadKey();
}
```
#uncover(2)[#text(red)[#bold[Linear Time Complexity, $O(n)$]]]

== What's the time complexity?
#notes
```cs
static long upperLimit, total;
static void Main(string[] args) {
  Console.WriteLine("Enter upper limit");
  upperLimit = long.Parse(Console.ReadLine());
  total = 0;
  total = (upperLimit * (upperLimit + 1)) / 2;
  Console.WriteLine(total);
  Console.ReadKey();
}
```
#uncover(2)[#text(red)[#bold[Constant Time Complexity $O(1)$]]]

== You Try
#mwb
```cs static void findFactors(int n) {
  bool noFactors = true;
  Console.WriteLine($"The factors of {n} are: ");
  for (int i = 2; i < n; i++) {
    if (n % i == 0) {
      Console.WriteLine(i);
      noFactors = false;
    }
  }
  if (noFactors) Console.WriteLine("No factors");
}```

== What if that function was called like so?
What if this is called like so:
```cs n = Console.ReadLine()
For i = 2 to 2000
  findfactors(i)
Next```

== More time for your NEA's!
#Comp
- Testing table should be completed, \ testing video too. \ \
- Design should have all the headings it needs. \ \
- Some sections of design should be complete. 
  - Can you get the High-level or Programming choice sections done?