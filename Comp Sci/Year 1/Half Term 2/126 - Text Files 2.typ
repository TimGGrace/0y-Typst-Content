#import "@preview/touying:0.5.5": *
#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)

== What makes a good discussion?
#mwb
#grid(row-gutter:80pt,[CompSci involves a lot of discussion in lesson],text(blue,[What is the benefit of discussing ideas in lessons?

What features does an effective discussion have?

What makes a discussion ineffective?
]))


= Text Files 2
#note([Keywords: `File; Using; StreamReader; StreamWriter;`])

== The current method
#notes
Right now, we have: \
#enum[`File.ReadAllLines()`][`File.ReadAllText()`]

These work well to get all of the information from a text file into either an array or string. \ \
What possible problems could this cause?

== The 'Proper' Way
#notes
#uncover(1)[Let's annotate:]
#uncover("1-2")[#text(size:24pt)[```cs
string fileName = "MyFile.txt";
using (StreamReader reader = new StreamReader(fileName))
{
    while(!reader.EndOfStream)
    {
         Console.WriteLine(reader.ReadLine());
    }
}
```]]

== Now you try:
#Comp
On BPCompSci: \ \
*W112 – C\# Reading from Text Files \
W113 - C\# Writing to Text Files*

#lorem(20)
