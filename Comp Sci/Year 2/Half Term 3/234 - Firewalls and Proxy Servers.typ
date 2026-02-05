#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter
#notes
Discuss:
1. What is Network Address Translation and why is it used?

2. Explain how Port Forwarding is a special case of Network Address Translation.

== "Exam"ple question
#notes
1. Describe how a host on a LAN can send a packet to another \ host on the same LAN. Include the cases when the destination host is on the same subnet and on a different subnet.
#align(right)[[5 marks]]
In your answer you must use the following words/phrases:
- Subnet mask
- IP address
- MAC address
- Default gateway
#uncover(2)[
  #place(dy:-13em)[#rect(fill:fadedYellow, stroke:1pt,radius:10pt)[
    #text(red,20pt)[
      Sender uses (bitwise AND of) #bold[subnet mask] and its #bold[IP address] to determine network ID (of its subnet); \
      Sender uses (bitwise AND of) #bold[subnet mask] and destination #bold[IP address] to determine network ID (of the destination host’s subnet); \
      If network IDs match, both hosts are on same subnet \// if network IDs do not match, hosts are on different subnets; \
      If on same subnet, link layer #bold[MAC address] of destination is found (using ARP) and link-layer frame/packet is sent; \
      If on different subnets, link layer #bold[MAC address] of sender’s #bold[default gateway] is found (using ARP) and link-layer frame/packet is sent; \
      #bold[Default gateway] removes link layer header / strips source and destination #bold[MAC addresses]; and checks destination #bold[IP address] on its other subnet; If this matches [same process as before using #bold[subnet mask] and #bold[IP address]];
      
    ]
  ]]
]

= Firewalls and Proxy Servers
#note[Keywords: `Stateful inspection; packet filtering; Proxy server;`]

== What do you already know?
#mwb
*What is a firewall?* \
Discuss with person next to you what is the purpose of a firewall and what does it do.

Is it hardware or software?

== Firewalls
#notes
Firewalls *block or allow* network traffic, based on a set of #text(fadedBlue)[rules and policies]. These can be predefined or dynamic.#pause

It can be #text(green)[#bold[hardware or software or both]].#pause

Usually sits between a trusted network (i.e. your home LAN or your PC) and an untrusted network (i.e. the Internet)#pause

Some additional fancy features include #text(orange)[#bold[stateful inspection]] and #text(orange)[#bold[proxy servers]]. More to follow on that.

== Rule Enforcement
#notes
*Option 1: Packet Filtering* \
Also known as *static filtering*. This is when a firewall controls network access by monitoring packets coming in and going out.#pause

It either passes them through or halts them based on:
- Source and Destination IP
- Protocols/Ports

#text(red)[#bold[Each packet is analysed separately.]]

== Example
We have a firewall connected to the default gateway.

#only("1-2")[A packet comes in. The Destination IP is for the network's web server.

The port number is 80.

Should it be let through? \ ]
#only(2)[Yes!]
#only("3-4")[A packet comes in with the IP for your computer!

The port number is 80

Should it be let through? \ ]
#only(4)[No!]

== Rule Enforcement
#notes
*Stateful Inspection* \
Also known as *dynamic filtering*, is when the firewall monitors traffic so long as there's an established connection. #pause

It can:
- Analyse packet types
- Look inside the payload
- Check for suspicious activity \ (eg. large amounts of data/packets suddenly) #pause

#text(red)[#bold[NOTE:] Connected packets will be analysed together.]

== Proxy Servers
A Proxy server is used between the network hosts and the firewall. It provides:
- *Anonymity* to users by accessing websites on their behalf.
- *Caching* for services accessed commonly.
- *Logging* of activities.#pause

_Content-filtering proxy servers_ are used to filter based on URLs or keywords in the content (like the school's safeguarding filters)#pause

#place(dy:-5em,dx:8em)[#rect(fill:yellow.lighten(50%),stroke:1pt,radius:10pt)[#align(center)[#link("https://quizlet.com/_9ctkhm?x=1qqt&i=23yt07")[#text(30pt)[Quizlet link for \ networks terminology!]]]]]

== "Exam"ple practice
#notes