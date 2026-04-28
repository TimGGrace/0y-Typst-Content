#import "../../../Templates/lib.typ": *

#show: aqa.setup-page.with(
  config: (
    level: "A-level",
    subject: "Computer Science",
    paper: "Pre Release Section D",
    materials: ( "a computer",),
    instructions: (""),
    date: "Summer 2026",
    time: "",
    time-allowed: "NA",
    advice: (""),
    series-code: "2526",
    specification-code: "7517",
    paper-code: "Pre Release Questions",
    numbering-style: "compsci",
    hide-borders: true,
    
  )
)

#aqa.question(
  question-number: 12,
  marks: none,
  question: [
      A useful tool is to be added to the Simulation, a *Grid View*.

      In this grid view, each cell is to have a character indicating the single most important feature of the cell. 
      An example can be seen in *Figure 1*.

    #aqa.center[
      *Figure 1*
      #table(stroke:0pt,columns:range(5).map(n=>20pt),
      `.`,`.`,`.`,`.`,`.`,
      `F`,`P`,`A`,`N`,`.`,
      `.`,`.`,`.`,`.`,`.`,
      `.`,`.`,`.`,`A`,`.`,
      `.`,`A`,`.`,`.`,`F`,)]

      These features, listed from most to least important, are:
      1. Nests should be indicated with a `N`
      2. Ants should be indicated with a `A`
      3. Food should be indicated with a `F`
      4. Pheromones should be indicated with a `P`
      5. Blank cells should be indicated wtih a `.`


      *What you need to do*

      *Task 1* \
      Modify the `DisplayMenu` subroutine to include the option '`6. Grid View`'

      *Task 2*\
      Create a new method within the `Simulation` class called `GridDisplay` that will output the entire grid as indicated above. There should be *no additional characters* between adjacent cells, but each row should be on a new line.

      *Task 3*\
      Modify the `Main` subroutine so that should the user enter `6`, the `GridDisplay` method will be called.

      *Task 4* \
      Test that the changes you made work:
      - run the Skeleton Program
      - enter `3`
      - enter `5`
      - enter `5`
      - enter `6`
    ]
  )
#rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your Electronic Answer Document.
      #aqa.question(
        question-number: 12.1,
        marks: 4,
        question: [
          Your PROGRAM SOURCE CODE for the new `GridDisplay` method as well as any amended methods.
        ]
      )
      #aqa.question(
        question-number: 12.2,
        marks: 1,
        question: [
          SCREEN CAPTURE(S) showing the results of the requested test.
        ]
      )
    ])