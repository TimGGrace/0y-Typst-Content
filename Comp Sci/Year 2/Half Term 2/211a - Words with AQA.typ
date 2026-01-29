#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

= WordsWithAQA
//#place(center,dy:-8em,image("../../Images/WordsWithAQA.png"))

== When is CAP 2?
Monday period 1 (8:45!)
November $3^("rd")$

*Set an alarm on your phone now!!* It's an earlier start than usual for a Monday. \ \
Busses will be running for this time, but it's up to you to get here.

== Practice for Section C
You'll be asked questions about the code in section C. \
Can we complete the function call diagram?

#place(center,dy:1em,rect(height:2em,width:5em,[Main#pin(1)]))
#place(center,dy:12em,dx:-10em,rect(height:2em,width:9em,[LoadAllowedWords#pin(2)]))


#place(center,dy:15em,dx:-4em,rect(height:2em,width:9em,[ \ #pin(3)]))
#uncover(2)[
  #place(center,dy:15em,dx:-4em,rect(height:2em,width:9em,[#pin(3)#text(red)[CreateTileDictionary \ ]]))
]

#place(center,dy:12em,dx:5em,rect(height:2em,width:9em,[#pin(4)]))
#place(center,dy:8em,dx:10em,rect(height:2em,width:9em,[PlayGame#pin(5)]))

#pinit-line(1,2,start-dx:-80pt,start-dy:30pt,end-dx:-100pt,end-dy:-23pt)
#pinit-line(1,3,start-dx:-50pt,start-dy:30pt,end-dx:-5pt,end-dy:-23pt)
#pinit-line(1,4,start-dx:-15pt,start-dy:30pt,end-dx:90pt,end-dy:-5pt)
#pinit-arrow(1,5,start-dx:15pt,start-dy:30pt,end-dx:-100pt,end-dy:-23pt,stroke:3pt)


#place(left,dy:0em,dx:20em,text(size:18pt)[List(String): AllowedWords \
Dictionary: TileDictionary \
Boolean: #uncover(2)[#text(red)[Randomstart]] \
Integer: StartHandSize \
Integer: MaxHandSize \
Integer: MaxTilesPlayed \
Integer: NoOfEndOfTurnTiles
])
#uncover(2)[
  #place(left,dy:5em,dx:0em,text(size:20pt,fill:red,[List(String): AllowedWords]))
  #place(left, dy:10em,dx:7.5em,text(size:20pt,fill:red,[Dictionary:TileDictionary]))
  #pinit-arrow(1,2,start-dx:-80pt,start-dy:30pt,end-dx:-100pt,end-dy:-23pt,stroke:3pt + red, fill:red)
  #pinit-arrow(1,3,start-dx:-50pt,start-dy:30pt,end-dx:-5pt,end-dy:-23pt,stroke:3pt + red, fill:red)
  #place(center,dy:12em,dx:5em,rect(height:2em,width:9em,text(red)[ DisplayMenu]))
]

== Group Task:
*L211a – Words with AQA structure diagrams*

Double click the images to edit drawing, then edit the text boxes to complete the diagrams \ \
These images are *large*, so work in pairs to fill them in.

== Section D
#mwb
In Section D, you'll be asked to make changes to the code. \ \
#pause
What changes do you think we can make? \ \
#pause
Write your ideas on a whiteboard


== Practice
Three ways to practice: \ \
- *W208 - C\# WordsWithAQA Changes 1* (On BPCompSci)
- *W209 - C\# WordsWithAQA Changes 2* (On BPCompSci)
- *L221a - Mock Sec C and D* \
  #emph([(this is a full mock exam for WordsWithAQA Sections C/D – so you should definitely do this as a practice over half term!!!)])