#import "../../../Templates/template.typ": *
#import "@preview/irif:0.0.2": *
#import "@preview/pinit:0.2.2"
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))
#import "@preview/fletcher:0.5.8": *
#let diagram = touying-reducer.with(
 reduce: diagram, cover: hide)

== KAR 59 - Mean Value and Improper Integrals
#notes
== Starter
#notes
#grid(columns:(1fr,1fr),
place()[#table(columns:3,
[Activity],[Duration],[Precedencies],
[A],[8],[-],
[B],[12],[-],
[C],[6],[-],
[D],[7],[A, B],
[E],[15],[A, B],
[F],[6],[C],
[G],[2],[C],
[H],[15],[D],
[I],[24],[D, E],
[J],[14],[D, E, F],
[K],[10],[G, J],
[L],[7],[J])],
[- Draw the 'Activity on Edge' diagram.
- Complete a forward pass and find the minimum completion time.
- Complete a backwards pass & find the critical path.
- Find the independent and interfering floats on each activity.
- Draw a cascade diagram.])

== Sol
#let blankItem = table(columns:2,inset:20pt,[],[])
#place(dy:-1em,dx:-1em)[#diagram(
  node-outset:-5pt,
  node(name:<1>,blankItem),
  node((1,-1),name:<2>,blankItem),
  node((1,0),name:<3>,blankItem),
  node((1,1),name:<4>,blankItem),
  node((2,-1),name:<5>,blankItem),
  node((2,0),name:<6>,blankItem),
  node((2,1),name:<7>,blankItem),
  node((3,1),name:<8>,blankItem),
  node((3,2),name:<9>,blankItem),
  node((4,0.5),name:<10>,blankItem),

  edge(<1>,<2>,"-|>",[A8], label-sep:0pt),
  edge(<1>,<3>,"-|>",[B12], label-sep:0pt),
  edge(<1>,<4>,"-|>",[C6], label-side:right, label-sep:0pt),
  edge(<2>,<5>,"-|>",[D7], label-sep:0pt),
  edge(<2>,<6>,"-|>",[E15], label-sep:0pt),
  edge(<4>,<7>,"-|>",[F6], label-sep:0pt),
  edge(<4>,<9>,"-|>",[G2], label-side:right, label-sep:0pt),
  edge(<7>,<8>,"-|>", label-sep:0pt,[J14]),
  edge(<5>,<10>,"-|>", label-sep:0pt,[H15]),
  edge(<6>,<10>,"-|>", label-sep:0pt,[I24]),
  edge(<8>,<10>,"-|>", label-sep:0pt,[L7]),
  edge(<9>,<10>,"-|>", label-sep:0pt,[K10], label-side:right),

  edge(<8>,<9>,"--|>"),
  edge(<3>,<2>,"--|>"),
  edge(<5>,<6>,"--|>"),
  edge(<6>,<7>,"--|>"),
)]

== Sol
#place(dy:-1em,dx:-1em)[#diagram(
  node-outset:-5pt,
  node(name:<1>,table(columns:2,inset:12pt,[0],[0])),
  node((1,-1),name:<2>,table(columns:2,inset:12pt,[12],[12])),
  node((1,0),name:<3>,table(columns:2,inset:12pt,[12],[12])),
  node((1,1),name:<4>,table(columns:2,inset:12pt,[6],[21])),
  node((2,-1),name:<5>,table(columns:2,inset:12pt,[19],[27])),
  node((2,0),name:<6>,table(columns:2,inset:12pt,[27],[27])),
  node((2,1),name:<7>,table(columns:2,inset:12pt,[27],[27])),
  node((3,1),name:<8>,table(columns:2,inset:12pt,[41],[41])),
  node((3,2),name:<9>,table(columns:2,inset:12pt,[41],[41])),
  node((4,0.5),name:<10>,table(columns:2,inset:12pt,[51],[51])),

  edge(<1>,<2>,"-|>",[A8], label-sep:0pt),
  edge(<1>,<3>,"-|>",[B12], label-sep:0pt),
  edge(<1>,<4>,"-|>",[C6], label-side:right, label-sep:0pt),
  edge(<2>,<5>,"-|>",[D7], label-sep:0pt),
  edge(<2>,<6>,"-|>",[E15], label-sep:0pt),
  edge(<4>,<7>,"-|>",[F6], label-sep:0pt),
  edge(<4>,<9>,"-|>",[G2], label-side:right, label-sep:0pt),
  edge(<7>,<8>,"-|>", label-sep:0pt,[J14]),
  edge(<5>,<10>,"-|>", label-sep:0pt,[H15]),
  edge(<6>,<10>,"-|>", label-sep:0pt,[I24]),
  edge(<8>,<10>,"-|>", label-sep:0pt,[L7]),
  edge(<9>,<10>,"-|>", label-sep:0pt,[K10], label-side:right),

  edge(<8>,<9>,"--|>"),
  edge(<3>,<2>,"--|>"),
  edge(<5>,<6>,"--|>"),
  edge(<6>,<7>,"--|>"),
)]
#place(dy:13em,dx:-1em,rect()[- Minimum Completion: 51 units
- Critical Path: BEI and BEJK])

#only(2)[
  #place(dy:2em,dx:18em)[
    #rect(fill:orange.lighten(40%),inset:20pt,radius:30pt,stroke:1pt)[
      How would they extend \ this question?
    ]
  ]
]

== Core Pure Blooket
#Comp

== CPA in an LP!
#notes
#only(1)[#place(dy:0.5em,image("img/exam2.png", width:80%))]
#only(2)[#place(dy:0.5em,image("img/exam2MS.png", width:100%))]