#import "@preview/letter-pro:3.0.0" : letter-simple

#show: letter-simple.with(
  sender: (
    name: "Tim Grace",
    address: [Barton Peveril Sixth FOrm College\ Chestnut Avenue\ ],
    extra: [
      E-mail: #link("mailto:tgr@barton.ac.uk")[tgr\@barton.ac.uk]
    ]
  ),
  date: "31.03.2026",
  subject: "Reference for L. Harley"
)
As