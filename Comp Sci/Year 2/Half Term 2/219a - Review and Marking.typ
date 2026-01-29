#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

#weeklyReview(title: "R210 - Dry Runs")

== NEA Check In
In a *private comment* on your NEA write up, tell me:

#enum([
What have you worked on in the last week?],
[How satisfied are you with your technical solution so far?],
[ Are you ahead, behind or on track where you think you should be? \ #text(size:23pt,[Tech Sol finished, Testing table & videos done, Analysis Complete, working on Design])],
[How are you feeling about the NEA? \ #text(size:23pt,[(e.g. confident, worried, excited,  lost, …)])])
#pause
Now that you've done that, *work on your NEA!*
