
#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Weekly Review R207 - Ethics, SQL
#Comp
#only(1)[Complete the weekly review, you'll have \ 15 minutes.]
#only(2)[Mark that review! \ \ Once you've done it:
#enum(
  [Submit the score into the Google Form.],
  [Update your weekly review tracker with *targets*.]
)]

== NEA Marking Process
#only("1,3")[Interviews for your Technical Solution \ will contain:
#enum(
  [Show me your program working!],
  [Show me the complex parts of your program code.],
  [I'll ask you to put in some bad-inputs],
  [I'll ask to look at specific parts/things in your code.]
)]
#only(2)[
After that, I'll have an idea of how many marks your Technical Solution may earn.
- No, I can't share that with you :(
- Yes, it can change if you fix/implement things!
- It's to get an idea of how well you're doing, and save me time in February with \~5000 pages of NEA...]
#only(3)[#Comp Now you've got some time to work on that NEA whilst I go and begin the marking process! \ (Order on GClassroom) \ That testing table needs completing...]
