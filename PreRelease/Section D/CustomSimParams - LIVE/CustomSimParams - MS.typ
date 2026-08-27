#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
  questions: (
    (
      number: 11.1,
      marks: 4,
      solution: [
        1. Indefinite iterative structure with at least one correct condition.
        2. User is given the prompt and input taken within the indefinite iterative structure. *R.* incorrect prompt.
        3. Selection structure to determine the correct number of nests.
        4. Simulation is created with the correct number of nests, rows and columns.
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

        Screen capture showing message displayed when `5` is entered followed by `24`, followed by the message again, then `4` followed by the message again, then `16` being entered and accepted.
        #image("solution.png", height:7cm)
        Check for `3` nests.
        #v(13cm)
      ]
    ),
    (
      number:11,
      marks: none,
      solution: [#text(8pt)[ ```cs case "5":
    
    int choice = 0;
    while(choice<5 || choice >20)
    {
        Console.WriteLine("Enter a number between 5 and 20");
        choice = int.Parse(Console.ReadLine());
    }

    int nests = 1;
    if(choice > 9)
    {
        nests = 2;
    }
    if(choice > 15)
    {
        nests = 3;
    }

    SimulationParameters = new List<int> { nests, choice, choice, 500, 3, 6, 1000, 25 };
    break;
```]]
    )
  )
)]