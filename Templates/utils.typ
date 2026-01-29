#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/irif:0.0.1" : *

#let teal = rgb(57, 180, 180)
#let orange = rgb(247, 148, 29)
#let navy = rgb(17, 54, 98)
#let fadedNavy = rgb(67, 89, 127)
#let fadedBlue = rgb(92, 122, 174)
#let fadedYellow = rgb(255,255,180)
#let BPVTeal = rgb(0,157,142)
#let BPVGreen = rgb(0,109,99)
#let blueBackground = rgb(218,227,243)
#let BPBlue = rgb(19,63,110)
#let BPTeal = rgb(3,152,158)


#let translucent(color) = rgb(..color.components().slice(0, -1), 40)

#let orangeText(body) = text(fill: orange)[#body]
#let redText(body) = text(fill: red)[#body]
#let navyText(body) = text(fill: navy)[#body]
#let bold(body) = text(weight: "bold")[#body]
#let answerText = redText
#let answer-text = redText
#let spotlight(size: 32pt, body) = align(center + horizon, text(size: size, body))
#let maths-context(size: 28pt, body) = align(center, text(size: size, body))
#let maths-question(size: 32pt, body) = align(center, text(size: size, body))

#let setTimer(title:"Brainscape Test",totalTime:30) = {
  let hours = calc.floor(totalTime / 60)
  let minutes = calc.rem(totalTime, 60)

  let titleArr = title.split()
  let new-title = titleArr.remove(0)
  while titleArr.len() > 0 {
    new-title += "%20" + titleArr.remove(0)
  }
  
  let hyperlink = "https://matdev.co.uk/timer/?h=" + str(hours) + "&m=" + str(minutes) + "&s=&message=Time's%20Up!&title="+new-title
  
  return link(hyperlink)[#rect(inset:15pt,fill:blue.lighten(80%),stroke:1pt+black,radius:15pt,[#title Timer])]
}

#let blue-slide-bg = rgb("#e0f5ff")

#let maths-starter(
  q1: [],
  q2: [],
  q3: [],
  q4: [],
  q5: [],
  prefer-left: false,
  size: 20pt,
  spacing: 1em
) = place(grid(
  inset: 1em,
  rows: (100%),
  columns: (1fr, 1fr),
  stroke: black,
  text(size: size)[
    #text(weight: "bold", fill: blue, "1"). #q1 #v(spacing)
    #text(weight: "bold", fill: blue, "2"). #q2 #if (prefer-left) [ #v(spacing)
      #text(weight: "bold", fill: green, "3"). #q3 #v(spacing)
    ]
  ],
  text(size: size)[
    #if (not prefer-left) [#text(weight: "bold", fill: green, "3"). #q3 #v(spacing)]
    #text(weight: "bold", fill: orange, "4"). #q4 #v(spacing)
    #text(weight: "bold", fill: red, "5"). #q5
  ]
))

#let topic(body) = place(top + left, dx: -2em, dy: -1em)[
  #box(fill: fadedBlue, inset: 10pt)[#pad(left: 1.5em)[#text(fill: white)[#body]]]
]

#let note(body) = place(bottom + left, dx: -2em, dy: -1em)[
  #box(fill: teal, inset: 10pt, width: 50%)[#pad(left: 1.5em)[#text(fill: white, size: 18pt)[#body]]]
]

#let mwb = place(top + right, dy: -1em, image(width: 13%, "mwb.png"))
#let yellow-book = place(top + right, dy: -1em, image(width: 13%, "yellow-book.png"))
#let red-book = place(top + right, dy: -1em, image(width:13%, "red-book.png"))
#let notes = place(top + right, dx:1em,dy: -1em, image(width:13%, "note-paper.svg"))
#let TLFMaths = place(top + right, dy: -1em, image(width:35%, "TLMathsFMBook.png"))
#let GClass = place(top + right, dy:-1.5em,dx:1em,image(width:20%,"GClassLogo.svg"))
#let Comp = place(top + right, dy:-1em,image(width:15%,"computer.svg"))

#let practiceSlide(title: "Practice", size: 38pt, body) = [
  == #title

  #mwb

  #spotlight(size: size)[#body]
]

#let BPRSlide(title:"BPRSlide",body) = [
  == BPR Slide
  #place(top+left,dy:-2em,dx:-2em,rect(stroke:0pt,fill:rgb(218,227,243),width:100%+4em,height:100%+4em))
  #place(top+left,dy:-1.3em,dx:-1.3em,rect(stroke:BPVGreen+10pt, width:100%+2.6em,height:100%+2.6em))
  #place(center,dy:-7em,dx:-11em,image("../Templates/BPRLogo.png"))
  #place(left,dx:4.2em,dy:0.5em,text(size:42pt,fill: BPVGreen,stroke:1pt+BPVGreen,[#title]))
  #place(top+left,[#body])
]

#let BPSlide(body) = [
  == Barton Slide
  #place(top+left,dy:-2em,dx:-2em,rect(stroke:0pt,fill:blueBackground,width:100%+4em,height:100%+4em))
  #place(top+left,dy:-1.5em,dx:-1.5em,image("../Templates/BPCornerPiece.png"))
  #place(top+left,dy:-1.5em,dx:-1.5em,rect(stroke:5pt+BPBlue,width:100%+3em,height:100%+3em))
  #place(top+left,[#body])
]


#let MWBQ(title: "Practice", questions:(([Q1],[A2]),([Q2],[A2]))) = {
  
  return for i in range(questions.len()) {
    slide[
      #let val = questions[i]
      == #title
      #mwb
      #val[0]
      #pause
      #redText(val[1])
    ]
  }
}

#let expand-number(
  text: "", 
  answer: false, 
  padTo: none) = if padTo == none { text.split("")
      .filter(c => c != "")
      .map(c => if c == " " [$" "$] 
                else if answer [#answer-text($#c$)] 
                else [$#c$]) 
              } else {
                let val = expand-number(text: text, answer: answer, padTo: none)
  return (..range(padTo - val.len())
                .map(_ => []), ..val)
}

#let draw-vector-field(dydx:(x,y)=>x + y, domain:(-3,3),range:(-3,3),step:1,stroke-width:0.8, size:(8,8)) = {

return cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  set-style(stroke:2pt)
  plot.plot(size:size,
  x-tick-step: none,y-tick-step: none, 
  x-label:[$x$],y-label:[$y$],
  axis-style: "school-book",
  x-min:domain.at(0),x-max:domain.at(1),
  y-min:range.at(0),y-max:range.at(1),
  {
    let sty = (stroke:blue+1pt)
    
    let x-val = domain.at(0) + step/2
    let y-val = range.at(0) + step/2

    while (x-val < domain.at(1)){
      while (y-val < range.at(1)){

        let m = dydx(x-val, y-val)
        let norm-m = calc.sqrt(m*m + 1)
        let dy = stroke-width * m / norm-m
        let dx = stroke-width * 1 / norm-m
        plot.add(((x-val - dx,y-val - dy),(x-val + dx,y-val + dy)),
        style:sty)

        y-val += step
      }
      y-val = range.at(0)
      x-val += step
    }
  })

  })
}