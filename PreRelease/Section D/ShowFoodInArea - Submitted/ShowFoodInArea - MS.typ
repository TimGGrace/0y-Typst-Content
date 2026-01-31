#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
    questions:(
      (
        number: 11.1,
        marks: 4,
        solution: [
          *All marks for AO3 (programming)* \ \
          1. New method `GetTotalFoodInArea` with correct interface; *I.* case and minor typos
          2. Iterative structure iterates through every cell in the correct area; 
          3. Iterative structure *only* iterates through cells in the correct area; *A.* alternative method for skipping 
          4. Method is called and appropriate string added to Details in both GetAreaDetails and GetDetails. *R.* Direct printing if it occurs before the area details are displayed.
        ]),
        (number: 11.2,
        marks: 1,
        solution: [*Mark is for AO3 (evaluate)*
        
          *\*\*\*\* SCREEN CAPTURE \*\*\*\** \
          _Must match code from *11.1*, including prompts on screen capture matching those in code. \ Code for *11.1* must be sensible._ \ \
          Screen capture(s) showing the total food at the beginning of the simulation is `1500`, and the correct food total for the displayed area. This will be `1500`, `1000`, `500`, or `0`.
          #image("ShowFoodInArea.png",height:14cm)
          *Expected Solution*: \
          `GetTotalFoodInArea`
          #text(10pt)[```cs 
public int GetTotalFoodInArea(int StartRow, int StartColumn, int EndRow, int EndColumn)
 {
     int food = 0;
     for (int Row = StartRow; Row <= EndRow; Row++)
     {
         for (int Column = StartColumn; Column <= EndColumn; Column++)
         {
             food += Grid[GetIndex(Row, Column)].GetAmountOfFood();
         }
         
     }
     return food;
 }
```]
\ \
          `Modifications to GetAreaDetails`
          #text(10pt)[```cs 
          public string GetAreaDetails(int StartRow, int StartColumn, int EndRow, int EndColumn)
          {
              ...
              Details += $"In total there is {GetTotalFoodInArea(StartRow, StartColumn, EndRow, EndColumn)} food in this area";
    return Details;

          }```]
\ \
          `Modifications to GetDetails`
          #text(10pt)[```cs
public string GetDetails()
{
        ...
        
    Details += $"In total there is {GetTotalFoodInArea(1, 1, NumberOfRows, NumberOfColumns)} food on the simulation";
    return Details;
    }
}```]
        ]
      ),
    )
  )
]