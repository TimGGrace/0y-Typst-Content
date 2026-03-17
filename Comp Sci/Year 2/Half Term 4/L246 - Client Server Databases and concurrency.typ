#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter
#notes
Recall that REST enables CRUD to be mapped to SQL commands. How?
1. What does CRUD stand for?

2. Which HTTP request methods map to SQL commands INSERT INTO, SELECT, UPDATE, DELETE FROM?

3. What is a client-server database?

#only(2)[
  - Database lives on a server.
  - Clients connect to the server to send requests to access the data.
  - Multi-user systems have to handle *concurrent requests*
]

= Client-server Databases
#note[Keywords: `database; client; server; concurrency; timestamp; record lock; serialisation; commit;`]
#only(2)[#place(dy:-5em)[
  #image("img/246 spec.png", width:100%)
]]

== April Assessment
First week back after Easter

Paper 1 Section B (programming in C\#)

== Concurrent requests
#mwb
Which of the following situations will cause problems? What could the problems be?
1. One client requests to read the _name_ field in the _student_ table on the server database. Another client requests to delete that student's record.
2. Two students request to read the _name_ field in the _student_ table on the server's database.
3. Seat T15 is free at the cinema, so you start the booking form. While typing your card details, someone else books the seat. You then complete the booking form.

== How can we deail with concurrent requests?
#notes
They can happen at any time, in any order. \ So how do we deal with that?#pause

Short answer: with difficulty...#pause

Some options:
- Serialisation
- Record locking
- Timestamp ordering
- Commitment ordering#pause

Before we get to that, we need to talk about *transactions*.

== Transactions
#notes
For a concurrent system, a *transaction* is a set of operations \ grouped together as a single, logical unit.

EG: \
#rect()[#bold[Bank transaction]
1. Withdraw £100 from my account.
2. Deposit £100 into your account.
3. Update the bank's database with \ details of the transfer.]#pause

Transactions must meet what is called the _ACID_ test.

== The ACID Test
#notes
#bold[#text(red)[A]#text(fadedBlue)[tomicity]]: Either all or none of the operations will be performed.#pause

#bold[#text(red)[C]#text(fadedBlue)[onsistency]]: Transactions must transform the system from one valid state to another (eg. conservation of money).#pause

#bold[#text(red)[I]#text(fadedBlue)[solation]]: Each concurrent transaction must execute as if it were the only transaction.#pause

#bold[#text(red)[D]#text(fadedBlue)[urability]]: Even if there is a system fault after the transaction completes, the data must be safe.

== Solving Concurrency: Serialisation
#notes
Ideally, we want to perform all concurrent requests at the same time.

Realistically, we can't do it all of the time.#pause

A schedule of transactions is *serialised* if it has the same effect as an equivalent serial schedule.

== Solving Concurrency: Record Locking
#only(1)[#mwb What is a record in a database?]
#only("2-")[#notes
  If a transaction accesses specific records, the server could *lock* \ the records (not the whole table) until the transaction has completed.

  Then, other transactions can access those records, possibly locking them.

]
#only("3-")[
  This will slow the system down, but is a quick way to ensure database safety.

  This can, however, lead to #text(red)[#bold[DEADLOCK]]...
]
#only(4)[#place(dy:-13em,dx:7em)[
  #image("img/246 meme.png", height:110%)
]]

== Solving Concurrency: Timestamp Ordering
#notes
Every record in the database can be given a timestamp, a record \ of when it was last modified.#pause

Every transaction will also come with its own timestamp.#pause

If a transaction completes, then the record's timestamp will be updated to match the transaction's.#pause

A transaction will only be allowed to read/write data if its timestamp is *more recent* than the record's timestamp.#pause

Timestamps don't have to be DateTime, just numbers which are comparable, increasing and (ideally) unique.

== Solving Concurrency: Commitment Ordering
If a transaction is to be successful, *all* of its operations must be carried out, and then the transaction can be *committed*.
$ A_1 -> A_2 -> A_3 -> A_4 -> "Commit" A $#pause

Broadly, *commitment ordering* is using an algorithm to decide which order to commit half-complete transactions to reduce conflicts and deadlocks.

== "Exam"ple Question!
#notes
#only(1)[#place(dy:1em,)[#image("img/246 Q.png", width:100%)]]
#only(2)[#place(dy:1em,)[#image("img/246 MS1.png", width:100%)]]
#only(3)[#place(dy:1em,dx:6em)[#image("img/246 MS2.png", width:60%)]]