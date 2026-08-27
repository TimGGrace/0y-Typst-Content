#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
  questions: (
    (
      number: 11.1,
      marks: 4,
      solution: [
        *All marks for AO3 (programming)*
        
        1. Modified menu with suitable message for option `6` and additional case for handling an input of `6`;
        2. Method within `Simulation` with correct interface;
        3. Iterative structure within method to go through every Pheromone
        4. Every pheromone has its Column increased by 1. *R.* Pheromones list is not updated or new Pheromones start at full strength.
        
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

        Screen capture(s) showing the pheromones have moved right once.
        *A.* screenshots from simulations in which ants have not found food, so have no pheromones at all.
      ]
    ),
    (
      number: 11,
      marks: none,
      solution: [
        *Typical Solution:* \
        *Main Program modification:*
        #text(10pt)[```cs 
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
                      ThisSimulation.LightBreeze();
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
            Console.WriteLine("6. Light Breeze");
            Console.WriteLine("9. Quit");
            Console.WriteLine();
            Console.Write("> ");
        }```]

        *LightBreeze Method 1*
        ```cs
public void LightBreeze()
{
    List<Pheromone> newPheromones = new List<Pheromone>();
    foreach (Pheromone p in Pheromones)
    {
        newPheromones.Add(new Pheromone(p.GetRow(), 
                                        p.GetColumn() + 1, 
                                        p.GetBelongsTo(), 
                                        p.GetStrength(), 
                                        PheromoneDecay));
    }
    Pheromones = newPheromones;
}
        ```
\ \ 
        *LightBreeze Method 2* \
        Method in `Simulation`:
        ```cs 
public void LightBreeze()
{
    foreach (Pheromone p in Pheromones) p.MoveRight()
}
        ```
        New method in `Pheromone`:
        ```cs public void MoveRight()
{
    Column++;
}```
      ]
    )
  )
)
]
