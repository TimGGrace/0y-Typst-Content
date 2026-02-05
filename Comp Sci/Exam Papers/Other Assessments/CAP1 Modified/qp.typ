#import "../../../../Templates/lib.typ": *

#show: aqa.setup-page.with(
  config: (
    level: "A-level",
    subject: "Computer Science",
    paper: "May Assessment Section D",
    materials: (
      "a computer",
      "a printer",
      "appropriate software",
      "the Electronic Answer Document",
      "an electronic version and a hard copy of the Skeleton Program",
      "an electronic version and a hard copy of the Preliminary Material.",
      "You must *not* use a calculator."
    ),
    instructions: (
      "Type the information required on the front of your Electronic Answer Document.",
      "Before the start of the examination make sure your *Centre Number*, *Candidate Name* and *Candidate Number* are shown clearly *in the footer* of every page (also at the top of the front cover) of your Electronic Answer Document",
      "Enter your answers into the Electronic Answer Document.",
      "Answer *all* questions.",
      "Save your work at regular intervals.",
    ),
    date: "Summer 2026",
    time: "",
    time-allowed: "1 hour 10 minutes",
    advice: (
      "You are advised to allocate time to each section as follows:\
      *Section A* - 40 minutes; *Section B* - 20 minutes; *Section C* - 20 minutes; *Section D* - 70 minutes; ",
      "*At the end of the examination* \ 
      Tie together all your printed Electronic Answer Document pages and hand them to the Invigilator.",
      "*Warning*\
      It may not be possible to issue a result for this paper if your details are not on every page of your Electronic Answer Document."
    ),
    series-code: "2526",
    specification-code: "7517",
    paper-code: "CAP3",
    numbering-style: "compsci",
    hide-borders: true,
    
  )
)

#aqa.front-cover()

