#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter
#mwb
Discuss: \
1. In Computer Science, define the term 'Bad actor'
2. Why do we need to protect devices from bad actors?

= Internet Security
#note([
  Keywords: `Worm; Trojan; Virus; Vulnerability; Exploit;`
])

== Internet Security Presentations
#only(4)[#GClass]
#only("1,4")[
  In your groups, you will need to:
- Define your Internet Security Threat
- Give three REAL examples of them/how they work.
- Explain how to prevent it.

All of this must be in no more than 5 slides on the shared presentation.

You have *30 minutes* to prepare it.
]

#only(2)[
  #text(22pt)[#enum(numbering:"Group 1:")[
    *Phishing* 
    - Amaris, Oscar K, Jeho
  ][
    *Pharming* 
    - Dan, Sam, Milosz
  ][
    *Worms* 
    - Harper, Ryan, Lilly
  ][
    *Viruses* 
    - Nathan, Toby, Theo
  ][
    *Trojans* 
    - Jonathan, Farhan, Holly
  ][
    *SQL Injection* 
    - Rachel, Luke, Elias, Josh
  ][
    *DOS and DDOS* 
    - Oscar, Hong, Jason
  ]]
]

#only(3)[
  #text(22pt)[#enum(numbering:"Group 1:")[
    *Phishing* 
    - Claudia, Alan, Iram
  ][
    *Pharming* 
    - Edwin, Arjun, William
  ][
    *Worms* 
    - Abdul, Thomas, Razig
  ][
    *Viruses* 
    - Nathan, Elliot, Oliver
  ][
    *Trojans* 
    - Suthesan, Bethany, Dean, Max
  ][
    *SQL Injection* 
    - Sam, Matt West, Maya, Konstantin
  ][
    *DOS and DDOS* 
    - Ben, Dan, Matt Waldock
  ]]
]