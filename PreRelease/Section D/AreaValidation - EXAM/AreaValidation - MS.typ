#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
  questions: (
    (
      number: 11.1,
      marks: 4,
      solution: [
        *All marks for AO3 (programming)*

        1. Iterative structure contains code that gets the second position from the player;
        2. One correct condition;
        3. Both correct conditions and correct logic;
        4. Displays error message under all correct circumstances and only under correct circumstances; *R.* message same as original prompt
        
        *Max 3* if code contains errors 
        
        *NOTE:* correct conditions are: \ `EndRow >= StartRow` and `EndColumn >= StartColumn` \
        *A.* reversed conditions if appropriate.
      ]
    ),
    (
      number: 11.2,
      marks: 1,
      solution: [
        *Mark is for AO3 (evaluate)*
        
        *\*\*\* SCREEN CAPTURE \*\*\** \
        _Must match code from *11.1*. \
        Code for *11.1* must be sensible._ 

        Screen capture showing message displayed when `1` then `4` is entered followed by `4` then `4` being entered and accepted.
      ]
    ),
    (
      number: 11,
      marks: none,
      solution: [
        *Typical Solution:*
        ```cs 
        ...
        switch (Choice)
        {
            case "1":
                Console.WriteLine(ThisSimulation.GetDetails());
                break;
            case "2":
                int StartRow = 0, StartColumn = 0, EndRow = 0, EndColumn = 0;
                GetCellReference(ref StartRow, ref StartColumn);
                //New Code:
                while (true)
                {
                    GetCellReference(ref EndRow, ref EndColumn);
                    if (EndRow >= StartRow && EndColumn >= StartColumn) break;
                    Console.WriteLine("Invalid position. Please enter another.");
                }
                // End of new code
                Console.WriteLine(ThisSimulation.GetAreaDetails(StartRow, StartColumn, EndRow, EndColumn));
                break;
            case "3":
            ...
            
            ```
      ]
    )
  )
)
]