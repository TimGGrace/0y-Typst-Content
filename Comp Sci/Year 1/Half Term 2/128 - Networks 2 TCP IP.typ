#import "../../../Templates/template.typ": *
#import "@preview/fletcher:0.5.8" : *
// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)
#let diagram = touying-reducer.with(
 reduce: diagram, cover: hide)


== Starter: TCP/IP Prework
#notes
1. What is a protocol?
#uncover(2)[#text(red)[Pre-agreed signals, codes and rules to be used for data and information exchange between systems]]
2. What does TCP/IP stand for?
#uncover(2)[#text(red)[Transmission Control Protocol / Internet Protocol]]
3. How many layers are there in the TCP/IP protocol stack? Can you name them?
#uncover(2)[#text(red)[Four: Application; Transport; Network; Link;]]

= TCP/IP
#note([Keywords: `TCP; IP; Application; Transport; Link; Network; MAC Address; Port;`])
#pause
#align(center+horizon)[
//#place(dy:-8em,dx:4.5em,image(height:120%,"../Images/TCPIP Joke.png"))
]

== The TCP/IP Stack
#only("1-2")[#notes]
#only(3)[#mwb]
#only("4-")[#notes]
#grid(columns:(1fr,0.7fr),
[
  #only(1)[
    In order for a device on the internet (*host*) to transfer a file from a program, #box(image(height:28pt,"../../../Templates/computer.svg")), to a program on another device, we use this! The TCPIP stack. \ \
  Data from the program is passed into the Application layer, which does "stuff", then passes the result onto the Transport Layer. (and so on...)
]
  #only(2)[
    At the other end, that whole process occurs in reverse.  \ \
    Rather than adding data, each layer will 'strip' its relevant data. \ \
    The program on the other end doesn't actually know that any transfer has happened, it's like the two programs are talking directly to each other!
  ]
  #only(3)[
    What do the four layers do? \ \
    Write down what you can remember from the prework. \ \
    *Then* share it with the people near you. Add to your lists!
  ]
  #only(4)[
    #text(red)[Application Layer] \
    Uses protocols designed to work with specific types of applications. \ \ These handle the interaction with the user \ (e.g. HTTP, IMAP, FTP)
  ]
  #only(5)[
    #text(red)[Transport Layer] \
    Breaks the data down into segments. \ \ 
    Allocates sequence numbers and source / destination port numbers \ \
    (TCP only) Acknowledges delivery of segments

  ]
  #only(6)[
    #text(red)[Network Layer] \
    Prepares packets for the Internet. \ \
    Source and Destination IP Addresses are added

  ]
  #only(7)[
    #text(red)[Link Layer] \
    Responsible for transporting the frames across each individual link between hops. \ \
    Uses MAC addresses for this communication
  ]
],
diagram(
  node-outset:-5pt,
node((0,0),rect(radius:5pt,width:300pt,height:50pt,fill:orange.lighten(50%),stroke:1pt,[Application Layer])),
node((0,0.5),rect(radius:5pt,width:300pt,height:50pt,fill:green.lighten(50%),stroke:1pt,[Transport Layer])),
node((0,1),rect(radius:5pt,width:300pt,height:50pt,fill:blue.lighten(50%),stroke:1pt,[Network Layer])),
node((0,1.5),rect(radius:5pt,width:300pt,height:50pt,fill:red.lighten(50%),stroke:1pt,[Link Layer])),

edge((0,1.5),(0.5,2),marks:"-solid",corner:left,[The Internet!]),
edge((0,0),(0,0.5),marks:"-solid"),
edge((0,0.5),(0,1),marks:"-solid"),
edge((0,1),(0,1.5),marks:"-solid"),
edge((0,-0.5),(0,0),marks:"--solid"),
node((0,-0.5),image("../../../Templates/computer.svg"))
))

== Encapsulation
#notes
Each layer adds some more data to the packets. This process is called encapsulation. \ \
#diagram(
  node((0,0),rect(inset:10pt,[Program Data])),
  pause,
  edge((-0.5,0.1),(0,0.3),corner:left),
  edge((0.5,0.1),(0,0.3),corner:right),
  edge((0.5,0.3),(0.7,0.5),marks:"-solid",corner:right),
  node((0,0.65),rect(inset:10pt,[Application Header])),
  node((0.7,0.65),rect(inset:10pt,[Data])),
  pause,
  edge((-0.65,0.7),(0,0.9),corner:left),
  edge((0.9,0.7),(0,0.9),corner:right),
  edge((0.7,0.9),(0.7,1.1),marks:"-solid"),
  node((0,1.3),rect(inset:10pt,[Transport Header])),
  node((0.7,1.3),rect(inset:10pt,[Data])),
) 
#pause \ ETC...

