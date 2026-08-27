#import "../../../Templates/template.typ": *
#import "@preview/irif:0.0.2": *
#import "@preview/pinit:0.2.2"
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))

#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": plot, chart

= The benefits for teachers of having a deeper understanding of data science, machine learning and AI

== Overivew
- For schools

- For teachers

- For students

== Data Science, Machine Learning and AI in schools
// Gov. Plot
#place(dy:-1em,dx:22em)[#image("COVID Projections.png", width:10em)]
- It's out there, but not taught in here.

#uncover("2-")[- Online information can be hit and miss]

#uncover("3-")[- Misunderstanding the term 'AI' is damaging.]

#uncover("4-")[- A lot of people are talking about change. Are we ready?]

#align(bottom+right)[#text(gray)[src: #underline[#link("https://www.theguardian.com/world/2020/nov/06/how-uk-government-misrepresented-covid-projections-lockdown-explained")[The Guardian (2020)]]]]

== Engaging teachers
// Decision Tree
#place(dy:-1em,dx:17em)[#image("DS Plot.png", width:15em)]
- If I'm loving it, they start to too.

#uncover("2-")[- Demystifying processes]

#uncover("3-")[- Spacing & Interleaving]

#uncover("4-")[- Project Based Learning]

#uncover("5-")[- Cross-curricular links]

#align(bottom+right)[#text(gray)[src: #underline[#link("https://colab.research.google.com/drive/1UzX3HNFjBgYK-_Uo9o5Md1vfsq1Q396g?usp=sharing")[MEI Decision Trees Activity (2026)]]]]

== Engaging students
// K-means graph
#let dataPoints1 = ((20, 28), (58, 66), (32, 44), (63, 61), (26, 53), (48, 64), (28, 70), (32, 20), (61, 55), (55, 58), (43, 52), (44, 56), (20, 45), (37, 49), (47, 34), (45, 25), (55, 49), (34, 52), (54, 69), (30, 41), (41, 70), (70, 44), (41, 67), (43, 56), (31, 33), (28, 63), (30, 28), (33, 52), (30, 42), (32, 64), (22, 46), (58, 61), (52, 64), (34, 24), (29, 58), (45, 44), (28, 30), (60, 49), (26, 64), (25, 46), (62, 47), (37, 43), (39, 45), (48, 52), (48, 47), (57, 62), (49, 69), (49, 45), (23, 38), (35, 61))
#let dataPoints2 = ((62, 53), (84, 58), (56, 42), (76, 48), (62, 35), (82, 59), (74, 30), (59, 44), (55, 33), (86, 62), (64, 43), (85, 41), (74, 54), (66, 68), (54, 57), (65, 30), (81, 65), (71, 35), (55, 49), (84, 66), (79, 39), (67, 50), (62, 37), (56, 63), (83, 31), (78, 65), (63, 62), (81, 51), (65, 41), (58, 59), (57, 51), (80, 56), (72, 43), (89, 46), (70, 39), (72, 60), (74, 52), (61, 39), (53, 55), (77, 33), (84, 60), (74, 63), (60, 48), (68, 56), (82, 45), (58, 41), (70, 70), (85, 53), (59, 64), (73, 56))
#let dataPoints3 = ((41, 60), (62, 78), (39, 81), (58, 85), (33, 59), (65, 72), (44, 84), (55, 79), (30, 62), (64, 82), (40, 55), (61, 88), (36, 77), (59, 74), (43, 61), (68, 79), (34, 83), (56, 81), (42, 58), (63, 75), (37, 79), (60, 84), (45, 62), (66, 73), (35, 80), (54, 82), (38, 57), (67, 81), (41, 82), (57, 77), (32, 63), (69, 74), (44, 76), (58, 80), (39, 59), (62, 85), (40, 84), (55, 75), (31, 61), (65, 83), (43, 78), (59, 71), (36, 56), (64, 76), (33, 82), (56, 84), (42, 54), (68, 77), (38, 81), (60, 79))
#place(dy:-1em,dx:22em,)[#cetz.canvas({
    import draw: *

    plot.plot(size:(6,6),
    x-tick-step:50,
    y-tick-step:50,
    x-min:18,x-max:90,y-min:15,y-max:90,{
        
        plot.add(dataPoints1, style:(stroke:0pt), mark:"o")
        plot.add(dataPoints2, style:(stroke:0pt), mark:"o")
        plot.add(dataPoints3, style:(stroke:0pt), mark:"o")

        plot.add(((52,52),(100,98)),style:(stroke:1pt,color:black))
        plot.add(((52,52),(58,0)),style:(stroke:1pt,color:black))
        plot.add(((52,52),(0,80)),style:(stroke:1pt,color:black))

    })
})]
- Wait, the real world uses _Pythag_?

#uncover("2-")[- Girls in STEM]

#uncover("3-")[- All of my subjects are related & useful!]

#uncover("4-")[- Improved careers advice]

#uncover("5-")[- "I can do this!"]

== Summary
- Engaging schools

#uncover("2-")[- Engaging teachers]

#uncover("3-")[- Engaging students]


#uncover("4-")[\ \ Thank you for your time. \ \ Any questions?]