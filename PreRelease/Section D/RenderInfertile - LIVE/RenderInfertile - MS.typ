#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
  questions: (
    (
      number: 11.1,
      marks: 4,
      solution: [
        *All marks for AO3 (programming)*

        1. Amended menu displays the required code. If `6` is entered, the `RenderInfertile` method is called.
        2. An iterative structure to iterate through each ant.
        3. Selection structure within the iteration structure identifies QueenAnts
        4. QueenAnts are all removed. *R.* if it is possible to skip QueenAnts or remove others.
        
        *Max 3* if code contains errors \
        
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

        Screen capture showing no `QueenAnt`s are left in the Nest at `(2, 4)` All other ants should still be present.
      ]
    ),
    (
      number: 11,
      marks: none,
      solution: [
        *Typical Solution:* \
        *Main Program modification:*
        ```cs 
        static void Main()
        {
           ...
            do
            {
                DisplayMenu();
                Choice = GetChoice();
                switch (Choice)
                {
                  ...
      
                    case "6":
                        ThisSimulation.RenderInfertile();
                        break;
                }
            } while (Choice != "9");
            Console.ReadLine();
        }
        
        static void DisplayMenu()
        {
            Console.WriteLine();
            Console.WriteLine("1. Display overall details");
            Console.WriteLine("2. Display area details");
            Console.WriteLine("3. Inspect cell");
            Console.WriteLine("4. Advance one stage");
            Console.WriteLine("5. Advance X stages");
            Console.WriteLine("6. Render Simulation Infertile");
            Console.WriteLine("9. Quit");
            Console.WriteLine();
            Console.Write("> ");
        }```

        *RenderInfertile Method*
        ```cs
        public void RenderInfertile()
        {
            List<Ant> ToCull = new List<Ant>();
            foreach (Ant a in Ants)
            {
                if (a.GetTypeOfAnt() == "queen")
                    ToCull.Add(a);
            }
            foreach (Ant a in ToCull) Ants.Remove(a);
        }
        ```
      ]
    )
  )
)
]