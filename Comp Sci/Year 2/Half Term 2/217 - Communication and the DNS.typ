#import "../../../Templates/template.typ": *
#import "@preview/fletcher:0.5.8"
#let fletcher-diagram = touying-reducer.with(reduce: fletcher.diagram, cover: fletcher.hide)

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter
#GClass
*L217 - Communication Methods Questions* \ \
On Google Classroom. You have 15 minutes.

== Intellicode is being disabled. RIP
#Comp
Why??
#text(24pt)[- JCQ has decided that it is too helpful and counts as AI assistance.]
#pause
Wait, what is intellicode anyway?
#text(24pt)[- The (somewhat) helpeful suggestions while you're typing in VS 2022.]
How?
#pause
#text(24pt)[
- IT will be removing it from the college computers in the coming months. You will need to manually "untick" it from the options at home and in college for now.]

= Communication and the DNS
#note([
  Keywords: `Serial; Parallel; Synchronous; Asynchronous; Start Bit; Stop Bit; Baud Rate; Bit Rate; Bandwidth; Latency;`
])

== More questions...
#notes
1. A very simple video streaming service sends uncompressed bitmap frames at 24 FPS. The images use a 12-bit colour format and have dimensions 640x480. If Alice’s computer network has a bandwidth of 42Mbps, will she be able to watch the stream? What is the minimum bit rate she needs? \
#uncover(2)[#text(fill:red,size:20pt)[No, she needs 88.47Mbps]]
2. Her network bandwidth has been increased to 51Mbps. What is the maximum frame rate at which she could theoretically watch the stream? 
#uncover(2)[
  #text(fill:red,size:20pt)[13.8FPS]
]


== URL
#only(1)[#mwb]
#only("2-")[#notes]
Here is a *Uniform Resource Locator* (URL): \
#align(center,[#pin(1)`https`#pin(2)`://`#pin(3)`www.w3schools.com`#pin(4)`/cs/cs_operators.asp`#pin(5)])
#only(1)[\ \ URLs describe a particular resource on a particular Internet host, as well as the method used to access that resource. \ \
Copy out the URL and label all relevant parts of it. If you don't know, guess!]
#only(2)[
  #pinit-highlight(1,2,fill:red.transparentize(60%),stroke:1pt)
  #rect(inset:10pt,radius: 10pt,fill:red.transparentize(60%),stroke:1pt,[
    Protocol: The method used to access the resource
  ])
]
#only(3)[
  #pinit-highlight(3,4,fill:red.transparentize(60%),stroke:1pt)
  #rect(inset:10pt,radius: 10pt,fill:red.transparentize(60%),stroke:1pt,[
    Fully Qualified Domain Name (FQDN) \
    Describes the Internet host. Made up of: \
    - Host Name [`www`]
    - Domain Name [`w3schools.com`]
  ])
]
#only(4)[
  #pinit-highlight(4,5,fill:red.transparentize(60%),stroke:1pt)
  #rect(inset:10pt,radius: 10pt,fill:red.transparentize(60%),stroke:1pt,[
    Path to access resource on the host server. \
    This describes a location that means something to the host server.
  ])
]

== Domain Names
#notes
FQDNs follow a *hierarchy*. \
#text(22pt)[(That's because it would be impractical/impossible for one server to manage all of the internet!)] \ 
#pause
When forming an FQDN, the *leaf* node appears first, then its parents separated by dots. \
EG:\
`mail.cam.ac.uk`, `barton.ac.uk`, `www.southampton.ac.uk` \
#pause
`www.raspberrypi.org`, `adacomputerscience.org` \ 
#pause
Each #bold[T]op #bold[L]evel #bold[D]omain (TLD) is managed by an internet registry and may have restrictions as to who can use it (eg. `.ac.uk` for academic institutions)

