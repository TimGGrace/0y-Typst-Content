#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

#weeklyReview(title:"R218 - Binary")

#KeyPerson(
  title:[Clarence 'Skip' Ellis \ (1943 - 2014)],
  content:[
    Clarence was the first black person to earn a PhD in Computer Science (1969), and pioneered ‘operational transformation’, which allows real-time collaborative editing of documents.
  ],
  image-path:"../Comp Sci/Year 2/Half Term 4/img/ClarenceEllis.png",
  link-path: "https://www.blackhistory.mit.edu/archive/clarence-ellis-1975"
)

== How many acronyms do you know?
#notes
1. API #only(2)[#text(red)[Application Programming Interface]]

2. CRUD #only(2)[#text(red)[Create, Retrieve, Update, Delete]]

3. REST #only(2)[#text(red)[REpresentational State Transfer]]

4. JSON #only(2)[#text(red)[JavaScript Object Notation]]

5. XML #only(2)[#text(red)[eXtensible Markup Language]]

= REST, Websockets, \ CRUD, XML, JSON
#note[Note: This is all part of the client-server model of network communications]
#only(2)[
  #place(dx:10em,dy:-8em)[#image("img/JSON meme.png")]
]
#only(3)[
  #place(dx:9em,dy:-9em)[#image("img/243 spec.png", height:110%)]
]

== API
#notes
A set of protocols which define how two applications \ interact with each other.

EG: Steam API is used on PC Games to connect to friends and record game stats.

Some of you used APIs in your projects, which ones?

== Websocket protocol
#notes
In standard web communication, your device uses an \ HTTP request to get data from the server.

Every request is independent of other requests. #pause

Websocket is a way to communicate between a client and server which:
- Sets up a *full duplex connection* \ (they can both send at the same time)#pause
- Has a *lower data overhead* than HTTP (less for the server to deal with)#pause
- Is *persistent* #pause

When might this be useful?

== CRUD
#notes
#bold[C]reate

#bold[R]etrieve

#bold[U]pdate

#bold[D]elete

_Accessing data generally involves these 4 operations._#pause

What are the CRUD words used for HTTP and SQL?

==
#table(columns:(1fr,1fr,1fr),align:center,inset:10pt,
bold[CRUD],bold[HTTP],bold[SQL],
[Create],[POST],[INSERT],
[Retrieve],[GET],[SELECT],
[Update],[PUT],[UPDATE],
[Delete],[DELETE],[DELETE])

== REST
REST (*REpresentational State Transfer*) is an #bold[architectural style], and an approach to communications often used when developing web services.#pause

It is *not* a protocol, but a set of guidelines.#pause

RESTful Web services allow requesting systems to access and manipulate Web resources using a uniform and pre-defined set of stateless operations.

== How does REST API work?
You have a web-page, in HTML, which references some JavaScript code. \ How does that turn into something useful?

1. The REST API is created on the #bold[server] \
2. The #bold[client]'s JavaScript calls the API using HTTP(S)
3. The #bold[server] uses the database to service the request
4. The #bold[server] responds with data (usually formatted in JSON or XML)

== XML
#notes
This looks a little like HTML. Data is defined by tags:
`
<note>
  <to>Tove</to>
  <from>Jani</from>
  <heading>Reminder!</heading>
  <body>Don't forget me this weekend!</body>
</note>
`
These tags are all user-defined, depending on the application.

== JSON
#notes
This looks a little like a database record, with name-value pairs.
`
{
  "name":"John",
  "age":31,
  "city":"New York"
}
`
Many languages have functions to convert to/from JSON
== JSON
`{
  "name":"Product",
  "properties":
  {
    "id":
    {
      "type":"number",
      "description":"Product identifier",
      "required":true
    },
    "name":
    {
`

== JSON over XML
#table(columns:(1fr,1fr),
bold[Reason],bold[Explanation],
[Quicker and simpler to create],[
  Syntax and structure is simpler.
  They are also able to use arrays
],
[More compact],[
  The end code has fewer characters. XML needs 2x tags.
],
[Easier for humans to read],[
  Neater in terms of layout and style making it fast to read
],
[Faster for computers to parse],[
  JSON code can be parsed easily by a standard JavaScript function.
])

== All together now!
#link("www.desmos.com/calculator")[Example 1: Desmos]

#link("https://www.drfrost.org/do-question.php?aaid=141868746")[Example 2: Dr Frost Maths]

== Let's try some APIs!
#Comp
on BPCompSci.com: \
*W207 - C\# APIs*