#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))

#weeklyReview(title:"R200 - Assembly")

#QuickQuestions(
  firstSet: (
    (text(20pt)[Calculate the output of the following functional program:
    
    ```Haskell Add3 x = x + 3
    Times5 x = 5 * x
    print(Times5(Add3 4))```#v(-1em)],[`35`#v(-0.5em)]),
    (text(20pt)[Ao has drawn a tree, and claims that it is a binary tree.
    
    State the requirements for a tree to be a binary tree.#v(-1em)],text(22pt)[The tree must be rooted, and each node has #bold[at most] 2 children.#v(-0.5em)]),
    ([Expand and Simplify $ (A+B)dot (B+C) $],text(22pt)[
      $
        &= (A+B)dot (B+C)\
        &= A dot B + B dot B + B dot C + A dot C\
        &= A dot B + B + B dot C + A dot C\
        &= B dot (A + 1 + C) + A dot C\
        &= B dot 1 + A dot C\
        &= B + A dot C
      $
    ]),
  ),
  secondSet: (
    (text(20pt)[The following floating point\ number is written with an $8$ bit mantissa and a $6$ bit exponent.
    
    #FloatTable(mantissa: "10101000", exponent: "001110")

    Calculate its decimal value.],[\ $ (-1 + 1/4 + 1/16) times 2^(8+4+2)\ =-11264_10$]),
    ([In the context of TCP/IP, state the components of a socket, providing an example.],[#bold[IP Address] and #bold[Port Number].\ eg: `192.0.2.1:443`]),
  )
)

= Floating Point Binary Numbers
#note[KeyWords: `Mantissa; Exponent; normalisation; most significant bit; two's complement; fixed-point; floating point; standard form;`]#pause
#place(center+horizon,
image("img/203-spec.png", height: 120%))


== Standard Form
Very large and very small numbers can often have either a lot of 0's!

That's why standard form was created.
$
  -819, 000, 000, 000 = -8.19 times 10^11
$#pause
#align(center)[#box(width:10em)[#place(dy:-0.6cm,[-])
#place( dy:-0.9em, dx:-1mm ,FloatTable(mantissa: "8.19", exponent: "11"))]]
\ #pause
The mantissa holds all of the significant digits. 

The exponent defines where the decimal place needs to be to write the number in its original form.

== RECAP: Floating Point Numbers
#green-book

#only(1)[
  Convert the following into decimal:\
  #box(width:15em,FloatTable(mantissa: "10101000", exponent: "001110"))
]
#only(2)[
  $44.5$ is to be written as a floating point number.
  
  Complete the table:\
  #box(width:15em,FloatTable(mantissa: "1011001", exponent: "   "))
  #place(dy:-1.6cm,dx:0.95cm,[- ])
]
== Real Numbers in Binary
Inside computers, we use *floating point* binary to store non-integers. It's the same concept as Standard Form.

But, there's lots of ways to represent the same number there!
$
  500 = 5 times 10^2 = 50 times 10^1 = 50000 times 10^(-2) = 0.0005 times 10^(6)
$#pause

When storing floating point numbers in a computer, we will store *normalised* floating point numbers. There's some extra rules, but only one possible representation.

== Normalised Floating Point Numbers
#only(2)[#place(dy:1em,dx:1em,right+horizon,green-book)]
When storing Normalised Floating Point Numbers, we \ need to be able to represent negatives as well as positives.

We also want to start with a digit, although a $1$ would indicate a negative...#pause

*The Rules*
- The Mantissa must start with $1.0$ or $0.1$
- The Mantissa and Exponent are *twos compliment numbers*
- You must use the given number of digits in both.

== Real Numbers in Binary
Today, all of our examples will use $16$ bits: a $10$ bit mantissa, and a $6$ bit exponent.

It's not quite how the PC stores it, but that's beyond spec.

It's pretty close to what we'll see in the exam though!

== Converting floating point to decimal
#FloatTable(mantissa:"0100100100",exponent:"000100")
#only(1)[
  #place(dy:-3.1em,dx:1.6em,[- ])
  ^ Imagined binary point ^
]

#only(2)[
  $
    &1/2 + 1/16 + 1/128 times 2^(4)\
    = & 11
  $
]

== How to convert a floating point\ number to decimal
#green-book
1. Write in the column headings.
2. Write the mantissa and exponent as sums.

3. Apply the formula: $"mantissa" times 2^"exponent"$

#note[NOTE: This process doesn't change for normalised numbers!]

== You Try
Convert these numbers into decimal:

#grid(columns:(1fr,1fr),column-gutter: 40pt,
  [
    + #FloatTable(mantissa:"0100100100",exponent:"000100")
    + #FloatTable(mantissa:"1011100000",exponent:"000101")
    + #FloatTable(mantissa:"0111000000",exponent:"111111")
    + #FloatTable(mantissa:"0110100110",exponent:"000101")
  ],
  [
    #set enum(start:5)
    + #FloatTable(mantissa:"1000101100",exponent:"000110")
    
    + #FloatTable(mantissa:"1001101100",exponent:"000101")
    + #FloatTable(mantissa:"1001000000",exponent:"111101")
  ]
)