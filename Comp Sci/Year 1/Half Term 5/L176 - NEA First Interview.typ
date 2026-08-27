#import "../../../Templates/Template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== NEA Check In
#GClass
On your NEA Write Up assignment, write a private comment \ answering the following:
1. Are you up to date? (1.1,1.2, 1.3 all started)

2. What have you completed over the weekend?

3. What are you going to complete this week?

4. Any other comments/concerns?

= NEA: Interivews & Research
#note[]

== First Interivews
#place(dy:1em,)[#grid(columns:(0.2fr,1fr), row-gutter: 40pt,
text(purple)[#bold[WHO]],[Your NEA Analysis *must* include an interview with at least *one* likely user of your solution. Ideally, this will include the person you identified as your end user.],
only("2-")[#text(orange)[#bold[WHY]]],only("2-")[To help identify the *key components* of your solution. The user will understand the problem and should say what they want in a solution. The interview should directly link to your final objectives.],
only(3)[*WHERE*],only(3)[*Face-to-face or online*. WhatsApp/email automatically records the responses. Could interview people on forums (useful for investigations).])]

== First Interivews
#place(dy:1em,)[#grid(columns:(0.2fr,1fr), row-gutter: 40pt,
text(green)[#bold[WHAT]],[Ask questions that get the user to give *specific details* about desired *functionality/features*. Plan questions in advance, but you may need to ask additional questions on the spot.],
only("2-")[#text(red)[#bold[WHEN]]],only("2-")[Over the next *four weeks*. This needs to inform your draft objectives, *due 16th June 2026*.])]

== What questions make a good interview question?
#discuss
#text(blue)[Which question is best?] #text(orange)[Which question is worst?] #text(green.darken(30%))[Why?]

#only(1)[
  1. "What are the pros and cons of fitness trackers?"

  2. "What features should a fitness tracker have?"

  3. "How often should the fitness tracker ask the user to enter their weight?"
]
#only(2)[
  1. "Do you like dungeon crawler games?"

  2. "What features make dungeon crawler games fun for you?"

  3. "What colour should the background be?"
]
#only(3)[
  1. "How important is it for the user to be able to track their revision progress?"

  2. "How many decimal places should values be given to?"

  3. "Would you prefer revising using games like mine?"
]
== What makes a good interview question?
Good questions #text(blue)[lead to specific details about the key components of the solution]. They might help to understand the problem better.

Bad questions might:
- Be answerable by googling it.#pause
- Simply confirm that your project is a good idea.#pause
- Be too vague.#pause
- Ask about uninportant/non-complex features.#pause
- Be confusingly worded, leading to poor responses.

== Examples
#Comp
On BPCompSci, 

Find the two great examples of interviews.

What makes them great?

== Research
You will need to do research around your problem, writing your findings in the NEA. Make sure you cover:
- Existing Solutions to the problem (with pictures). Describe *at least two* and write down the pros, cons and *how this research will impact on your solution*.#pause
- Potential data structures/algorithms to help solve the problem. Describe *at least two* and write down the *pros and cons*.#pause

#place(dy:1em,)[#text(red)[Save weblinks that you use for reference later.

Make sure you dump screenshots in the write up too, you can always move/reorganise later.]]