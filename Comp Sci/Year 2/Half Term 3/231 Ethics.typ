#import "../../../Templates/template.typ": *

#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

#weeklyReview(title:"R214 - Network Applications")

== Starter
#Comp

Think about things that have been in the news.

Have there been any big changes in the way technology is used recently?

Have there been any legislative disputes?

Have there been any public outcries?
#v(2cm)
*Find a web page that shows a topical tech issue*

= Individual, Social, \ Legal and Cultural Issues

== Legends of Computer Science
#grid(columns:(1fr,0.8fr))[
  #align(center)[
    #link("https://www.media.mit.edu/people/joyab/overview/")[#text(blue)[#underline[Joy Buolamwini \ 1990 - present]]]
  ]

  Joy Buolamwini is a Canadian-American Computer Scientist who founded the Algorithmic Justice League, working to challenge bias in decision-making software and researching to highlight the social implications and harms of AI.
][
  #align(center)[#image("../Images/Dr Buolamwini.png", width:70%)
  #text(20pt)[Dr Joy Buolamwini BSc, MSc, PhD]
  ]
]

== The responsibility of a software developer
Whenever we make new technology, we need to think about the range of opportunities and risks that it could lead to. #pause

EG:
Hery Rajaonaramampianina isn't able to make accounts on many websites, despite being the president of Madagascar from 2014-2018. #pause

Chinese names are often a single character when typed with an appropriate keyboard. Often only two letters when using the Latin alphabet. Are those not valid first names?

== Four areas we have to consider:
You will be asked to look at case studies and discuss:
- #text(blue)[Moral] issues#pause
- #text(orange)[Ethical] issues#pause
- #text(green.darken(30%))[Legal] issues#pause
- #text(purple)[Cultural] issues#pause

But what are these?

Discuss in your groups what you understand by these terms.

== Discuss:
How do social media platforms protect your own values.

Think about settings you can change, or rules they have to abide by

== Four areas we have to consider:
#text(blue)[Moral] issues#pause
#text(22pt)[- Individual sense of right/wrong
- Does technology protect the individuals?
- Are people free to express their opinions?#pause]
#text(orange)[Ethical] issues#pause
#text(22pt)[- Societies sense of right and wrong
- The shared moral 'code'
- Is tech protecting society and its values?#pause]
It's OK to be confused by these, but we need to make sure both are covered by our answers.


== Recent news
#only(1)[#text(36pt)[Trump tweet:]

"...These THUGS are dishonoring the memory of George Floyd, and I won't let that happen. Just spoke to Govenor Tim Waltz and told him that the Military is with him all the way. Any difficulty and we will assume control, but when the looting starts, the shooting starts. Thank you!"]

#only(2)[
  #text(36pt)[Headline:

Facebook and Instagram get rid of fact checkers]
]

== Four areas we have to consider:
#text(green.darken(30%))[Legal] issues
- Relating to laws
  - Data Protection Act
  - GDPR
  - Many more
- Is the technology sticking to the laws where it is being used?
#text(36pt)[Apple fights \$1.8 billion App Store lawsuit in first of UK class actions against tech giants.]

== Google Maps v Germany
In 1980s the German court recognised citizens' right to "informational self-determination"#pause

In March 2010, the German Federal Constitutional Court overturned a law allowing authorities to store phone and email data for six months as a "grave intrusion" of personal privacy rights.#pause

In May 2010, Google announced it would be mapping Germany's 20 largest cities with street view. This was blocked by the government.#pause

#grid(columns:(1fr,1fr))[
  #rect(inset:10pt,radius:15pt,fill:blue.lighten(50%),stroke:1pt)[#link("https://bigthink.com/wp-content/uploads/2022/02/21149003-1.png?resize=768,345")[2015 Map]]
][
  #rect(inset:10pt,radius:15pt,fill:blue.lighten(50%),stroke:1pt)[#link("https://www.google.com/maps/@50.9788427,11.9731763,7.09z?entry=ttu&g_ep=EgoyMDI2MDExMy4wIKXMDSoASAFQAw%3D%3D")[2025 Map]]
]

== Four areas we have to consider:
#text(purple)[Cultural] issues
- Different groups may have different beliefs
- Is the technology sensitive to these differences?
- Are people being unfairly impacted by technological changes?
#only(2)[Let's look at that street-view map for other parts of the world.]
#only(3)[#text(36pt)[#link("http://gendershades.org/overview.html")[Facial recognition fails on race, government study says]]]

== Data Protection
1. Not every question is about data protection.

2. There are other laws and regulations about data.#pause
#text(22pt)[*Data Protection Act (UK)*, *GDPR (EU)*, *Freedom of Information Act (UK)*]#pause
#grid(columns:(1fr,1fr), column-gutter: 20pt)[
  - You must be able to see information stored about you.
  - You must have the opportunity for *informed consent* to capture.
][
  - You have the right to request the deletion of data.
  - Data must be stored no longer than it is relevant.
  - You have the right to update inaccurate data.
]

== "Exam"ple question
Algorithms and artificial intelligence are being increasingly used to assist with the box diagnosis of medical conditions. For example, algorithms based on artificial intelligence can diagnose some medical conditions from X-ray images. 

Discuss some of the moral, ethical, legal and cultural issues that might arise as a result of using computer systems to assist with diagnosing medical conditions. 
#align(right)[[9 marks]]

