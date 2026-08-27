#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

#weeklyReview(title: "R219 - Functional Programming")

= Wireless Networks
#only(2)[
  #place(dy:-5em,)[#image("img/247 meme.png", width:100%)]
]
#only(3)[
  #place(dy:-8em,dx:3em)[#image("img\247 spec.png", height:110%)]
]

#KeyPerson(title: "Hedy Lamarr", image-path: "../Comp Sci/Year 2/Half Term 4/img/Hedy Lamar.png", content: [During WWII, this famous actress of the time learned about how the Germans were jamming radio frequency of torpedoes. She came up with a concept that came to be known as "frequency hopping."

Today, the frequency-hopping science presented in the patent serves as the basis for modern spread-spectrum communication technology (Bluetooth, Wi-Fi, etc.)
])

== Least secury coutnries (in terms of public WiFi)
Who do you think is in the top country for percentage of WiFi networks that are unsecured?
#only("2-")[
  1. Korea (47.9%)
]

#only("3-")[
  9. France (40.14%)
]

#only("4-")[
  12. US (39.31%)
]

#only(5)[Germany ranks top at 84.91% of access points secured!]

== CSMA/CA
#mwb
#uncover("1-2")[1. What does \ CSMA / CA stand for?

2. What should be written \ in the two empty rectangles?]
#place(dy:-5.5em,dx:15em)[#image("img/247 CSMA diagram.png")]
#only(1)[
  #place(dy:30pt,dx:26.8em)[#rect(width:103pt,height:33pt,fill:white)]
  #place(dy:120pt,dx:19.1em)[#rect(width:103pt,height:33pt,fill:white)]
]
#only(2)[
  #place(dy:1em)[
    #text(red)[Carrier Sense Multiple Access\ /Collision Avoidance]
  ]
]
#only("3-4")[
  #place(dy:-5em)[
    1. What does RTS / CTS \ stand for?

    2. Add RTS / CTS to \ your flow chart.
  ]
]
#only(4)[
  #place(dy:1em,)[
    #text(red)[Request to Send / Clear to Send]
  ]
]

== CSMA/CA with RTS /CTS
#mwb
1. What does RTS/CTS protect the wireless network from?

2. WPA/WPA2 encryption is one way that owners of wireless networks can use to secure the network. \ State #bold[two] other measures.

== Ada Computer Science Quiz!
#Comp
1. Login to Ada Computer Science. \ https://adacomputerscience.org/

2. View your assignment
  - Go to My Ada then My Assignments

== More practice time!
#Comp
The best way to practice this topic is to get onto the exam questions. They can feel pretty big, but they're normally smaller recall questions with *context*.