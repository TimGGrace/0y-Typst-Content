#import "../../../Templates/template.typ": *

#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)
#let nonSpec(body) = text(black.lighten(50%))[#body]
#import "@preview/fletcher:0.5.8": *
#let diagram = touying-reducer.with(
 reduce: diagram, cover: hide)
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


== Starter
#mwb
1. Name some well-known application layer protocols.

2. What is the role of the MAC address in a TCP/IP network?

3. Calculate the Network ID for a subnet the host is on with the following configuration: \ IP Address: `129.11.35.53     ` Subnet Mask: `255.255.224.0`

4. Describe the role of a router in packet switching

5. Describe an additional functionality of a gateway beyond that of a router.


== Solutions:
#text(red, 23pt)[1. FTP, HTTP(S), POP(3), SMTP, SSH, IMAP
2. Unique to each device. Allows for targeted communication at the Link layer (between hosts on the same subnet) and changes every hop
3. `192.11.32.0`
4. Connects two networks together \
  Router determines which router to send packet to next \
  Router uses most efficient path to the destination  \
  Router monitors the network and updates routing table to reflect congestion \
  Router modifies the (MAC/hardware) addresses for the next hop
5. Protocol Conversion
]

= Routing on WANs and LANs 2

== Aims of this lesson
1. Recap how communication occurs within a LAN
2. Recap how communication occurs within a WAN
3. How does routing work outside of the WAN?
4. How do computers get an IP anyway?

== Recap from last time
#notes
#grid( columns:2, column-gutter: 20pt,
  LAN_diagram,
  [
    #only(1)[How does A know if a device \ is on its subnet (Network A)?]
    #only(2)[
      Host A applies its Subnet \ mask to both the source and destination IP. 
    
      If the result matches, then A can send directly to its target.

      How does it know what MAC to use?
    ]
    #only(3)[
      Host A will maintain a list \ of IP and MAC addresses for devices on its subnet. 
      
      If it identifies a host on a different subnet, or not it does not know the destination MAC, what does it do?
    ]
    #only(4)[
      Host A will send packets to D, \ its default gateway, if it does not know the destination host.

      How does D decide where to send the packet?
    ]
    #only(5)[
      Host D will apply the Subnet \ mask to its IP's and the destination IP. 
      
      It will likely have a different Subnet mask for each network it's on!
    ]
    #only(6)[
      If Host D doesn't know where \ to send it, it will send to host H, its default gateway.

      This is a problem, as return packets may not be able to get to hosts A to G. 

      This is because IPv4 addresses are *not always unique*.

      That's where this lesson's content comes in.
    ]
  ]
)
== IPv6
#notes
One possible solution is to use more bits than an IPv4 address.

IPv6 addresses use *128 bits*. They're written as: 
`2001:0db8:0000:0000:0000:ff00:0042:8329` \
Yes, those are hex. That's a huge number.

In fact, it's $2^128 approx 3.4 times 10^38$ (340 trillion#only("2-")[, trillion]#only("3-")[, trillion])

#only(4)[Changing over is *slow*, *complex*, *expensive* and often involves both software and hardware.

It is likely to be many years before IPv6 is used for most things.]

== Network Address Translation
#notes
We need another solution. One that works with existing IPv4. #pause

We have some devices with *routable IP addresses*, which are *globally* unique. These have to be assigned by a global organisation such as IANA#pause

We have many more devices with *non-routable IP addresses*, which are assigned internally to devices in a network.#pause

LAN gateway routers will have both addresses to allow devices in the LAN to talk to them, as well as for them to access the internet.#pause

== Network Address Translation
#notes
NAT is a process where a router will translate a non-routable IP \ address (and port) for a local host, into a routable IP for the internet (and new port number). #pause

In order to ensure that devices outside can communicate back, they then need to keep track of these mappings. The translation happens on both incoming and outgoing packets.#pause
#text(18pt)[
#table(columns:(1fr,1fr,0.5fr,1fr,1fr),
[Private Socket],[Destination S.],table.cell(rowspan:3)[#align(center+horizon)[$->$]],[Public Socket],[Destination S.],
[`192.168.1.48:25467`],[`212.58.226.75:80`],bold[#pin(0)`85.210.117.26:5643`],[`212.58.226.75:80`],
[`192.168.1.15:43434`],[`66.249.64.2:25`],bold[`85.210.117.26:5642`#pin(1)],[`66.249.64.2:25`],
)]#pause
#pinit-highlight(0,1,dy:5pt,extended-height: 5pt, fill:blue.transparentize(70%)) #pause
#place(dy:15pt)[When the response is received, the router must perform these swaps in reverse before sending the packet into the LAN.]

== Port Forwarding
#notes
When a device sends an HTTP request for a website, \ it will be using port 80.

That means the port will look 'wrong' if it's a NAT's public socket.#pause

The solution is to set up a rule called '*Port Forwarding*'. This is *an application of NAT*. #pause

The idea is that any traffic to a specific port will *always* be forwarded to a specific private host, on *the same port number*.

This is how home servers/websites operate through your home router.

== "Exam"ple question
#only(1)[#notes
#text(22pt)[The web server, which has the IP address 192.168.16.12, must \ be accessible from computers that are connected to the Internet but outside the company's own network.

As the web server has a non-routable IP address, it cannot be accessed directly from outside the network. Therefore, access to the web server will be facilitated by the External Router, which supports Network Address Translation (NAT) and port forwarding.

Explain how the External Router will have been configured so that the web server can be accessed by computers outside the network.
#align(right)[#bold[[2 marks]]]]]
#only(2)[
  #text(red)[
    Traffic arriving on the HTTP(S) port \// the port used for web services \// port 80/8080/443 (from outside the network) \// HTTP(S) traffic (from outside the network);

Must be forwarded (by the External Router) to the IP address of the Web Server \// IP
address 192.168.16.12;
  ]
]

== IP address configuration
On a small network, subnet masks, IP's etc. can be allocated *statically* (ie. a fixed value is set). 

This is useful if devices should always have the same IP, such a Raspberry Pi running a website. (not for public IP's, but for the Port Forwarding settings) #pause

On a larger network, this is very time-consuming.

== The Dynamic Host Configuration Protocol (DHCP)
#notes
When a computer is switched on, a message is sent to a DHCP server which allocates settings and sends them back. #pause
1. Host sends a request to discover the DHCP server #pause
2. Server offers a configuration (IP address, subnet mask, default gateway) to the host#pause
3. Host accepts the offer by echoing back the offer to the server#pause
4. Server confirms that the configuration has been allocated to the host#pause

This *reduces the time* it takes to *configure* hosts, and *reduces the need for expert knowledge*.

== "Exam"ple question
#notes
When a devices wishes to join *Subnet Z* it communicates \ with the DHCP server.

Explain:
- the purpose of the DHCP system.
- Why the DHCP system is used
- What will happen during this communication.
#align(right)[#bold[[4 marks]]]

== More practice!
#Comp
From BPCompSci, find exam questions that cover:
1. Network Address Translation (NAT)
2. Port Forwarding
3. Dynamic Host Configuration Protocol (DHCP)

You've already done questions from the 2018 paper. Avoid that one.