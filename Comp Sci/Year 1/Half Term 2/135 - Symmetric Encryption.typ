#import "../../../Templates/template.typ": *
// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)

#weeklyReview(title: "Brainscape Test 2")

== Try to decode:
#notes
#rect(inset:20pt,radius:30pt,fill:yellow.lighten(50%),stroke:1pt,[`20,15,4,1,25   23,5   1,18,5  12,5,1,18,14,9,14,7   1,2,15,21,20   19,5,3,18,5,20   3,15,4,5,19    1,14,4   3,15,13,16,21,20,5,18    19,3,9,5,14,3,5    9,19    7,18,5,1,20!
`])
#only(2)[
  #place( dy:1em,
    rect(inset:20pt,radius:30pt,fill:red.lighten(50%),stroke:1pt,text(38pt)[
      Today we are learning about secret codes and computer science is great!
    ])
  )
]

= Symmetric Encryption
#note([
  Keywords: `Encryption; Decryption; Cipher; Plaintext; Ciphertext; Caesar Cipher; Vernam Cipher; One-Time Pad; Mathematical Security; Computational Security`
])

== Practice with Encryption
#GClass
The best way to get to grips with this is to see \ what you've already got and can work out! \ \
#pause
#text(22pt)[
  A murder has been committed at Barton Peveril. \
  Your job, in pairs, is to decode the clues to find
  - the identity of the murderer
  - the murder weapon
  - the room in which the murder took place
  
  When you have the answer to a clue, write it as a private comment. If correct, you’ll gain access to the next clue. \ 
  All 5 clues are needed to solve the murder.  \ 
  *YOU ARE NOT TO USE THE INTERNET TO HELP YOU EXCEPT WHEN THE CLUE TELLS YOU!!!!*
]

== Terminology
#notes
*Encryption* 
#uncover("2-")[- Using an algorithm to change data so that it can only be read by the intended recipient(s) ]
*Cipher*
#uncover("3-")[- The algorithm which is used to encrypt or decrypt]
*Plaintext*
#uncover("4-")[- The unencrypted message]
*Ciphertext *
#uncover("5-")[- The encrypted message]


== Symmetric Encryption
With a *symmetric* encryption scheme, the *same key*, $k$, is used for both the *encryption and decryption* algorithms.

In *asymmetric* encryption, *different* keys are used.

== Caesar Cipher
#notes
The Caesar cipher is a type of *substitution cipher*. It replaces each plaintext letter with a different one a fixed number of places down the alphabet.  \ \
eg \
Replace each letter L  with (L+3) mod 26 \
"Attack at dawn" becomes "Dwwdfn dw gdzq" \ \
*Two components: *
- Algorithm: Shift characters by a fixed amount 
- Key: the fixed amount each letter is shifted

== You Try
#mwb
1. Encrypt “Hello, world” using a key of 4. \ 
  #uncover(2)[#text(red)["Lipps Asvph"]]
2. Decrypt “Tevsec Mkockb” using a key of 10. \ 
  #uncover(2)[#text(red)["Julius Caesar"]]
3. #text(purple)[#bold[Extension:]] Can you crack the ciphertext  \ “alex  mw  xlmw  xcti  sj  irgvctxmsr  geppih” \ 
  #uncover(2)[#text(red)[“what is this type of encryption called” k = 4    Answer: Substitution Cipher]]

== Pros and Cons
#mwb
Discuss in pairs:
What are the disadvantages of the Caesar Cipher? *Write down two*.

#uncover(2)[#text(red)[
  - Word structure is preserved.
    - Solution: break message into equal-length blocks.
      - dww dfn dwg dzq
  - Letter frequency is a big clue
    - e,t,a,o most common English letters.
    - Using a single key preserves frequency.
  - Very quick to crack using brute force
    - Fundamental problem: key length (in binary) is much shorter than the message
]]

== Vernam Cipher
#notes
AKA - One Time Pad \ \
Concept: Bitwise XOR the whole message with an equally long random binary key. \ \
The key must be:
- The same length as the message (in binary)
- XORed with the plaintext to prodice ciphertext

Usefully, XOR is a self-inversing function, so if both people have the key, they can both decrypt!

== You Try
#mwb
1. Encrypt “Hi” using a key of `1011 1001  0101 0111`. 
#uncover(2)[#text(red)[
  `(int)’H’ =72 =0100 1000, (int)’i’ =105 =0110 1001` \ Ciphertext: `1111 0001  0011 1110`
]]
2. #text(purple)[#bold[Extension]]: Why is the Vernam cipher only secure if you never re-use the same key?


== Vernam Cipher Pros and Cons
#notes
*Pros:* \
- No two bits are encoded with the same mapping 
  - an attacker has no frequency information to help guess the key.
- Perfectly secure.
- Attacker can do no better than guessing.
- Ciphertext gives no information about plaintext.
*Cons: *
- Keys are very large.
- How do you distribute this key?
- Needs a shared source of randomness.

== Experiment
#mwb
*In pairs:*
Ciphertext C = \
            `    11010111 11111000 01011101 00011011 01001011`
Decrypt using a key of:
 - `10010100 10010000 00101111 01110010 00111000 `$𝑘_𝐴$
 - `10010000 10001010 00111000 01111110 00100101 `$𝑘_𝐵$
 - `10111010 11001011 00110000 00101000 01111110 `$𝑘_𝐶$
 - `10000111 10001010 00111000 01101000 00111111 `$𝑘_𝐷$
Which is the correct key?

== Extra: Transposition Cipher
EG:
Eg Rail Fence
Using a Key of 5, encrypt the message COMPUTING IS GREAT FUN
#uncover("2-")[
  #grid(columns:(0.5fr,1fr,0.5fr))[][
    #table(columns:range(5).map(_=>1fr),align:center,inset:15pt,
    [C],[O],[M],[P],[U],[T],[I],[N],[G],[I],[S],[G],[R],[E],[A],[T],[F],[U],[N])
  ]
]
#only(3)[#text(38pt,red)[CTSTOIGFMNRUPGENUIAZ]]

== Let's practice!
#Comp
On BPCompSci: \ \
*W119 - C\# Encryption Programming*
