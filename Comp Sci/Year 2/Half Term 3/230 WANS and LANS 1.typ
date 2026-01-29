#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

#let nonSpec(body) = text(black.lighten(50%))[#body]
#import "@preview/fletcher:0.5.8": *
#let diagram = touying-reducer.with(
 reduce: diagram, cover: hide)

== Starter - Network Topology
#notes
#place(dy:20pt)[
1. True or false:
  #enum(numbering:"a)")[In a physical bus topology, every device can listen to every other device][
In a star topology, devices can never listen to devices other than those it is communicating with][
A star topology is better than a physical bus topology because there is no single point of failure]
2. What is the difference between a physical bus topology and a logical bus topology?
3. What advantages does a star topology offer over a physical bus topology?
]
== Starter 2 - TCP/IP Stack
#notes
#place(dy:-4em,dx:13em)[
  #rect(
    inset:10pt,fill:orange.lighten(10%),stroke:1pt
  )[Application] 
]
#place(dy:-4em,dx:19em)[
  #rect(
    inset:10pt,fill:green.lighten(10%),stroke:1pt
  )[Transport] 
]
#place(dy:-2.3em,dx:14.15em)[
  #rect(
    inset:10pt,fill:yellow.lighten(10%),stroke:1pt
  )[Network] 
]
#place(dy:-2.3em,dx:19em)[
  #rect(
    inset:10pt,fill:blue.lighten(40%),stroke:1pt
  )[Link] 
]
Match the following statements to one layer of the TCP/IP stack:
1. Splits up a message into packets.
2. Provides the interface and protocols needed by the user
3. If it does not receive an ACK for a packet, it will resend.
4. Sends an ACK when it receives a packet.
5. Controls physical connection between hardware devices using MAC addresses
6. Adds the IP address of the source and destination.
7. Adds the port number of the source and destination.
8. Adds the sequence number of a packet.

== Starter - Definitions
#notes
1. Define *IP address*
#uncover(2)[
  #text(red)[An #bold[IP address] is a unique number which is used to identify a host computer or node which communicates over IP on the Internet]
]
2. Define *MAC Address*
#uncover(2)[#text(red)[
  A globally unique 48 bit number built into the network card by the manufacturer.
  
Usually written like		3a:4b:e2:12:fe:59]]

