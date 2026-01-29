#import "@preview/touying:0.5.5": *
#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== NEA Check in
#GClass
On the NEA Google Classroom Assignment, \ leave a comment answering:
#enum(
[What have you worked on in the last week?],
[How satisfied are you with your technical solution so far?],
[Are you ahead, behind or on track where you think you should be? \ #text(size:24pt)[(Tech solution finished, Analysis ready for checking)]],
[How are you feeling about the NEA? \ #text(size:24pt)[(e.g. confident, worried, excited, lost, …)]]
)

== Catch Up!
#Comp \
1. *CHECK* for outstanding or incomplete assignments. Complete them.
\ 
2. Get your NEA program ready for testing. Complete your testing table. \
\ 
3. Finish off the programming worksheets about *OOP*. They're really key for the Pre-release program.