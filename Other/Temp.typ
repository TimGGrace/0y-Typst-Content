#import "@preview/touying:0.5.5": *
#import "../Templates/Template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: white)
#import "@preview/circuiteria:0.2.1": *
== L210 5QQ Answer
#circuit({
  wire.stub((0,2),"west",name:"A")
  wire.stub((0,1),"west",name:"B")
  wire.stub((0,0),"west",name:"C")

  gates.gate-and(x:1,y:0.25,w:1,h:1,id:"AND")
  wire.wire("w0",((0,0),"AND-port-in1"),style:"zigzag")
  wire.wire("w1",((0,1),"AND-port-in0"),style:"zigzag")

  gates.gate-nor(x:3,y:1.25,w:1,h:1,id:"NOR")
  wire.wire("w2",((0,2),"NOR-port-in0"),style:"zigzag")
  wire.wire("w3",("AND-port-out","NOR-port-in1"),style:"zigzag")

  let q0 = (4.5,1.75)
  wire.stub(q0,"east",name:"Q")
  wire.wire("w4",("NOR-port-out",q0))
})

== L212 5QQ Answer
#circuit({
  wire.stub((0,2),"west",name:"A")
  wire.stub((0,0),"west",name:"B")

  gates.gate-xor(x:1.5,y:1.25,h:1,w:1,id:"XOR")
  wire.wire("w0",((0,2),"XOR-port-in0"),style:"zigzag")
  wire.wire("w1",((0,0),"XOR-port-in1"),style:"zigzag",zigzag-ratio: 20%)
  


  gates.gate-and(x:1.5,y:-0.25,h:1,w:1,id:"AND")
  wire.wire("w2",((0,2),"AND-port-in0"),style:"zigzag")
  wire.wire("w3",((0,0),"AND-port-in1"),style:"zigzag",zigzag-ratio: 60%)

  wire.intersection("w1.zig")
  wire.intersection("w2.zig")

  let q0 = (3.5,1.75)
  wire.stub(q0,"east",name:"S")
  wire.wire("q0",("XOR-port-out",q0),style:"zigzag")

  let q1 = (3.5,0.25)
  wire.stub(q1,"east",name:"C")
  wire.wire("q1",("AND-port-out",q1),style:"zigzag")
  
})

== 5QQ 216 Answers

#cetz.canvas({
  import cetz.draw: *

  line((1,0.75),(2,3))
  line((6.5, 0),(5,3))

  line((1.55,2),(1.05,1.5))
  line((1.55,2),(1.6,1.5))

  line((5.24,2.5),(5.3,3))
  line((5.24,2.5),(4.7,3))
  content(
    (0, 0), (2, 1.5),
    box(
      align(center+horizon)[Car],
      stroke: 1pt,
      width: 100%,
      height: 100%,
      inset: 1em,
      fill:fadedBlue.lighten(50%)
    )
  )

  content(
    (3.8, 0), (8, 1.5),
    box(
      align(center+horizon)[Company],
      stroke: 1pt,
      width: 100%,
      height: 100%,
      inset: 1em,
      fill:fadedBlue.lighten(50%)
    )
  )
  content(
    (0, 3), (8, 4.5),
    box(
      align(center+horizon)[Lease],
      stroke: 1pt,
      width: 100%,
      height: 100%,
      inset: 1em,
      fill:fadedBlue.lighten(50%)
    )
  )

  
})


== L120 5QQ Answer
#circuit({
  wire.stub((0,4),"west",name:"A")
  wire.stub((0,0),"west",name:"B")

  gates.gate-not(h:1,w:1,x:1,y:0.5,id:"NOTA")
  gates.gate-not(h:1,w:1,x:1,y:2.5,id:"NOTB")

  wire.wire("w0",((0,4),"NOTA-port-in0"),style:"zigzag")
  wire.wire("w1",((0,0),"NOTB-port-in0"),style:"zigzag",zigzag-ratio: 10%)
  wire.intersection("w1.zig")
  wire.intersection("w0.zig")

  gates.gate-and(h:1,w:1,x:3,y:3.25,id:"AND0")

  gates.gate-and(h:1,w:1,x:3,y:-0.25,id:"AND1")

  wire.wire("w2",("NOTB-port-out","AND0-port-in1"),style:"zigzag")
  wire.wire("w3",((0,4),"AND0-port-in0"),style:"zigzag")

  wire.wire("w4",("NOTA-port-out","AND1-port-in0"),style:"zigzag")
  wire.wire("w5",((0,0),"AND1-port-in1"),style:"zigzag")

  gates.gate-or(h:1,w:1,x:5,y:1.5,id:"OR")

  wire.wire("w6",("AND0-port-out","OR-port-in0"), style:"zigzag")
  wire.wire("w7",("AND1-port-out","OR-port-in1"), style:"zigzag")

  wire.wire("q0",("OR-port-out",(7,2)))

  wire.stub((7,2),"east",name:"Q")
})
#place(right+horizon,
  circuit({
  wire.stub((0,2),"west",name:"A")
  wire.stub((0,0),"west",name:"B")
  
  gates.gate-xor(h:1,w:1,x:2,y:0.5,id:"XOR")
  wire.wire("w0",((0,2),"XOR-port-in0"),style:"zigzag")
  wire.wire("w1",((0,0),"XOR-port-in1"),style:"zigzag")

  wire.stub((4,1),"east",name:"Q")
  wire.wire("q0",((4,1),"XOR-port-out"))
  })
)