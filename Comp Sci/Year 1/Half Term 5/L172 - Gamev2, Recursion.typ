#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

#weeklyReview(title:"R119 - Recursion, SQL")

== Time to play the games!
#Comp
#only(1)[Load your game, then stand behind your chair.]
#only(2)[Move to another PC and play that game! You'll have 10 minutes.]

= Priority Queues and Recursion
#note[Keywords: `Priority Queue; Recursion; Recursion; Recursion; Recursion; Recursion; Recursion; Recursion; `]

== Priority Queues
#only("1-5")[#notes]
These are a type of *queue*, but elements are also \ queued with a *priority*

#only(2)[Where have you seen priority queues in the world?]

#only(3)[In a priority queue, new items will move ahead of any item with a *lower* priority.]

#only("4-")[
  EG:\
  Busses with numbers ending in *A* have high priority. *B* have medium priority, *C* has low priority.
]

#only("5-")[
  The following busses turn up in this order: *64B, 64C,142A, 25C, 87B*
]

#only(6)[#mwb
  What does the queue look like?]

== Implementing a Priority Queue
#notes
When storing items in the queue now, we need to store both the \ item *and* its priority.

When storing in a linear queue, we need to begin at the back of the queue, and move forwards until either we reach the front, or an item with the same or higher priority as the item.#pause

Then we need to shuffle all items behind the new element back by one.#pause

Then we can insert the item in the now empty slot.#pause

This is a naïve approach, as it involves a lot of shuffling in long queues. Realistically, a binary heap is used, *but that's beyond spec*.

== Recursion
#Comp

#align(center+horizon)[#text(36pt)[We're going to do some MWB questions. \ Start by loading Visual Studio on your PCs.]]

== MWBQ
#mwb
#only("1-2")[#text(36pt)[What is a recursive subroutine?]]
#only(2)[#text(36pt,red)[\ A subroutine that calls itself.]]
#only("3-4")[
  #text(18pt)[```cs void GiveLessonOnRecursion() { Console.WriteLine("Another recursion pun."); }
bool RecursionIsUnderstood() { return false; }

void TeachRecursion(int patience) {
    if (patience == 0) {
       throw new Tantrum();
    }
    GiveLessonOnRecursion();
    if (!RecursionIsUnderstood()) {
        TeachRecursion(patience - 1)
    }
}
static void Main(args[]) {
    TeachRecursion(5);
}
```]
#place(dy:-5em,dx:18em)[#text(36pt)[Identify the *base* \ and *general* cases.]]
]
#only(4)[
  #place(dy:-122pt,dx:50pt,)[#rect(width:280pt,fill:red.transparentize(40%),radius:15pt)]
  #place(dy:-225pt,dx:50pt,)[#rect(width:180pt,fill:red.transparentize(40%),radius:15pt)]
]
#only("5-10")[
  #text(21pt)[```cs static int getLengthOfString(string text) {
      return strLen(text, "", 0);
  }
  static int strLen(string wholeText, string text2, int i) {
      if (text2 == wholeText) {
          return i;
      } else {
          return strLen(wholeText, text2 + wholeText[i], i + 1);
      }
  }
  static void Main(string[] args) {
      Console.WriteLine(getLengthOfString("Hello there"));
  }
  ```]
]
#only("5-6")[#place(dx:1em,)[
    #text(36pt)[State the identifier of the recursive subroutine.]
  ]]
#only(6)[#place(dy:-2em,dx:25em)[#text(36pt,red)[`strLen`]]]
#only("7-8")[#place(dx:1em,)[
    #text(36pt)[What is the purpose of `getLengthOfString`]
  ]]
#only(8)[#place(dy:-12.5em,dx:20em)[#text(36pt,red)[Abstraction. Hiding \ the 'real' function]]]
#only("9-10")[#place(dx:1em,dy:-0.5em)[
    #text(36pt)[When run, what's the maximum number of stack frames?]
  ]]
#only(10)[#place(dy:-2.5em,dx:28em)[#text(36pt,red)[14]]]

== Write an equivalent in Visual Studio
#Comp
```cs void loopCountToN(int n) {
    for (int i = 1; i <= n; i++)
    {
        Console.WriteLine(i);
    }
}

void recursionCountToN(int n) {
    // To complete
}
```
#only(2)[
  #place(dx:15em,dy:-7em)[#text(36pt)[Modify the code to print the \ numbers \in reverse order.]]
]
== Complete the following
#Comp
#only(1)[
  ```cs string recursionReverseString(string text)
{

}
```
]

== Relevance
Both Recursion and Priority Queues are counted as A-group technical skills.

They must be used appropriately though. Having a recursive `Main()` would probably lose you marks...

#Worksheet([*W133 - Recursion* \ *W134 - Queues* \ \ Up to you which worksheet you do, you could even mix and match #emoji.face])