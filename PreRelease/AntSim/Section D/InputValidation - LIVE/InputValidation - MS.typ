#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
  questions: (
    (
      number: 11.1,
      marks: 4,
      solution: [
        *All marks for AO3 (programming)*

        1. Iterative structure contains code that gets the choice from the player;
        2. One correct condition;
        3. Both correct conditions and correct logic;
        4. Displays error message under all correct circumstances and only under correct circumstances; *R.* message same as original prompt
        
        *Max 3* if code contains errors \
        *NOTE:* correct conditions are 'a number between 1 and 5 inclusive' and 'a 9'
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

        Screen capture showing message displayed when `11` and `8` are entered followed by `4` being entered and accepted.
      ]
    ),
    (
      number: 11,
      marks: none,
      solution: [
        *Typical Solution:*
        ```cs static string GetChoice()
            {
                List<string> validOptions 
                        = new List<string>() { "1", "2", "3", "4", "5", "9" };
                        
                string Choice = "";
                while (true)
                {
                    Choice = Console.ReadLine();
                    
                    if (validOptions.Contains(Choice)) break;
            
                    Console.WriteLine("Invalid selection. Enter another choice.");
                }
            
                return Choice;
            }```
      ]
    )
  )
)
]