== Reliable Transport Layer (TCP)
#notes
#let vals = range(6).map(n=>text(20pt)[Packet #n/6 \ S: 1156 \ D: 80])
#text(24pt)[
  1. The transport layer receives data from the Application layer.
  #uncover("2-")[2. This is then split into smaller units called *packets*]
  #uncover("3-")[3. Each packet gets its own *packet header* containing:
    - Sequence number 
    - Total number of packets
    - Source Port Number
    - Destination Port Number]
  #only(4)[
    #rect(
      width:100%,height:100pt,fill:green.lighten(50%),stroke:1pt,
      align(center+horizon)[Application Data])
    ]
  #only(5)[
    #table(columns:(1fr,1fr,1fr,1fr,1fr,1fr),column-gutter: 5pt,fill:yellow.lighten(50%),
  ..range(6).map(n=>text(20pt)[Packet \ ` ` \ ` `]))
]
  #only("6-7")[
    #table(columns:(1fr,1fr,1fr,1fr,1fr,1fr),column-gutter: 5pt,fill:yellow.lighten(50%),..vals)
  ]
]
#only(7)[#text(26pt)[These packets are then individually sent through the internet! (Packet Switching)]]

== Port Numbers
#notes
#only(1)[There are some #text(blue)[#bold[well-known port numbers]], which relate to specific applications.

Often, client applications will not use those, and will use what are called #text(orange)[#bold[ephemeral port numbers]] \ (49152 - 65535)
]
#only(2)[
  You need to know a few of the common ones!
  #table(columns:3,
  [Protocol],[Use],[Port Number],
  [FTP (Control)],[File Transfer],[20],
  [FTP (Data)],[File Transfer],[21],
  [SSH],[Secure Remote Access],[22],
  [SMTP],[Mail Transfer],[25],
  [HTTP],[Website Access],[80],
  [POP],[Mailbox Access],[110],
  [IMAP],[Mailbox Access],[143],
  [HTTPS],[Secure Website Access],[443]
)
]

== Reliable Transport Layer (TCP)
#notes
Another job that the transport layer performs is the handling of *acknowledgements*.
#only("1-2")[#table(columns:(1fr,1fr,1fr,1fr,1fr,1fr),column-gutter: 5pt,fill:yellow.lighten(50%),..vals)]
#only(2)[When the packet is received by the intended recipient, *their transport layer* sends an *ACK*.]
#only("3-4")[
  #table(columns:(1fr,1fr,1fr,1fr,1fr,1fr),column-gutter: 5pt,fill:yellow.lighten(50%),..vals,
  table.cell(fill:green)[ACK 1],
  table.cell(fill:green)[ACK 2],
  table.cell(fill:green)[ACK 3],
  [],
  table.cell(fill:green)[ACK 5],
  table.cell(fill:green)[ACK 6])
]
#only(4)[When a packet hasn't been acknowledge within a specified time, the *original host transport layer* resends the packet.]
#only(5)[
  #table(columns:(1fr,1fr,1fr,1fr,1fr,1fr),column-gutter: 5pt,fill:yellow.lighten(50%),..vals,
  table.cell(fill:green)[ACK 1],
  table.cell(fill:green)[ACK 2],
  table.cell(fill:green)[ACK 3],
  table.cell(fill:green)[ACK 4],
  table.cell(fill:green)[ACK 5],
  table.cell(fill:green)[ACK 6])
]

== What is a socket?
#mwb
#only(2)[
  The combination of an #text(blue)[#bold[IP Address]] and Transport layer #text(orange)[#bold[port number]]

It represents a *particular process* running on a *particular Internet host* (computer)

e.g. 
#align(center)[#text(blue,36pt)[`38.160.150.31`]#text(36pt)[:]#text(orange,36pt)[`80`]]
]

== Network Layer
#notes
Each Transport Layer packet is passed to the Network Layer, where the Network Header is attached. \ \
This includes the *Source* and *Destination IP Addresses*, as well as a checksum. \ \
1. What is a checksum?
#uncover(2)[#text(red)[A value calculated based on the payload, used to confirm that the data hasn't been damaged.]]
2. How does it know the Destination IP Address?

== Link Layer
#notes
Each packet is then passed to the Link Layer, where the Link Header is added! \ \
This includes the Source and Destination *MAC Addresses*. These are physical addresses for the host and a device it is directly connected to. \ \
The Link Layer handles each *individual hop* between routers. (Packet Switching!!)

== All together now!
#GClass
Can you remember all of the steps? \ \
*L128 - Networks 2 Process* now on Google Classroom!