#import "@preview/touying:0.5.5": *
#import "../../../Templates/template.typ": *
#import "@preview/fletcher:0.5.8" : *

// Themes: default, simple, metropolis, dewdrop, university, aqua
#show: simple-theme.with( aspect-ratio:"4-3",
                          config-colors(primary:fadedBlue))
#show: set page(fill:fadedYellow)

== B1 – Brainscape Set 1
#notes
You will have 30 minutes, and must answer all questions with as much *precise terminology* as you can. \ \
Let's make sure we've remembered the content! \ \
We will then mark it together. \ \
#setTimer()

#let questions = (
  ([What is the stored program concept?],[- A program must be resident/stored in main memory to be executed/run; \ #bold[NE]: Programs must be in main memory
- Machine code instructions are fetched and executed serially/sequentially/one at a time by the processor;]),
([Describe the role of the control unit. Give 4 points.],text(24pt)[Any 4 from:
- To control operation of the fetch-execute cycle;
- It controls fetching/loading/storing operations;
- It determines the type of an instruction; \ $quad$ #bold[A]: Decodes instructions
- To execute (some) instructions;
- To synchronise the operation of the processor;
- To send control signals and commands to other components;
- To control the transfer of data between registers;
- To handle interrupts; \ $quad$ #bold[A]: an example of an interrupt (eg. keyboard input)
]),
([Describe the fetch part of the fetch decode execute cycle],text(22pt)[- Contents of Program Counter transferred to Memory Address Register;
- Address Bus used to transfer this address to Main Memory;
- Read signal sent along control bus;
- Transfer of main memory content uses the data bus;
- Contents of addressed memory location loaded into the Memory Buffer Register;
- Contents of memory buffer register are copied to the Current Instruction Register;
- Increment Program Counter (part of Fetch stage, but not directly involved in fetching an instruction);
	R: Incrementing done before copying contents of PC to MAR;
]),
([Describe the execute part of the fetch decode execute cycle; give 4 points.],text(20pt)[Any 4 from:
- If necessary, data is fetched or stored (to/from registers/Main Memory);
- The opcode identifies the type of operation to be performed by the processor;
- The operation (identified by the opcode) is performed by the control unit;
- The ALU is used for mathematical/logical operations/calculations;
- The result (may be) stored in a register; R: Main Memory for register
- The status register (may be) updated;
- If a branch is required then the program counter is updated;
- The control bus will transfer signals to other components to initiate or sequence actions;
]),
([What is the data bus used for? What is its direction?],[- The data bus is used to transfer data between components;
- The data bus is bidirectional;
]),
([What is the instruction set?],[- The set of binary codes for the machine operations that a processor has been designed to perform;
- It is specific to the processor;
]),
([What is a register?],[Extremely fast, very small, memory in the processor for temporary storage (of binary values) \
	$quad$ #bold[A]: volatile for temporary storage]),
([3 reasons secondary storage is needed],[Any 3: \ 
- Main memory is volatile, so secondary storage needed to store files that are needed multiple times;
- Secondary storage can be used to store larger files, as it usually has a much higher capacity than main memory;
- Secondary storage can be used for virtual memory;
- Main memory is expensive/Secondary storage is cheaper #underline[per bit/byte/unit of memory];]),
([What is concatenation?],[- When two strings are joined to form a single longer string;]),
([ Describe the role of an I/O controller. Give 4 points.],[Any 4 from:
- Allows processor to communicate with a peripheral using an I/O port;
- Allows peripheral to appear as a set of registers;
- Translates data received from a peripheral into a form that can be processed by the computer;
- Buffer data being received from a peripheral so the processor does not have to wait for it;
- Allows new peripherals to be added without having to redesign the processor;
- Allows peripheral designers to create new peripherals to one common interface standard;
- To carry out some of the I/O related processing;
- To check that data received from peripherals is not corrupted;
- Implements the protocols used by I/O devices for communication;
- Generates an interrupt when data is ready to be transferred from an I/O device;
- Provides voltages/power necessary for peripheral devices to operate;
]),
)

#for (i,question) in questions.enumerate() {
  let n = i+1
  [== B1 - Brainscape Set 1 Solutions
    #n. #question.at(0) \
  #text(red)[#question.at(1)]] 
}

= Network Basics and Packet Switching
#note([Keywords: `Internet; DNS; IP Address; Router; Gateway; ISP; Packets; NIC;`])

== Packet Switching
In pairs you are going to describe how a message is transferred from one computer to the other using packet switching.  
Write down how it works applied to the diagram below.   \
#place(center,dy:2em,text(60pt)[#diagram(
  node-stroke:2pt,
  node-fill: gradient.radial(blue.lighten(80%), blue, center: (30%, 20%), radius: 80%),
	spacing: 2em,
 node((-1,0),image("../../../Templates/computer.svg")),
 node((0,0),`B`),
 node((0.6,0),`C`),
 node((1.2,0),`D`),
 node((0,0.6),`A`),
 node((.6,0.6),`F`),
 node((1.2,0.6),`E`),
 node((2.5,0.6),image("../../../Templates/computer.svg")),
 
 edge((0,0),(0.6,0)),
 edge((0,0),(0,0.6)),
 edge((0,0.6),(0.6,0)),
 edge((0.6,0),(1.2,0.6)),
 edge((0.6,0),(1.2,0)),
 edge((1.2,0),(1.2,0.6)),
 edge((0,0.6),(0.6,0.6)),
 edge((0.6,0.6),(1.2,0.6)),
 edge((0,0),(-1,0)),
 edge((1.2,0.6),(2.5,0.6))
)])

== Packet Switching Process
#notes
- Different packets from the same transmission may be sent over different routes.
- Each router examines the destination address and decides which of its interfaces to send the packet to.
- Eventually, the packet will reach its destination.
- The router uses a set of rules, on a #bold[routing table] to determine the next best #bold[hop]

== What does the call stack look like
#mwb
#place(dy:-30pt,[1) Just after line 4? $quad quad$ 2) Just after line 14?])
#text(24pt)[```cs 
1  static int add(int x, int y) {
2      int result = 0;
3      result = x + y;
4      return result;
5  }
6  public static int subtract(int a, int b) {
7     int result = 0;
8     result = add(a, -b);
9     return result;
10 }
11 static void Main(string[] args) {
12    int myNum1 = 6;
13    int myNum2 = 4;
14    Console.WriteLine(subtract(myNum1, myNum2));
15 }
```]

== More functions programming
#Comp
On BPCompSci: \ \
*W110 - Functions*