#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== R206 - RegEx and BNF
#GClass
== Marking order for the NEA technical solution
#GClass
- On *GClassroom*. This will be the order that the technical solutions will be marked in
- You won't be penalised for continuing on your program before your marking slot
- You are *strongly* recommended to move onto the next chapter (Testing) now
- If you aren't at that point, make sure you \ *speak to me ASAP*

= NEA Testing

== Sections left to complete on the NEA
- Design
- Testing
- Evaluation
\ \
It's easier to do Testing before Design, so that's our next section to complete.

== NEA Deadlines
#text(fill:red,size:24pt)[All deadlines are at 4:00pm unless otherwise stated. Later deadlines may be subject to change.]
#table(columns:(1fr,0.5fr),
[#strike[Initial Project Proposal]],[#strike[22 April 2025]],
[#strike[Analysis Draft & Interview $1$]],[#strike[16 June 2025]],
[#strike[Analysis Prototype]],[#strike[26 June 2025]],
[#strike[Analysis - Final Objectives \ Tech Solution Check In]],[#strike[4 Sept 2025]],
[#strike[Tech Solution - Finished Program]],[#strike[10 November 25]],
[Testing Video (handed in with HW)],[2 December 25],
[Full draft write up of NEA],[6 January 2026],
[FINAL deadline with corrections and paperwork],[4 February 2026])

== Testing: From AQA
Testing demonstrates that the student has, or has not, achieved the objectives identified in the analysis.\ \
Testing is an opportunity for the student to demonstrate that their solution works and is robust but it can also provide evidence about the sophistication of the solution. \ \
The testing should focus on the more technically challenging parts of the solution

== How much testing should I do?
Testing should be *representative* according to AQA's guidance. \
That means that you should show vital systems work as intended (try a variety of inputs, test for expected fail-cases) \ \
It doesn't mean that you should test every little aspect of the program. \
You should be testing things that demonstrate that your project *fulfils its purpose*

== What to test
- Objectives
- Whole system
- Complex Parts
- Validation
- Mathematical tests

== What to test
*Objectives* \
Make sure you have tests that show you have met your objectives. \ \
It will usually take several tests to prove each objective. \ \
Any unproven objectives are assumed *incomplete*.

== What to test
*Whole system* \
Need to do a series of tests on how the whole system works. \ \
Eg if it is game have you tested it until you die/win? Have you tested it after 30 mins of game play?\ \
OR if it is a food ordering system have you actually done a complete order from start to finish?

== What to test
*Complex Parts* \ 
If you have clever code, then test it specifically so that we know it works and also highlights it to the examiner.

== What to test
*Validation* \
Test any validation if #bold[relevant] and only if #bold[clear] \ \
#text(red)[THERE IS NO NEED TO TEST A LOGIN PAGE TO DEATH] \
Examiners have said repeatedly that they aren't interested in this unless it is specifically tied to an objective.
== What to test
*Mathematical tests* \
If you test any calculations then you need to do the calculation by hand / use an online calculator as well to workout what the answer should be to compare to the answer your system gives. \ \
Hand-calculations can be shown in an appendix (added to the end of your NEA), and you can write the expected values into the test table.

== Test Evidence
For #bold[EVERY] test you will need *video evidence*. \ \
You will need to create a video that shows the results of *all* the tests you have planned. \
#pause
Yes, that includes the failed tests. \
#pause
Then in the test table, you put in at what time in the video there is evidence for the test. \
#pause
The video will be submitted as part of your final NEA submission. \ 
Examples of testing videos: *https://bit.ly/3kt1RdZ *

== The testing table
This will include, for every test:
- Linked objective
- Description of test
- Expected outcome
- Witnessed outcome
- Pass/Fail/Partial Pass
- Timestamp to video evidence

== Example testing table
#place(left,dy:-4em,dx:13em,rect(inset:20pt,stroke:3pt+red,radius:20pt,fill:yellow,[This is probably the most \ important slide today!!]))
#text(20pt)[
#table(columns:(0.5fr,1.5fr,1.2fr,1.2fr,0.7fr,1fr),inset:10pt,fill:rgb(255,230,255,150),
table.header([Test],[Description],[Expected],[Witnessed],[P/F],[Evidence]),
table.cell(colspan:6,[#bold[...]]),
table.cell(colspan:6,[#bold[Objective 3 - System will use Caesar to encrypt and decrypt]]),
[13],[Enter "Bonjour", shift 8],[Encrypted Message: "JWVRWCZ"],[JWVRWCZ],[Pass],[Video - 01:23],
[14],[Enter "URYYB JBEYQ", shift 13],[Decrypted Message: "hello world"],[helloworld],[Fail],[Video - 01:31],table.cell(colspan:6,[#bold[...]]))
*NOTE*: You should fill in the 'Expected' column before you do any tests!
]

== Now make your own testing table
#Comp
- Decide on the format you are going to use
- Put in two objectives and a few tests for each one
- You should fill in:
  - Objective number
  - Test number
  - Test data/description
  - Expected outcome
- Don't overthink this. You just need something to remind yourself how you're going to do this later.

== What should I do if a test fails?
#enum(
  [Don't panic.],
  [Record that the test failed.],
  [If this is a very quick fix (you know the line that's broken, 5 minutes tops), then fix it and re-record the test.],
  [If it's not a quick fix, you'll have a chance to talk about failed tests, \ under the heading 'Failed Tests'...]
)

== Importance
#mwb
*Put these tests in order of how important they are to include in the testing table* \
Program: Flashcard revision tool \ \
#text(size:24pt)[#enum(numbering:"Test A:",
[Showing DB Browser before and after studying a flashcard to show the priority value changing in the database is as expected],
[Showing that the background colour of the backside of the card is different form the front side],
[Showing that, on three consecutive runs of the system, the flashcards are presented in a different order])]

== Planning Errors
#mwb
*What is wrong with each of these test plans?* \
Program: Flashcard revision tool \ \
#text(size:24pt)[#enum(numbering:(it => "PLAN "+str(it)+":"),
[Showing that each of the 150 flashcards are able to be displayed to the user],
[Write tests in the testing table in the order that they appear during a run through of the revision program],
[Test just one run-through of the flashcard suggestion algorithm, entering in typical, expected inputs])]

== Where to find help
#Comp
BPCompSci $->$ NEA $->$ Testing \ \
#text(fadedBlue)[Textbook] (accessible in class) \ \
Look at the example videos: #text(fadedBlue)[https://bit.ly/3kt1RdZ] 