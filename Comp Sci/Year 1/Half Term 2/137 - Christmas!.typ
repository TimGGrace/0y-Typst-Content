#import "../../../Templates/template.typ": *
// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)

== 
#Comp
Make a Christmassy program! \
Consider:
#place(dy:1em,)[#text(22pt)[
1. Snowfall :D
  - `struct` for a snowflake
  - snowflake falls down the console window
  - many snowflakes!
2. Big Green Tree
  - Randomly placed Baubles (ext: that flicker)
  - Randomly palced Lights (ext: that cycle colour)
3. Penguin racing!
  - Penguins move randomly across the screen
  - Elves like betting. Can you code that too?]
Extra Credit for well coded projects. Style is important!
]

