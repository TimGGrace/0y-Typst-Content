#import "../../../Templates/Template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)
#import "@preview/fletcher:0.5.8": *
#let diagram = touying-reducer.with(
 reduce: diagram, cover: hide)

#let exampleGraph = diagram(
  node([A],stroke:1pt,inset:15pt,name:<A>),
  node((1,0),[B],stroke:1pt,inset:15pt,name:<B>),
  node((1.8,0.5),[C],stroke:1pt,inset:15pt,name:<C>),
  node((1,1),[D],stroke:1pt,inset:15pt,name:<D>),
  node((0,1),[E],stroke:1pt,inset:15pt,name:<E>),

  edge(<A>,<B>,"-"),
  edge(<A>,<E>,"-"),
  edge(<A>,<D>,"-"),
  edge(<B>,<C>,"-"),
  edge(<C>,<D>,"-"),
  edge(<E>,<B>,"-")
)

#weeklyReview(title:"B120 - Queues")

= Graph Traversal
#note[Keywords: `Depth First Traversal`, `Breadth First Traversal`]
#only(2)[#place(dy:-8em,dx:1em)[
  #image("img/L174 spec.png")
  ]]

== Define a #bold[tree] in the context of Computer Science
#notes
#only(2)[#v(2cm)#text(36pt,red)[An undirected connected graph with no cycles.]]

== Graph Traversal
The goal: Visit every node in a systematic way.

We need to know how the following algorithms work:
- Depth First Traversal
- Breadth First Traversal

== Depth First Traversal
#notes
#grid(columns:(1fr,1fr),
[
  Our steps: \
`toVisit = new Stack
toVisit.Push(firstNode)

while ! toVisit.IsEmpty:
  currentNode = toVisit.Pop
  currentNode.Visit
  foreach currentNode.neigbour:
    if ! neigbour.visitied:
      toVisit.Push(neigbour)`],
uncover(2)[
  Let's dry run that with the \ following graph:
])#pause
#place(dy:-8em,dx:18em)[#exampleGraph]

== Applications of Depth First Traversal
This graph traversal technique will go as far into a graph as it can, before backtracking up to its last choice.

It can be used for maze solving and path finding! How could we make the algorithm more efficient when searching for a node/exit?

== Breadth First Traversal
VERY similar to Depth First:
#notes
#place(dy:0.5em,grid(columns:(1fr,1fr),
[
\ 
`toVisit = new Queue
toVisit.Enqueue(firstNode)

while ! toVisit.IsEmpty:
  currentNode = toVisit.Dequeue
  currentNode.Visit
  foreach currentNode.neigbour:
    if ! neigbour.visitied:
      toVisit.Enqueue(neigbour)`],
uncover(2)[
  Let's dry run that with the \ following graph:
]))#pause
#place(dy:4em,dx:18em)[#exampleGraph]

= Git
== What is Git?
Git is a version control software. It, or some similar software, is used by companies when creating software!#pause

It allows people to group contribute, modify, request changes, roll back changes if something goes wrong.#pause

For your NEA, it's particularly useful for:
- Ensuring you don't lose your files.
- Ensuring you can undo changes if it all goes wrong.#pause
You can also practice actual employability skills!

== GitHub
Github is an online platform that we can use with Git to store your work. It will allow you to access your code anywhere you have access to the internet!

It's great for making sure it's accessible at home and in college.#pause

Let's get a repository set up for your NEA now, even if there's nothing in it.

*NOTE*: You can use the version of Github built into Visual Studio.

*Double NOTE:* That only works in college if your project is in a #bold[Google Drive] folder.


= NEA: End User
== End User
#notes
You need an end user for your program!

They need to be:
- Relevant to the problem you are solving.#pause
- Easily accessible to you for interview.#pause
- Willing to interview several times in the year#pause
- Use your program at the end and provide #bold[detailed] feedback.

== Section 1.3 End User
For this section, you should:
- Describe the ideal end user, explaining why you want someone with these skills/qualifications/job#pause
- Explain why the person you have picked (name them) is just that person.#pause

#bold[You have the rest of the lesson to work on this section.]\
If you don't know if someone is willing to be your end user, ask them now by email/text. Then complete the #bold[first] part of the section.