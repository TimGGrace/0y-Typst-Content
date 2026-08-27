#import "@preview/touying:0.5.5": *
#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedYellow))
#show math.equation: set text(font:"New Computer Modern Math")
#show: set page(fill: fadedYellow)

= BNF  and RegEx practice

== BNF Notation
#notes
`<thing> ::= RULE`

EG: \
	` <integer> ::= <digit> | <digit> <integer>
 <digit> ::= 0|1|2|3|4|5|6|7|8|9
`

== Practice
#grid(columns:(2fr,1fr),column-gutter: 3em,
[
  Given the following BNF, which of the membership ID's are valid? \
  `<code>::=#|& 
<digit>::=1|2|3|4|5|6|7|8 
<letter>::=A|B|C|D|E
<number>::=<digit>|<digit><number>
<group>::=<letter>|<letter><group>
<membership_ID>::=<code><group><number>`

], [Membership IDs:#enum(`&BAEE427`,
`#D56177354`,
`&EEE8`,
`#AAEF52`,
`#7233`,
`&aC3655`,
`&BBE59343`,
`CE67`,
  
)])

== Practice
#grid(columns:(2fr,1fr),column-gutter: 3em,
[
  Given the following BNF, which of the membership ID's are valid? \
  `<code>::=#|& 
<digit>::=1|2|3|4|5|6|7|8 
<letter>::=A|B|C|D|E
<number>::=<digit>|<digit><number>
<group>::=<letter>|<letter><group>
<membership_ID>::=<code><group><number>`

], [Membership IDs:#enum(`&BAEE427 ✓` ,
`#D56177354 ✓`,
`&EEE8 ✓`,
`#AAEF52 ✗`,
`#7233 ✗`,
`&aC3655 ✗`,
`&BBE59343 ✗`,
`CE67 ✗`,
  
)])

== Practice
That's it, really. You've covered all of the BNF rule content.

How does this appear as exam questions?

