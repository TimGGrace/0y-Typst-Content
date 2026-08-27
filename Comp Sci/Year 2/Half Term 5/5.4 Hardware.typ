#import "../../../Templates/Template.typ": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:fadedBlue))
#show: set page(fill: fadedYellow)

== Starter
#notes
For the following, name as many types as you can, \ that are on our specification:
1. Secondary Storage Devices
2. Input Devices
3. Output Devices

= Hardware
#note[Everything we need to know...]

== Starter
#table(columns:(1fr,1fr,1fr),
bold[Secondary Storage], bold[Input Devices], bold[Output Devices],
[- Hard Disk
- Optical Disk
- Solid-State *disk* (SSD)],
[
  - Barcode reader
  - Digital Camera
  - RFID
],
[
  - Laser Printer
])

== Principle Operations
#notes
1. Describe the principle operations of:
  #enum(numbering:"a)")[Optical Disk][Magnetic Disk][Solid-State Drive]
2. State at least #bold[two] advantages to Hard Disks and #bold[two] advantages of Solid-State Drives, as well as a typical use case for each.

== Principle Operations
=== Optical Disk
- Data is stored on a spinning disk, represented with pits and lands.#pause

- This data is stored along a *single continuous track*.#pause

- A read-write head shines a laser at the disk, and measures the reflected light.#pause

- The transitions between pits and lands scatter light, representing a 1. ('Something happened')#pause

- Continued light (no change in reflection) represents a 0.

== Principle Operations
=== Magnetic Hard Disk
- Data is stored in a spinning disk, represented with areas of magnetised material.#pause

- This data is stored in *concentric circular tracks*.#pause

- A read-write head moves to the location of the data, and detects the magnetised regions.#pause

- A magnetised area represents a 1, and no magnetism represents a 0.

== Principle Operations
=== SSD (Solid State *Drive*)
- NAND gate memory cells store individual binary digits.#pause

- Each of these is made of floating gate transistors that trap charge.#pause

- Charge represents 1, no charge represents 0.#pause

- A controller manages groups of these, called pages, into addressable memory.#pause

- A block, made up of many pages, cannot overwrite pages.#pause

- A page has to be erased before it can be written to.#pause

== Principle Operations
=== Pros and Cons
#table(columns:(1fr,1fr),
bold[Optical & Magnetic Disks], bold[SSD],
[
  - Cheap per unit of memory
  - Typically much larger available memory capacities
  - No need for power
],
[
  - Resilient to physical damage
  - Faster transfer speeds
  - Lower latency
],[
  Useful for large quantities of data, especially long term storage.
],[
  Useful for data that needs to be rapidly accessed (eg. an OS or game)
])

== Principle Operations
#discuss
In pairs, create a mind map covering everything \ you need to know about:
- Barcode readers
- Digital cameras
- RFID
- Laser Printer

Ensure you cover:
#grid(columns:(1fr,1fr),
[
  - Principles of Operation
  - Suitable applications
],[
  - Required components
])