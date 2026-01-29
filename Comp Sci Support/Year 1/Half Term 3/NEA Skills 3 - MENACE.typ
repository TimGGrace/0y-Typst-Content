#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

= Learning Algorithms

== Adaptive Algorithms
These don't need to be complex, but they do need to change based on what the user does.

Imagine a flashcard program. You're storing flash cards, and the user marks them as right or wrong.

How could you adapt the flashcards they're shown?

== MENACE AI
#notes
The concept:
- Store 5 copies of every question in a list. #pause
- Shuffle that list. #pause
- Take the front item *out*, and ask that. #pause
- If they get it wrong, put *two* copies back in the list. #pause
- Re-shuffle.

== Storing Flashcards
Let's start with a simple 'Q&A' structure \
#grid(columns:(0.8fr,1.5fr))[#text(20pt)[```cs struct FlashCard {
  public string Question;
  public string Answer;
}```]][
  #text(20pt)[```cs static void Main(string[] args) {
      List<FlashCard> practiceSet;
      practiceSet = new List<FlashCard>();
  
      FlashCard temp1; FlashCard temp2;
      (temp1.Question, temp1.Answer) = ("Q1","A1");
      (temp2.Question, temp2.Answer) = ("Q2","A2");
      practiceSet.Add(temp1);
      practiceSet.Add(temp2);
      }
    ```]
]#pause
#place(dy:1em)[How could we abstract this?]

== Shuffling
The Fisher-Yates shuffle is a good option here.

1. For each item in the list,#pause
2. Pick an index between it and the end of the list (possibly the same),#pause
3. Swap those two items.