== Domain Names
Because it's interesting: \
*ICANN* manages this delegation. The `uk` TLD (also `bbc`, `wales`,`london`) is managed by the Registry `Nominet`. \ \
*Registries* manage a definitive list of who owns each domain *within* their part of the hierarchy. \ \
*Registrars* manage the selling of domain names across multiple TLDs (eg. 123reg)

== What is the purpose of a \ domain name server?
#only(1)[
  #mwb
  In pairs, can you come up with everything a DNS is supposed to do? Why do they exist?
]
#only(2)[
  #notes
  - To maintain a mapping between domain names and IP addresses (the TCP/IP stack uses IP addresses to locate Internet hosts, not domain names)
  - A registrar can help you find an *authoritative name server*, often their own.
  - This name server must always have the most up-to-date record of your server’s IP address.
  - A DNS Lookup is used to find the IP address of the host before the web request is sent.

]

== DNS Lookup
Let's look at howyour computer can get information for `raspberrypi.org`:
#align(horizon)[#place(dy:0.5em,dx:0em,rect(height:150pt,width:150pt,fill:rgb(250,100,150),
"     Client"
))
#only("2-")[
  #place(dy:7em,dx:5em,rect(height:150pt,width:150pt,fill:rgb(250,100,150),"  Recursive 
      name 
      server"
))
]
#only("3-")[
  #place(dy:-1em,dx:11em,rect(height:150pt,width:150pt,fill:rgb(250,100,150),"      Root
     name
     server"
))
]
#only("4-")[
  #place(dy:2em,dx:17em,rect(height:150pt,width:150pt,fill:rgb(250,100,150),"  ORG TLD
      name
     server"
))
]
#only("5-")[
  #place(dy:8em,dx:14em,rect(height:150pt,width:150pt,fill:rgb(250,100,150),text(20pt,"  raspberrypi.org 
           name 
           server")
))
]
]
== The whole process in one
#notes
#text(24pt)[1. The client requests the IP address from a *recursive name server*. This is probably managed by your ISP.
2. *ICANN* controls a handful of root DNS servers. These know about the IP addresses of *TLD name servers*.
3. The IP address of the relevant TLD name server is returned to the recursive name server.
4. The TLD name server is asked for the IP address of the *authoritative name server* associated with the domain.
5. There may be more steps for more levels of domain names. \ (e.g. barton.ac.uk)
6. Now we’ve found who to ask, the recursive name server finds out the destination IP address.
7. This is returned to the client.
]

== Your turn...
#mwb
Write out the steps of a full DNS lookup for the domain name `bbc.co.uk`
#pause
#text(24pt)[
  1. The client requests the IP for `bbc.co.uk` from a *Recursive Name Server*.
  2. This server then requests the IP of the `.uk` TLD from the *Root Name Server*.
  3. It then uses that IP to request the IP of the `.co.uk` domain name from the `.uk` TLD name server (NS).
  4. It can then ask for the IP for the `bbc.co.uk` authoritative name server from the `.co.uk` NS.
  5. It then requests the IP for `bbc.co.uk` from the `bbc.co.uk` authoritative name server.
  6. This is returned to the client.
]

== From AQA
#notes
*Purpose of the DNS*:
#text(24pt)[- Translates/maps FQDNs to IP addresses;]
*How it works*:
#text(24pt)[
  - DNS(s) stores a database of FQDNs and corresponding IP addresses 
  - DNS is a *distributed* database of mappings
  - (Individual) mappings are only known by some DNS servers
  - *DNS servers are organised into a hierarchy*
  - If one DNS server cannot resolve a lookup the query will be passed to another DNS server
  - DNS servers support load distribution by returning one IP address from a list
]

== Were you listening?
#mwb
Write definitions for each of these \ key words from today:
#grid(columns:(1fr,1fr),[
  - URL
  - TLD
  - Internet Registry
  - Internet Registrar
],
[
  - FQDN
  - Domain Name
  - Recursive Name Server
  - Authoritative Domain Name Server
])

#note([REFLECT: How did you do? \ You should probably take notes on any you couldn't recall!])