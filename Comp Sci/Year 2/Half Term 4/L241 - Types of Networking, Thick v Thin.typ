#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

#weeklyReview(title:"R217 - SQL")

== Starter - Client-Server
#notes
1. Give *one* difference between a client and a server 
2. True or False?
  - An advantage of the client-server model is that there is no single point of failure
  - There are usually many more clients than servers
  - A single machine can host multiple servers at once
  - Clients are user-facing computers that send responses to servers. The servers then respond with requests
3. Explain why it is common practice for servers to be always running and for clients to be sometimes running

== Starter - Peer-Peer
#notes
#text(22pt)[1. Give two differences between peer-to-peer and client-server network models
2. True or False?
- Hosts on a peer-to-peer network can share computing power as well as file storage space
- Using peer-to-peer networks for file sharing is illegal in the UK
- An advantage of the peer-to-peer model is that there is no single point of failure
3. An advantage of peer-to-peer networks over client-server models is that they are cheaper for the founder to run. Explain why this is the case.
]

= Types of Network
#only(2)[
  #place(dy:-8em,dx:2em)[#image("img/241 spec.png", height:120%)]
]

== Examples of Client-Server
*Personal Web Server*
- Used for hosting a simple website
- Limited number of users
- Can be useful for always-on storage of photos/files
- Hosting of simple web-based services#pause

*NVidia GeForce Now*
- Cloud-based gaming platform
- Users do not need a fancy gaming PC to play graphics-intensive games.
- All they need is a decent Internet connection (and money!)

== Examples of Peer-Peer
#text(20pt)[*BitCoin*
- Decentralised Cryptocurrency operating using a peer-to-peer network
- There is no single administrator; the ledger is maintained by a network of equally privileged miners
- You wish you bought some in 2011 #pause

*BitTorrent*
- Protocol for peer-to-peer file sharing
- Instead of downloading a file from one server, clients exchange parts of files in a fair way with each other, until they have all pieces of the file they requested.
- Although the protocol is legal, problems stem from using the protocol to traffic copyright infringing works (e.g. pirated movies)]

= Thick vs Thin Client Computing
#note[Keywords: `Thick; Thin`]
#only(2)[
  #place(dy:-8em)[#image("img/241 spec 2.png")]
]
== Thin Clients
#notes
A *thin* client doesn't do much on its own.
- Limited Memory (RAM)
- Limited Secondary Storage
- Limited Processing capacity
They require a high speed Internet connection to be useful, using alternative services to perform difficult tasks. #pause

The result is that we need a server that has a high processing capability and large amounts of storage.

== Thick Clients
#notes
A *thick* client can do a lot for itself.

Normally considered necessary for:
- Gaming
- Image/Video processing
- Simulation/research
- Training complex AI models

== Why use each?
#discuss
Discuss and write a list of advantages and disadvantages \ for using a *thick client*

== Further Reading [Because it's interesting]
https://whatis.techtarget.com/definition/fat-client-thick-client
https://www.forcepoint.com/cyber-edu/thin-client

== Practice Time!
Let's keep working on AntSim, so we can become more powerful and simulate more ants.