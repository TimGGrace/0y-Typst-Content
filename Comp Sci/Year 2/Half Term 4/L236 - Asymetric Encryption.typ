#import "../../../Templates/template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

#let (Bob, Alice, Evelyn, Frank, Grace) = (
  "Elias",
  "Harper",
  "Daniel",
  "Ryan",
  "Lilly")

  == Starter: Symmetric Encryption
  #notes
  Decode: \
  #align(center)[`ALEX MW XLMW XCTI SJ IRGVCTXMSR GEPPIH`]


  #only(2)[
    #text(red)[
      `WHAT IS THIS TYPE OF ENCRYPTION CALLED`

      Substitution Cipher $->$ Caesar Cipher, key 4
    ]
  ]

== Definitions
#mwb
*What is encryption?* \
#uncover(2)[
  #text(red)[A procedure used to convert plaintext into ciphertext in order to prevent any but the intended recipient from reading that data.
  ]
]

*What is symmetric encryption?* \
#uncover(2)[
  #text(red)[
    A type of encryption that uses the same key for both encryption of plaintext and decryption of ciphertext.
  ]
]

== Vernam Cipher
#mwb
#only(1)[A sensitive message could be encrypted by using either the Vernam Cipher or the Caesar Cipher.
1. Explain why the Vernam cipher may be a better choice. (2 points)
2. What four conditions must be met in order for the Vernam cipher to offer perfect security?]

#only(2)[
  #text(red)[
    1. Vernam cipher (if implemented correctly) is unbreakable / harder to crack / Caesar cipher can be easily cracked; \ Frequency / statistical analysis of ciphertext reveals nothing about plaintext; \ More possible keys; \ Vernam cipher does not always translate a ciphertext character to the same plaintext character (removing repeated patterns);
    #v(13cm)
    2. The key must be (at least) as long as the data to be encrypted/plaintext; \ The key must not be reused /\/ key must only be used once; \ The key must be (truly) random; \ The key must be kept securely/not revealed/only known by user(s);
  ]
]

== Symmetric Encryption
#discuss
In pairs discuss what are the main problems with \ symmetric encryption?

#only(2)[#text(red)[
  Hard to distribute the key without interception. \
  Anyone with the key can decrypt.
]]

== Symmetric Encryption, the problem.
If we were to use Symmetric encryption, you would need to have a publically visible key.

That would be used to decrypt anything you send.

That could also be used to encrypt something if I wished to *pretend* to be you...

== Asymmetric Encryption
In the 1970s, it was realised that it is possible to have an asymmetric key pair (ie different key for encryption and decryption), solving the \ key-distribution issue. #pause

As long as the decryption key cannot be found from the encryption key, then the message is 'safe'. #pause

To do this, you need to use a *pair of keys*, one public and one private key. #pause

== Asymmetric Encryption, Digital Signatures & Digital Certificates
In order to encrypt for transmission, we need to know what everyone has.

#grid(columns:(1fr,2fr), inset:10pt, row-gutter: 10pt,
grid.cell(align:right,rowspan:2)[
  #text(80pt)[#emoji.person.raise]
],[#emoji.key #text(weight:700, green)[Public Key]],[#emoji.key.old #text(weight:700, red)[Private Key]],
grid.cell(align:right,rowspan:2)[
  #text(80pt)[#emoji.person.sassy]
],[#emoji.key #text(weight:700, green)[Public Key]],[#emoji.key.old #text(weight:700, red)[Private Key]]
)

== Encrypting a document
#notes
When one person wants to send a document to another person, \ they need to use two keys. One public, one private.

To ensure their intended recipient can actually decrypt the message, they wil use:
- Their own #text(weight:700,red)[private key] #emoji.key.old
- The recipient's #text(green,weight:700)[public key] #emoji.key #pause

What do you think is used to decrypt the message?

== The RSA Method
#place(dx:65%,dy:-50pt,rect(inset:5pt, fill: fadedBlue.lighten(60%), stroke:1pt,radius:15pt )[
  Note, this is beyond spec. \ It's just really interesting.
])
Practically, generating these numbers is \ complicated, but a method was created by Rivest, Shamir & Adelman.
1. Take 2 prime numbers, $p, q$ (large enough...) #pause
2. Multiply together, $n = p q $ #pause
3. Find 2 related numbers, $a, b$ #pause
4. $n, a$ is your #text(weight:700, green)[public key] #pause
5. $n, b$ is your #text(weight:700, red)[private key] #pause
Can the private key be discovered from knowing the public key? #pause \ 
Yes, if we can factorise $n$, which is believed to be hard for large numbers.

== Digital Signatures
#notes
With a private key and the right software, you can put a digital \ signature onto documents after the data. #pause

A digital signature is a 'stamp' placed on the data which is unique to you, and very hard to forge. #pause

In addition, the signature assures that changes made to the data cannot go undetected.

== The process:
#notes
*Creating the Signature*
#text(22pt)[1. The entire message to be sent is *hashed*. #pause
2. This hash is then encrypted using your #text(weight:700,red)[private key] #pause
3. The result of this is the *Digital Signature*, which is appended to the original message. #pause]

*Verifying the Signature*
#text(22pt)[1. The contents of the message is hashed by the recipient. #pause
2. The Digital signature is decrupted using your public key. #pause
3. Both of these should produce the same result, verifying that no changes have been made.]

== A further complication...
#notes
#text(22pt)[This all assumes that nobody is offering false public keys on \ behalf of someone else... #pause

Enter a hero: *A Digital Certificate* (different to a signature) #pause

A Digital Certificate can be made by a Certificate Authority Centre. It includes some information about you, as well as a copy of your public key. #pause

When a message comes in, you can request the Certificate from the Certificate Authority, rather than anyone else. #pause

But what if someone alters something sent by the Certificate Authority? #pause Another *Digital Signature* check...]

== That's a lot to do, right?
Well, yes.

Thankfully, all of this is handled behind the scenes by security software, which normally is either hidden (like inside .pdf s), or requires little other than a few clicks.

== Hybrid Cryptosystems
Again, that is a lot of work. #pause

Generally, we don't use asymmetric encryption for everything. #pause

Symmetric encryption is both easier and faster. #pause

We can use asymmetric encryption initially to solve symmetric encryption's largest flaw: *secure key sharing* #pause

This is what PGP, SSH and the SSL/TLS family of schemes use. They are thus called *hybrid cryptosystems*

== Practice Time!
#GClass
*W236 - Asymmetric Encryption Worksheet*

