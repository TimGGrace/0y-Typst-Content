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
    question-number: 14,
    marks: none,
    question: [
        This question extends the Skeleton Program by adding a predator, a beetle, to the simulation.

        Every stage, *after* the ants have acted, the beetle will move *at random* to a new cell in its immediate vicinity.

        The valid cells in *Figure 1* are marked with `X`, where `B` represents the beetle.

        #aqa.center(align(center, figure(
      caption: [Figure 1],
      table(columns:5,
      [` `],[` `],[` `],[` `],[` `],
      [` `],[`X`],[`X`],[`X`],[` `],
      [` `],[`X`],[`B`],[`X`],[` `],
      [` `],[`X`],[`X`],[`X`],[` `],
      [` `],[` `],[` `],[` `],[` `])
    )))
        *After* it has moved, the Beetle will devour (remove from the simulation) *all* Ants within the same location.

        When the simulation begins, the Beetle will begin in the cell `(3, 3)`. The Beetle is capable of moving beyond the grid points.

        *What you need to do*

        *Task 1* \
        Create a new class called `Beetle` that is a subclass of `Entity`.

        Create two new methods within the `Beetle` class to enable it to function as described above: a constructor and `AdvanceStage`.

        The method `AdvanceStage` should override the method within the `Entity` class.

        *Task 2* \
        Modify the methods `GetDetails`, `GetAreaDetails` and `GetCellDetails` within the `Simulation` class so that the beetle is displayed as '`Beetle`' whenever viewed within a cell.

        *Task 3* \
        Modify the constructor and `AdvanceStage` methods within the `Simulation` class to allow the `Beetle` to function as described.

        The constructor of the `Simulation` class should create a `Beetle` at the coordinate `(3, 3)`. The `AdvanceStage` method should cause the `Beetle` to act *after* the ants have acted.
        #v(3cm)
        *Task 4* \
        Test that the changes you have made work:
        - run the Skeleton Program
        - enter `1`
        - enter `3`
        - enter `2`, then `4`
        - enter `5`, then `2`
        - enter `1`
    ]
)
#rect( width: 105%,
    [
      *Evidence that you need to provide* \
      Include the following evidence in your Electronic Answer Document.
      #aqa.question(
        question-number: 14.1,
        marks: 11,
        question: [
          Your PROGRAM SOURCE CODE for the new class `Beetle` as well as any amended methods within the `Simulation` class.
        ]
      )
      #aqa.question(
        question-number: 14.2,
        marks: 1,
        question: [
          SCREEN CAPTURE(S) showing the results of the requested test.
        ]
      )
    ])