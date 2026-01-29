#import "@preview/touying:0.5.5": *
#import "../../../Templates/template.typ": *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter
#mwb
What could this be?
#rect(text(size:20pt,[
0100101110101110101010100010101010101010111101100000101010101101 0110001000001010100110010101100010100000010010100101001101001010 0101010101000000010011000000000000001101111001010011010000010011 1011010101010100000000000000000000111111011011101010111111111111 0010100000000011010101010100101010010100000010101011111111110101 0100101000101001010101001100010001000000010101010110101010101110 0100010010010000101011101010000000100110000000000000011011110010 1001101000001001110110101010101000000000000000000001111110110111 0101011111111111100101000000001010100000001001100000000000000110 1111001010011010000010011101101010101010000000000000000000011111 1011011101010111111111111001010000000010101000000010011000000000 
]))
Write down as many possibilities as you can on your MWB.

== Definitions
#mwb

Split your MWB in two.
- On one side, write 'Digital' along with some diagrams, examples and notes.
- On the other side, write 'Analogue', and do the same.
\
#text(fill:rgb(100,40,100),
[Extension: Try to come up with definitions for the terms `Analogue` and `Digital`])

= Representation of Sound
#only(1)[`Keywords:
Sound; Vibrations; Analogue; Digital; Continuous; Discrete; Signal; Transducer; ADC; Sampling; Sampling Rate; Hertz; Frequency; Quantisation; Sampling Resolution; Compression; DAC; Reconstruction; Nyquist; `]
#only(2)[
//#place(center,dy:-10em,image(width:100%,"../../Images/221 Spec.png"))
]
//#only(3)[#place(center,dy:-7.5em,image("../../Images/211 Spec2.png"))]

== The process of recording a sound.
1. *Sound* is made of *vibrations* travelling through the air.
#pause
2. These vibrations collide with a *transducer* which converts the *kinetic* energy into *electrical* energy.
#pause
3. This signal has a *continuously* varying *analogue voltage*.
#pause
4. An *Analogue to Digital Converter (ADC)* is used to convert this signal into a digital waveform, and finally into binary.
5. *Optionally* the data can then be compressed before $dots$
#pause
6. The binary is *stored* for later use.
#pause
7. When you want to get that back, the whole process is done in reverse! A *DAC* is used rather than an *ADC*.

== All together now!
//#place(center,dy:20pt,image(width:115%,"../../Images/Sound Diagram.jpg"))

== Analogue to Digital Conversion
ADC happens with a few different steps. \ \
#pause
First, the signal is *sampled* (ie. measured) at specific time intervals. \
#emph([This is called the *Sampling Rate*]) \ \
#pause
Then, each *sample* is converted to a number based on the *sample resolution*. \ #emph([This rounds to the nearest value, loosing information. ]) \ This process is called *Quantisation*

#pause 
If you take more *samples*, or have a higher *sample resolution*, you will be storing more data, but be able to better re-create the sound later.

== Analogue to Digital Conversion
The *sampling rate* is measured in *samples per second* \ \
The *sample resolution* is measured in *bits per sample* \ \
#pause
That means we can calculate the *bit rate* of our recording by: \ 
#align(center)[
  *sample Frequency* $times$ *sample resolution* \ 
  $frac("samples","second") times frac("bits","sample") = frac("bits","second")$
]
#pause

== Nyquist Frequency
Whilst we need to measure each sample as accurately as possible (highest bits/sample) in order to accurately re-create the signal later, we don't *need* to do that for sample frequency. \ \
#pause
As the signal is later re-created out of overlapping $sin$ waves, we only need to record the sound at *double the highest frequency in the original sound* \ \
#pause
This is called *Nyquist's Theorem*. We can remember it as \
`'Just double it'`

== Example
When recording things for humans to listen to, the highest frequency that can be heard is $20"kHz"$. State the minimum Nyquist frequency necessary to perfectly record these sounds. \ \
#uncover("2-3")[#text(red)[
  $20,000 times 2 = 40, 000 "Hz" = 40"kHz"$
]] \

If each sample is encoded in 8 bits, how many Megabytes of storage are required for the coded results of $10$ seconds of audio? \ \
#uncover(3)[#text(red)[
  $40,000 times 8 &= 320,000 "bits/second" \ 
  320,000 times 10 &= 3,200,000 "bits" \ 
  frac((3,200,000),8 times 1000^2) &= 0.4"MB"$
]]

== You Try
#mwb
An analogue signal of frequency $1000 "Hz"$ is converted to a digital signal by sampling at the minimum Nyquist Frequency. \ Each sample is encoded in $8$ bits. \ How many megabytes of storage are required for the coded results if recording $10$ seconds of analogue signal? \ \
#place(left,dx:18em,text(purple)[
  #text(stroke:1pt+purple)[Extension:] \ 
  The sample resolution is \
  changed and the file size \
  is now approximately \
  $2$ Mebibytes. \
  What is the new sample \
  resolution in kilobytes?
])
#only(2)[
#text(red)[
Sampled at $2 times 1000 = 2000 "Hz"$\ 
$2000 "Hz" times 8 = 16,000 "bits per second"$ \
$16,000 times 10 = 160,000 "bits" $ \
$frac(160\,000,8 times 1000^2) = 0.02"MB"$ \
]]
#only(3)[
#text(purple)[
$2 "MiB" times 1024^2 times 8 =  16,777,216 "bits" $ \
$16,777,216 div 10 = 1,677,721.6 "bps"$ \
$1,677,721.6 div 2000 = 838.8608 "bp samp"$ \
$floor(838.8608) = 838 $ (Must round down)\
$838 div (8 times 1000) = 0.10475 "kB"$
]]


== Sampling Activity - *Important Instructions*
*READ ALL INSTRUCTIONS FIRST!* \ 
You will:
#enum(
  [Open the shared document *L211 - Sound activity shared* ],
  [Open the generated *worksheet 1* with your name],
  [Create your original signal and paste your encoded binary into the shared doc. #text(red)[DO NOT past the original signal yet]]
)
\
*THEN* you will find another student's binary string.
#enum(start: 4,
[Write your name in their "reconstructed signal" column to reserve that row],
[Reconstruct the signal in the *worksheet 2* with your name],
[Paste the reconstructed signal where you put your name in the other student's row]) \ \

== Sampling Acivity
Once your own binary data has been reconstructed, paste the original signal into your row and compare the reconstruction. \ \
#pause
#text(size:32pt)[Exam-style questions on classroom: \
*L211 - File Size Questions*]