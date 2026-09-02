#import "../../Templates/Template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))

#BPRSlide(title:[],)[
  #place(left, dy:-5em, dx:-2em,
  image("img/intro_splash.png",width:120%))
]
#BPRSlide(title:[Engineering in Industry])[
  #grid(columns:(1fr,1fr,1fr),column-gutter: 20pt,
  [*Skills*\
  #text(18pt)[Give you employability skills that will be useful in many careers - not just engineering
  
  Will learn how to apply soft skills with the technical skills you are learning in your A-levels.  To apply your knowledge to real projects]
  ],
  only("2-")[
    *Experience*\
    #text(18pt)[
      The other aim is to try to give you as much experience of engineering in industry as possible.
      
      We do this by working with real companies and real engineers.
    ]
  ],
  only(3)[
    *Competitions*\
    #text(18pt)[
      Taking part in schemes and competitions to practise these skills
      
      Give you more to talk about on your personal statement that is not about your courses.  Can make you stand out from other applicants.
    ]
  ])
]
#place(bottom,dy:2.5em,dx:-1em,)[#note[Alex Colville (he/him)\ Tim Grace (he/him)]]

#BPRSlide(title:[What do we do in the lessons])[
  First few weeks we look at general soft engineering skills such as design, research, team working, communication skills etc.#pause

  After that you form groups and work for the next 6 months on an engineering project.#pause

  You have the choice of different types of projects you can take part in.

  ALL projects are in teams.
]

#BPRSlide(title:[Our Competitions])[
  #grid(columns:(1fr,1fr,1fr), align:center,
  image("img/BigBang_logo.png"), [], image("img/sft_logo.png"),
  [],image("img/cansat_logo.png"))
]
#BPRSlide(title:[CANSAT])[
  #text(22pt)[A CanSat is a simulation of a real satellite, integrated within the volume and shape of a soft drinks can. 

  The challenge for the students is to fit all the major subsystems found in a satellite, such as power, sensors and a communication system, into this minimal volume. 

  The CanSat is then launched by a rocket up to an altitude of approximately one kilometre, or dropped from a platform, drone, or captive balloon. 

  Then its mission begins. This involves carrying out a scientific experiment and/or a technology demonstration, achieving a safe landing, and analysing the data collected.]
]
#BPRSlide(title:"CANSAT")[
  This is an international competition run by the European Space Agency (ESA)

  We will be entering the UK\ competition, to find the UK team for\ the international comp.

  This group will have two teams\ (of up to 5), who will start the week\ beginning the 28#super[th] of September.
]
#place( dy:6em,dx:16.5em,
  image("img/can_blueprint.png")
)
#BPRSlide()[]
#place(
  image("img/cansat_launch.png")
)
#place( dy:-1.5em,dx:14em,
  image("img/cansat_team.png",width:50%)
)
#place( dy:9.4em,dx:14em,
  image("img/cansat_repair.png",width:50%)
)

#BPRSlide()[
  #grid(columns:(1fr,1fr), column-gutter: 40pt,
  image("img/BigBang_logo.png"),image("img/sft_logo.png"),
  [Prize: up to £200
  
  Involves making a prototype and a small amount of writing to go with it.],
  [Prize: up to £10,000
  
  Initially involves a detailed design and prototype]
  )
  #place( dy:1em,
    rect(inset:10pt,width:100%,
      [Summary: Come up with your own idea for an engineering\ project that we can enter for a competition to win prizes!])
  )
]
#BPRSlide()[]
#place(
  image("img/project_glove.png")
)
#place( dy:-2em,dx:14em,
  image("img/project_FireDetection.png",width:50%)
)
#place( dy:9.4em,dx:14em,
  image("img/project_UAVLaunch.png",width:50%)
)


#BPRSlide(title:[Design Considerations])[
  When creating a product (or bidding for funding), it's important to consider far more than “will it work”.#pause
  
  An engineering design is often judged on a few common criteria.
  Eg:#pause
  - Cost (keep it low!)#pause
  - Maximum strength (bridges, supports, buildings)#pause
  - Minimum weight (aircraft, boats)#pause
  - Aesthetics#pause
  - Ease of use (deployable dams, tools)
]
#BPRSlide(title:[Design Competition])[
  Today, your team will be making a bridge. You'll need to consider far more than just working!

  You will have time to:#pause
  1. Design#pause
  2. Build#pause
  3. Test/Demonstrate
]
#BPRSlide(title:[Design Competition:\ Minimum Requirements])[
  You need to make a bridge that complies with the following criteria:
  
  1. Maximum 40 pieces of material of any kind (The K'NEX only).#pause
  2. Must span at least 30cm.#pause
  3. Must support at least 1 (one) end user.
]

#BPRSlide(title:"End User")[
  #place(dx:13em,dy:-5em,)[
    #image("img/pusheen.png")
  ]
  #place(dy:-2em,)[#grid(columns:(0.8fr,1fr),
  [#v(2em)
  This is Pusheen.

  They are your end user.#pause
  
  No, you can't pick them up ahead of time. You can't do that with most end users either.#pause
  
  They may be adorable, but they are a harsh bridge critic.],
  [])]
]
#BPRSlide(title:[Design Competition:\ Judging Criteria])[
  The bridges will be judged on:#pause
  
  - Longest bridge#pause
  - Cheapest bridge#pause
  - Strongest bridge#pause
  - Most pleasing bridge#pause
  - Best sales pitch#pause
  
  Any bridge which fails the minimum requirements will not be judged.
]

#BPRSlide(title:[Example Pitch:\ Bridget Bridgeyface])[
  #place(
    image("img/bridget_bridgeface.png")
  )
  #place(dy:9.5em,)[
    #text(22pt)[Total Length: 62cm (over double the minimum!)\
    Significantly over-strength. Can support 2 CGP Textbooks.\
    Bonus feature: Looks super bridgey. Inspires confidence in its prowess.\ ]
    #text(18pt)[36 pieces. Almost maximum budget. Buys a much stronger bridge.]
  ]
]
#BPRSlide(title:[Design Competition:\ Time Frame])[
  1. Design (10 minutes)
  2. Shopping (10 minutes)
  3. Build (20 minutes)
  4. Test/Demonstrate (10 minutes)

  5. Judging (rest of time)
]

#BPRSlide(title:[Design])[
  Only allowed to #bold[look] at K'Nex

  MUST have team name by the end of this time.
]

#BPRSlide(title:[Shopping])[
  Send one person to pick up what you need
  
]

#BPRSlide(title:[Building])[
  Build AND make your google slide 
]

#BPRSlide(title:[Testing])[
  We will check the minimum requirements
]

#BPRSlide(title:[Judging])[
  See your bridges and slides!
]

#BPRSlide(title:[Previous Bridges])[
  A few previous bridges, and general information.
]
#BPRSlide(title:[Previous Bridges])[
  #place( dy:-1em,
    image("img/bridge_ImCrossinIt.png")
  )
]

#BPRSlide(title:[Previous Bridges:\ McBridge])[
  #grid(columns:(1fr,0.8fr), column-gutter: 20pt,
  image("img/bridge_McBridge.png"),[
    Total Length: 32cm\
    15 pieces. Super cheap!\
    Bonus feature:\
    #h(1em)Brand recognition
  ])

]
