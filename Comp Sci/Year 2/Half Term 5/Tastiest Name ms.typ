#import "../../../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
  questions: (
    (
      number: 5.1,
      marks: 12,
      solution: [
        *Design*\
        1. Identifying that an iterative structure to check each character in both strings is necessary;
        2. Identifying the need for a selection structure to determine the output;
        *Programming*
        3. Takes in two names and stores them in appropriate data structures;
        4. Calls the `TastiestName` function at least once;
        5. Subroutine created with the correct interface;
        6. Variable(s) for storing the tastiest letter;
        7. Iterative loop that goes through each character in at least one of the strings;
        8. Accesses a character within a string inside of the iterative loop;
        9. Accesses all characters within each string inside of iterative loops;
        10. Where appropriate, tastiest letter is updated accordingly;
        11. Correct selection structure to determine which name is tastiest;
        12. Subroutine correctly returns "`either`" if both names contain a tastiest letter with the same score;
      ]
    ),
    (
      number: 5.2,
      marks: 1,
      solution: [
        *Mark is for AO3 (evaluate)*
        
        *\*\*\* SCREEN CAPTURE \*\*\** \
        _Must match code from *5.1*. \
        Code for *5.1* must be sensible._ 

        Screen capture showing message displayed when `BOB'S BURGERS` followed by `FRED'S FISH` is entered.
      ]
    ),
    (
      number:5,
      marks: none,
      solution: [
        *Possible Solution:*
        ```cs
static void Main(string[] args)
{
  Console.WriteLine("Enter the first name");
  string name1 = Console.ReadLine();
  Console.WriteLine("Enter the second name");
  string name2 = Console.ReadLine();
  Console.WriteLine("The best name is " + TastiestName(name1, name2));
  Console.ReadKey();
}```#v(8cm)```cs
static string TastiestName(string a, string b)
{
  int tastiestA = 0;
  int tastiestB = 0;
  foreach (char c in a)
  {
    if(tastiness(c)>tastiestA )
    {
      tastiestA = tastiness(c);
    }
  }
  foreach (char c in b)
  {
    if (tastiness(c) > tastiestB)
    {
      tastiestB = tastiness(c)
    }
  }
  if(tastiestA == tastiestB)
  {
    return "either";
  }
  else if(tastiestA > tastiestB)
  {
    return a;
  }
  else
  {
    return b;
  }
}
        ```
      ]
    )
  )
)]