= Routing on networks
#note[Keywords: `LAN; subnet mask; default gateway; network ID; host ID; MAC address;
`]
== Aim for this lesson:
Assuming we have found the destination IP address (DNS has already happened)

Today: How to get the packet to a destination on the same network.

Next time: Not the same network...

== Example LAN
#let host_properties = (radius:5pt,width:50pt,height:50pt,fill:orange.lighten(50%),stroke:1pt)

#let LAN_diagram = {
  diagram( spacing:0.75em,
  node-outset:-15pt,
  
node((0,0),rect(..host_properties)[A],name:<A>),
node((0.25,0.6),text(10pt)[10.3.1.23]),
node((1,0),rect(..host_properties)[B],name:<B>),
node((1.3,0.6),text(10pt)[10.3.1.26]),
node((2,0),rect(..host_properties)[C],name:<C>),
node((2.21,0.6),text(10pt)[10.3.58.12]),
edge(<A>,(0,1),(2,1),<C>),
edge(<B>,<D>),
node((1,2),rect(..host_properties)[D],name:<D>),
node((1.65,1.6),text(10pt)[10.3.0.200]),
node((1.65,2.28),text(10pt)[10.2.1.100]),
node((3,0.5),[Network A]),

node((0,3),rect(..host_properties)[E],name:<E>),
node((0,3.4),text(10pt)[10.2.1.85]),
node((0.75,3),rect(..host_properties)[F],name:<F>),
node((0.75,3.4),text(10pt)[10.2.19.2]),
node((1.5,3),rect(..host_properties)[G],name:<G>),
node((1.5,3.4),text(10pt)[10.2.11.23]),
node((2.38,3),rect(radius:5pt,width:50pt,height:50pt,fill:blue.lighten(50%),stroke:1pt)[H],name:<H>),
node((2.65,3.4),text(10pt)[212.11.32.64]),
node((2.2,2.6),text(10pt)[10.2.1.44]),
edge(<E>,(0,2.5),(2.389,2.5),<H>),
edge(<F>,(0.75,2.5),(1.5,2.5),<G>),
edge(<F>,(0.75,2.5),(1,2.5),<D>),
node((3.2,2.5),[Network B]),
node((1.5,4),image("../../../Templates/computer.svg", width:50pt),name:<Comp>),
edge(<H>,(2.38,4),<Comp>),
node((0.4,4),[The Internet])
)
}
#grid(columns:(1fr,1fr), column-gutter: 40pt,
[
  #place()[#LAN_diagram]
],
[
  We are going to look at how a computer, eg Host A, is going to send a packet to another computer within the LAN.
  #v(3em)
  #uncover(2)[How does a computer know if the destination computer is on the same subnet (or LAN) as it is?]
])

== IPv4
#notes
Devices will have an *IPv4* address
- A 32 bit number
- Normally written as 4 decimal numbers
  - eg: 123.45.67.123
- Approx. 4 billion options.
- *NOTE*: not enough for the world!

The IP address does contain some useful information, hidden within those digits.

== Network and Host identifiers
#notes
An IPv4 address contains:
1. Network Identifier (Network ID)
2. Host Identifier (Host ID)

Those are stored as binary, and concatenated to form a single 32 bit number.#pause

How many bits are used for the Network vs Host IDs is up to the network designer, so how do we figure it out?#pause

Lets open Command Prompt and see what we can find with the command `ipconfig`

== Subnet Masks
#notes
A *subnet mask* is used to identify the subnet (sub-network) that \ the host is on. It will be either written as a number of bits, or a number similar to an IPv4 address:

EG1: 107.56.94.111/19 $=>$*19 digit Network ID*\ #pause
EG2: 255.255.252.0 $=>$*22 digit Network ID*#pause

Using `ipconfig` and the subnet mask, lets work out the Network ID for each of your PC's, to see if we're all on the same network!

This operation uses the *Bitwise AND* function.

== Number of Hosts
#notes
Using the subnet mask to find the Network ID also tells us how \ many digits are available for the Host IDs. #pause

That would let us calculate the number of Host devices that a network can handle. #pause

There are some Host ID's that are reserved for network features, which you need to know.

On the following slides, if text is in #nonSpec[grey] then it is beyond our spec, but very useful to know.

== IPv4 - reserved addresses
#notes
#table(stroke:0pt,columns:(1fr,1.5fr),row-gutter: 30pt,
[Host ID 0 (All *0s*)],
[
  Reserved as a *network identifier*
],
[Host ID max (All *1s*)],
[
  Reserved as a *broadcast address* on a subnet (sends to all hosts). Always the highest possible address.
],
nonSpec[HostID 1], nonSpec[Often used as the default address of a router]
)

== Calculation Example
#notes
Given the IPv4 address 107.56.94.111 \ and the Subnet Mask: 255.255.224.0

Calculate:
1. The Network ID
2. The length of the Host ID
3. The maximum number of Host IDs available on the network.

*EXT:* Calculate these for the network your PC is on! \ (`ipconfig` if you have lost the information)

== Setting up a network
#notes
1. Every computer has a unique *MAC address*.

2. Each computer is assigned an *IP address*. These numbers are assigned by an Internet authority and/or determined by the LAN designer. Can be allocated automatically.
3. Each computer will generally need to be given a *Subnet mask*.
4. *The Default gateway*: The IP address of a computer to send packets to if the destination IP address is unknown

== More `ipconfig` information
#mwb
Using the command `ipconfig -all` will reveal even more information.

Can you find:
1. Default Gateway
2. MAC address for your device.

*EXT*: Was your computer assigned its IP automatically, using DHCP?

== Practice
#notes
#only(1)[Given: \
`IP:          123.201.144.03
Subnet Mask: 255.255.192.0`

Find:
1. The Network ID
2. The Broadcast ID
3. The number of possible devices on the network.
4. Which of the following devices are on the same network?
#place(dy:10pt)[
  #table(columns:(1fr,1fr),
  [a) `123.201.147.05`],
  [b) `123.202.143.06`],
  [c) `123.201.199.03`],
  [d) `123.201.12.04`])
]]
#only(2)[Given: \
`IP:          68.144.17.08
Subnet Mask: 15 bits long`

Find:
1. The Network ID
2. The Broadcast ID
3. The number of possible devices on the network.
4. Which of the following devices are on the same network?
#place(dy:10pt)[
  #table(columns:(1fr,1fr),
  [a) `68.144.255.05`],
  [b) `86.202.143.06`],
  [c) `68.145.123.128`],
  [d) `68.146.17.09`])
]]

== How to send data in a LAN
#notes
#grid(columns:(1fr,1fr),column-gutter:40pt)[#place(dy:10pt)[
  #LAN_diagram
]][
  Computers A, B and C are \ given the default gateway of `10.3.0.20` and mask `255.255.0.0` #pause

  Computer A wants to send to a device at `10.3.58.12` #pause

  What does it do?
]

== The process:
#notes
#grid(columns:(1fr,1fr),column-gutter:40pt)[#place(dy:10pt)[
  #LAN_diagram
]][
  1. Computer A applies the \ subnet mask to *both its own* IPv4 address *and the destination* IPv4 address.#pause
  2. If the destination is on the *same subnet* (they match), it looks up the *MAC address* for the destination, and sends. #pause
  3. If not, it sends to the default gateway, D
]

== A to C
#grid(columns:(1fr,1fr),column-gutter:40pt)[#place(dy:10pt)[
  #LAN_diagram
]][
  1. Computer A applies the \ subnet mask to *both its own* IPv4 address *and the destination* IPv4 address.#pause
  2. Matching subnets. Look up the MAC for C. #pause
  3. Send the packet
]

== A to F
#grid(columns:(1fr,1fr),column-gutter:40pt)[#place(dy:10pt)[
  #LAN_diagram
]][
  1. Computer A applies the \ subnet mask to *both its own* IPv4 address *and the destination* IPv4 address.#pause
  2. No match. Look up MAC for default gateway and send.#pause
  3. D applies the appropriate subnet masks to each of its IPv4 addresses to decide where to send it. #text(18pt)[(process repeats)]
]

== Next time:
#notes
Sending from A into the Internet follows a similar process, \ but we need to do something about those IPv4 addresses.

What's the problem with using them for the entire world?#pause

#rect(fill:blue.lighten(50%),inset:10pt,radius:15pt,stroke:1pt)[
  #text(30pt)[There aren't any more of them! Devices don't have a unique IPv4 address.

Solution? IPv6...]
]