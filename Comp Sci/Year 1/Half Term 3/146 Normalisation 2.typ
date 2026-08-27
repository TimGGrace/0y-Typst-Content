#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter
#notes
Write down the database criteria for each stage of the normalisation process:
- 1NF
- 2NF
- 3NF
#place(dy:1em)[#text(purple)[
  #bold[EXT:] For each stages, what improvements have been made? What makes them better than the previous stage?
  ]]

== Summary
1. Separate *repeating groups* of attributes out into separate entities. Copy the primary key into the new entity.

2. For tables with *composite keys*, ensure that all *non-key* attributes are dependent on all parts of the composite key.

3. Remove any *mutual dependence* between non-key attributes.

"The key... The *whole* key... and *nothing but* the key."

= Normalisation Practice

== Let's go through this one!
#notes
#let hiddenCell = [\*\*\*\*\*\*\*\*]
#place(dy:3em)[#text(16pt)[#table(columns:range(11).map(n=>1fr),
[S_ID],[FName],[SName],[Address],[Phone],[DoB],[C_ID],[Title],[Cost],[L_ID],[L_Name],
[001],[James],[Ashby],hiddenCell,[07444...],[26-1-16],[001],[C Sci],[£0],[321],[Tim],
[001],[James],[Ashby],hiddenCell,[07444...],[26-1-16],[002],[Maths],[£0],[100],[Jo],
[001],[James],[Ashby],hiddenCell,[07444...],[26-1-16],[003],[F Maths],[£0],[100],[Jo],
[001],[James],[Ashby],hiddenCell,[07444...],[26-1-16],[004],[Physics],[£0],[949],[Steve],
[002],[Kacper],[Dziki],hiddenCell,[07123...],[09-3-27],[001],[C Sci],[£0],[321],[Tim],
[002],[Kacper],[Dziki],hiddenCell,[07123...],[09-3-27],[002],[Maths],[£0],[101],[Lynn],
[002],[Kacper],[Dziki],hiddenCell,[07123...],[09-3-27],[001],[Eng],[£0],[950],[John#pin(3)],
[003],[Adan],[Lee],hiddenCell,[07919...],[09-3-31],[001],[C Sci],[£0],[321],[Tim],
[003],[Adan],[Lee],hiddenCell,[07919...],[09-3-31],[002],[Maths],[£0],[102],[Clive],
[003],[Adan],[Lee],hiddenCell,[07919...],[09-3-31],[005],[Eng Lan],[£0],[887],[Ed#pin(5)],
)]]

== Practice
#GClass
Two worksheets to choose from on Google Classroom:
- Car Hire (Practice)
- Gala (Challenge)

Let me know if you need help!

== Consolidation
#notes
Brain dump everything you can remember about databases!

Think:
- Key words
- Concepts
- Advantages/disadvantages
