#import "../../../../Templates/ms-template.typ": *
#let AO1 = [*Marks are AO1 (understanding)*]
#let AO2 = [*Marks are AO2 (apply)*]
#let AO3 = [*Marks are AO3 (programming)*]
#mark-scheme[
#cs-ms-table(
  questions: (
    (
      number: 1.1,
      marks: 2,
      solution: [
        *Marks are AO1 (Knowledge)* \
        *0 marks:* 1 or fewer rows correct \
        *1 mark:* 2 or 3 rows correct \
        *2 marks:* 4 rows correct
        *If the same label is used multiple times as correct in the row that it is correct in, if any.*
        #grid(columns:(0.2fr,1fr,0.2fr),[],align(center)[#table(columns:2,
        [*Number*],[*Correct label*],
        [*1*],[Application (software) \ *A.* applications as *BOD* *NE*. apps],
        [*2*],[Utilities/utility (software)],
        [*3*],[Libraries / library programs],
        [*4*],[Interpreter]
        )])
        #v(20cm)
      ]
    ),
    (
      number: 1.2,
      marks: 2,
      solution: [
        #AO1

        To allocate processors/cores to prcesses /\/ schedule processes /\/ decide which process to carry out when /\/ manage the execution of multiple processes /\/ allocating the 'time slices' to process; \
        *NE*. processor management \
        *NE*. multitasking without further explanation

        To allocate memory/RAM to processes /\/ to determine what areas of memory are used for what purpose /\/ moving data into and out of RAM / to a paging file for virtual memory;\ 
        *NE*. memory management

        To hide the complexities of the hardware from the user; \
        *A*. provision of virtual machine \
        *NE*. user interface \
        *NE*. hide complexities of computer

        To handle interrupts /\/ to call appropriate interupt handler (*A*. ISR) when an interrupt occurs;

        Automatic installation of drivers for new I/O devices; \
        *NE*. manages I/O devices \
        *R*. allocation of I/O devices to processes

        To allocate space on a storage device to files /\/ organising files into directories /\/ determines where on a device to save a file /\/ managing file allocation table /\/ recognising storage devices when they are connected; \
        *A*. defragmentation of disks \
        *NE*. file management \
        *NE*. saving a file \
        *NE*. manage storage devices

        Installation of new software /\/ automatic / managing updating of software; \
        *NE*. application management

        Authenticating users /\/ managing file permissions /\/ preventing processes accessing memory/resources not allocated to them /\/ provision of sandbox /\/ maintaining logs; \
        *A*. login #underline[with] username and password (or alternative described system such as credentials, biometrics) \
        *NE*. security management

        *Students must describe - phrases such as 'processor management', 'allocating memory' etc are not enough.*
        
        *Accept 'programs' or 'tasks' for 'processes throughout*

        *Max 2*
        #v(3cm)
      ]
    ),
    (
      number: 1.3,
      marks: 4,
      solution: [
        Program code is easier to understand/maintain/debug; \
        *A*. easier to read/write as *BOD* \ *R*. reference to HLL using mnemonics.

        Faster development time /\/ programmers can be more productive /\/ one line of HLL code can do the same job as many lines of assembly language;

        Facilitates collaborative working;

        Programs are (more) portable (to other hardware platforms) /\/ programs are (more) machine-independent;

        Availability of flow control structures; *A*. example(s) eg loops, selection

        Built-in support for data structures; *A*. example(s) eg arrays, records

        Language can be problem-oriented;

        Support for different paradigms; *A*. examples eg functional programming
        Improved features for supporting modularity; *A*. ability to use subroutines, classes \
        *NE*. implied support of modularity by use of Libraries

        Availability of libraries of (wider range of) pre-defined functions /\/ availability of built-in functions;

        *Max 4*
      ]
    ),
    (
      number: 2.1,
      marks: 2,
      solution: [
        #AO2

        *2 marks* for correct final answer: 12

        Required calcuation:

        #align(center)[1.5 $times$ 1000 $times$ 8 = 50 $times$ 20 000 $times$ sample resolution]

        If answer is incorrect award *1 mark* for completing any *three* of these steps:
        - multiplying by 1.5
        - multiplying by 1000
        - multiplying by 1000
        - multiplying by 8

        Note that:
        - multiplying 20 000 by 50 is two steps
        - including 1 000 000 is equivalent to two steps (1000 $times$ 1000 or 50 $times$ 20 000)
        - including 1 500 000 is equivalent to three steps (1.5 $times$ 1000 $times$ 1000)
        - including 8 000 000 is equivalent to three steps (1000 $times$ 1000 $times$ 8)
      ]
    ),
    (
      number: 2.2,
      marks: 2,
      solution: [
        #AO1

        *1 mark:* 1 or 2 points made from list below. \
        *2 marks:* All 3 points made from list below.

        - (Analogue) signal/wave (*A*. sound as *BOD*) sampled at fixed/regular time intervals. \ *R*. references to graphs
        - Aplitude/voltage of signal/wave (*R*. sound) (at each sample point) measured.
        - Measurement coded into a fixed number of bits /\/ coded in binary \ *A*. measurement is quantised \ *A*. measurement rounded to nearest representable / nearest discrete valuable
        #v(3cm)
      ]
    ),
    (
      number: 2.3,
      marks: 2,
      solution: [
        #AO1

        *Alternative 1* \
        Sample resolution used is too low /\/ not enough bits used to represent each sample (accurately);

        The number of distinct amplitudes that can be represented is too low; \
        *A*. by example
        Amplitude of each sample will be rounded/truncated when converted into binary /\/ quantisation error occurs /\/ difference between actual amplitude and recorded amplitude may be too big; \
        *NE*. represented in binary / discretely / digitally

        #align(center)[*OR*]

        *Alternative 2* \
        The sampling rate is too low /\/ samples have not been taken frequently enough /\/ not enough samples taken;

        The sampling rate does not satisfy Nyquist's theorem;

        Amplitude between sample points will have to be interpolated/approximated (when played back); \
        *NE*. amplitude between samples not recorded
        *2 marks:* The sampling rate may not be at least twice the frequency of the (highest frequency component in the) original signal (*A*. sound);;

        #align(center)[*OR*]

        *Alternative 3* \
        #underline[Lossy] compression may have been applied to the data;

        Some frequency components will have been removed /\/ the range of frequencies that are represented may be reduced /\/ bandwidth may be reduced /\/ stereo imagery may be rediced /\/ the sampling rate/sample resolution may have been reduced (by the compression);

        *Marks can only be awarded for one of Alternative 1, Alternative 2 or Alternative 3, not a mix of alternatives.*

        *If student explains more than one reason then award marks for the alternative that would achieve the highest number of marks.*

        *Max 2*
        #v(13cm)
      ]
    ),
    (
      number: 2.4,
      marks: 2,
      solution: [
        #AO1

        MIDI stores information about the events (*A*. notes, sounds) that a sound is composed of; \
        *A*. MIDI files contain instructions to generate the sound \
        *A*. MIDI files represent data as event messages

        A piece of music is likely to be composed of (*A*. will be composed of far) fewer events (*A*. notes, sounds) than the number of samples (*A*. measurements) that would be needed to record it /\/ events (*A*. notes, sounds) may last for a long time (*A*. examples of a time that is long compared to the sampling rate eg a second, half a second); \
        *A*. likely to be thousands of samples taken per second

        MIDI stores the detailed representation of each note (*A*. sound) in (separate) libraries; \
        *NE*. repeated notes/sounds stored only once
        
        *Max 2*
      ]
    ),
    (
      number: 3,
      marks: 3,
      solution: [
        #AO1

        *1 mark* per issue that is explained.

        *Writing laws*

        Technology evolves quickly (so difficult for law to keep up with changes) /\/ new types of crime become possible /\/ future problems may not be understood /\/ technology may be used for an unintended/unanticipated purpose;

        Legislators may lack technical expertise;

        Technology companies (can use their wealth) to lobby for their own interests /\/ concern over influence of companies on legislators;

        Difficult to balance needs of individuals/privacy and state/protection of society; \
        *NE*. users entitled to/expect privacy

        *Enforcing Laws*

        Global nature of Internet means crimes may be committed in one country from outside its direct juridiction /\/ laws are often national/local whilst the Internet is global /\/ digital crime can be committed from a great distance /\/ different countries have different laws;

        Some crimes may be committed by states rather than individuals;

        Electronic evidence may be harder to gather than physical evidence /\/ can be harder to identify culprits online; \
        *A*. an example of a system that makes it harder to identify culprit eg use of proxies, encryption, VPN, computers owned by innocent individuals but controlled by a criminal, use of peer-to-peer systems \
        *NE*. harder to catch criminals

        Resources required to enforce legislation may not be available /\/ large volume of users/data makes it difficult/impossible to effectively monitor;
        #v(13cm)
      ]
    ),
    // (
    //   number: 4,
    //   marks : 3,
    //   solution: [
    //     #AO2

    //     Large number of users / devices (to be managed);

    //     Not possible to trust all useres /\/ some users may not be trustworth;

    //     Confidential data is likely to be (*A*. will be) stored; \
    //     *A*. examples of confidential data in the context of a school

    //     Complex management of access rights required /\/ different (groups of) users will require different access privileges /\/ the school/technicians will be able to control which resources are shared /\/ prevent students sharing files directly from their computers /\/ centralised management of security /\/ management of Internet access /\/ management of/accounting for printing resources; \
    //     *A*. other examples in context of a school \
    //     *NE*. stop users accessing other users' files
    //     All resources/files/data canwill be stored centrally /\/ if a device is not working the data resources/files/data will be accesible from another device /\/ if a device is not working data will not be lost (as stored on server) /\/ #underline[easier] for files to be shared/distributed (in a controlled way);

    //     Data will be available at all times /\/ on a peer-to-peer network data would only be available when the device it is stored on is on;

    //     Server can be optimised for required tasks / managing files / accessing files;

    //     Data cna be backup up centrally /\/ it is easier to backup as the data is on a server; \
    //     *NE*. easier to backup
    //     Centralised/remove installation/updating of software possible;

    //     *Accept points made in reverse, ie as relevant limitations of peer-to-peer systems instead of reasons to use a client-server system.*

    //     *Max 3*
    //     #v(13cm)
    //   ]
    // ),
    (
      number: 4.1,
      marks: 5,
      solution: [
        #align(center)[#table(columns:3,
        [*Level*],[*Description*],[*Mark Range*],
        [3],align(left)[A detailed, coherent description that covers both the reading mechanism and how data is represented, demonstrating a very good level of understanding.],[5],
        [2],align(left)[An adequate description, including at least three points from the list below. The description may cover one or both of the reading mechanism and how data is represented. The description is logically organised so that it makes sense when read as a whole  and therefore demonstrates a reasonable understanding of the principles of operation of an optical disk drive.],[3-4],
        [1],align(left)[A small number of relevant points have been recalled. The structure of the response, or lack of it, means that only a very limited understanding of the principles of operation is demonstrated.],[1-2]
        )]
        *Indicative Content*

        *How Data is represented*
        - Data is stored on one/spiral track \ *A*. data is read in a spiral
        - Continuation of land/pit reflects light whereas transition between land and pit scatters light \ *A*. lands reflect light whereas pits scatter light/do not reflect light or vice-versa \ *A*. dye absorbs light whereas absence of dye allows light to pass through/reflect
        - Transition between land and pit indicates a 1 and continuation of land/pit represents 0 \ *A*. land represents 1, pit 0 or vice-versa \ *A*. reflection represents 1, no reflection 0 or vice-versa
        *Accept 'bump' for 'land' or other wording which clearly reflects nature of pits and lands*

        *Reading Mechanism*
        - (Low power beam of) laser / light is shone at disk \ *NE*. implication of this because students states that light is reflected back
        - Light is focussed on spot of track (*A*. disk)
        - (Some) light is reflected back from disk
        - reflected light falls on (light) sensor/photodiode
        - Disk spins at constant #underline[linear] velocity /\/ zoned constant #underline[linear] velocity /\/ variable (angular) velocity \ *A*. variable speed \ *R*. constant speed
        - Head move sin/out to get to particular point on track
        #v(13cm)
      ]
    ),
    (
      number: 4.2,
      marks: 2,
      solution: [
        #AO1

        (Some) other storage devices have higher storage capacities; \
        (Some) other storage devices can read/write data more quickly; \
        Optical drives require a lot of space/are big/are bulky /\/ (some) other storage devices are more compact; \
        (Some) other storage devices incorporate the drive and disk/storage; \
        Data/programs can be downloaded using the Internet /\/ video/music can be streamed using the Internet /\/ backups can be made to the cloud /\/ use of cloud storage; \
        Less content now available on optical disk forms; \
        (Some) other storage devices are less susceptible to damage (*A*. more robust/durable) /\/ optical disks can be easily damaged /\/ optical disks damaged by scratches; \
        (Some) type of optical disk cannot be written to /\/ it may only be possible to write to an optical disk once / a limited number of times;

        *Award marks if specific other devices (eg SSD, USB flash drive) are named as the other storage devices, as long as the point made applies to the type of device.*

        *Max 2*
      ]
    ),
    (
      number: 5.1,
      marks: 1,
      solution: [
        *Mark is AO2 (analyse)*

        It would not be possible for the same teacher to award the same student (*A*. a student) more than one (*A*. two) merit(s) on the same day;

        *A*. if a teacher / student left the school referential integrity issues may arise
      ]
    ),
    (
      number: 5.2,
      marks: 1,
      solution: [
        *Mark is AO2 (analyse)*

        #align(center)[#image("images/5.2 diagram.png", width: 80%)]

        *1 mark: *Student entity joined to Merit entity using 1-many relationship AND Teacher entity joined to Merit entity using 1-many relationship \ 
        *I*. many-to-many relationship between Student and Teacher

        *Award 0 marks if any incorrect relationships drawn.*#v(13cm)
      ]
    ),
    (
      number: 5.3,
      marks: 2,
      solution: [
        #AO3

        *1 mark:* `INSERT INTO Student // INSERT INTO Student (StudentID, FirstName, LastName, YearGroup, House)` \
        If field list is given in `INSET INTO` clause then allow fields in any order, but must include all five fields.

        *1 mark:* `VALUES (17423, "Ethan", "Smith", 7, "Hulme")` \
        If field list is given in `INSERT INTO` clause then values must match order in that clause. If field list is not given then values must be in order shown, otherwise this mark cannot be awarded.

        *A*. use of ' instead of \" \
        *R*. quotation marks around 17423 and 7

        *Max 1* if `VALUES` clause before `INSERT INTO` clause. \
        *Max 1* if code would not work.
        #v(23cm)
        ]
    ),
    (
      number: 5.4,
      marks: 6,
      solution: [
        *4 marks for AO2 (analyse) and 2 marks for AO3 (programming)* 

        *AO2 (analyse) - 4 marks:*

        *1 mark* for correctly analysing the data model and identifying the tables that data needs to be extracted from (`Student, Merit, Term`) and the fields that need to be extracted (`FirstName, LastName, Reason`), and including these and no other tables or fields in the query. \
        *A*. inclusing of unnecessary table `Teacher` as long as it is correctly linked to the `Merit` table

        *1 mark* for correctly identifying the condition to select the correct term: \
        `TermName = "Spring"` and correctly identifying the condition to select the correct date: `TermYear = 2025`

        *1 mark* for correctly identifying the condition to link the `Student` and `Merit` tables: `Student.StudentID = Merit.StudentID`

        *1 mark* for correctly identifying the conditions to link the `Term` and `Merit` tables: \
        `DateAwarded >= StartDate` and `DateAwarded <= EndDate`

        *Note*: Award a *maximum of 2 of the 3 available marks* for the correct conditions if they are not joined by the correct logical operator `AND`.

        *Note*: The AO2 marks for analysing the data model should be awarded regardless of whether correct SQL syntax is used or not as they are for data modelling, not syntactically correct SQL programming.

        *A*. mark(s) can be awarded for the correct logical conditions even if the required tables are not identified as being used by the query.

        *AO3 (programming) - 2 marks:*

        *1 mark* for fully correct SQL in two or three of the four clauses (SELECT, FROM, WHERE, ORDER BY) \
        #align(center)[*OR*]
        *2 marks* for fully correct SQL in all four clauses (SELECT, FROM, WHERE, ORDER BY)
        #v(13cm)
        *Note*:
        - For the SELECT clause to count as correct SQL it must include at least two correct fields.
        - For the FROM clause to count as correct SQL it must include at least two correct tables.
        - For the WHERE clause to count as correct it must include at least one correct condition, but does not have to include them all (ignore missing conditions or irrelevant conditions), however the whole WHERE clause must have correct syntax.
        - For the ORDER BY clause to count as correct it must be fully correct, but the response does not need to include the table name.

        *A*. table names before fieldnames separated by a full stop \
        *A*. use of an alias / `AS` command eg `FROM Term AS T` then use of `T` as the table name and note that command is not required eg `FROM Term T` \
        *A*. `INNER JOIN` written as one word ie `INNERJOIN` or just `JOIN` \
        *A*. use of `BETWEEN` instead of `>=` and `<=` ie `DateAwarded BETWEEN StartDate AND EndDate` \
        *A*. `ASC` at end of `ORDER BY` clause \
        *A*. use of ' instead of \" \
        *I*. insertion of spaces into field names \
        *I*. minor spelling mistakes into fieldnames \
        *I*. unnecessary brackets as long as they would not stop the query working \
        *R*. `DESC` at ehd of `ORDER BY` clause \
        *DPT*. unnecessary punctuation - allow one semicolon at the very end of the statement, but not at the end of each clause (applies to lines of correct SQL code not marks) \
        *DPT*. field name before table name (applies to lines of correct SQL code not marks)

        *Overall Max 5 if solution does not work fully*
#v(13cm)
        #underline[Example Solutions]

        *Example 1 - All conditions in WHERE clause*

        ``` SELECT FirstName, LastName, Reason
        FROM Student, Merit, Term
        WHERE TermName = "Spring"
          AND TermYear = 2025
          AND Student.StudentID = Merit.StudentID
          AND DateAwarded >= StartDate
          AND DateAwarded <= EndDate
        ORDER BY Student.StudentID```

        *Example 2 - Use of INNER JOIN*

        ``` SELECT FirstName, LastName, Reason
        FROM ( Student INNER JOIN Merit ON Student.StudentID = Merit.StudentID ) 
          INNER JOIN Term ON 
            ( Merit.DateAwarded >= Term.StartDate
            AND Merit.DateAwarded <= Term.EndDate )
        WHERE TermName = "Spring" AND TermYear = 2025
        ORDER BY Student.StudentID```

        *Example 3 - A nested solution* 

        ``` SELECT FirstName, LastName, Reason
        FROM ( SELECT StudentID, Reason
               FROM ( SELECT StartDate, EndDate
                      FROM Term
                      WHERE TermName = "Spring"
                      AND TermYear = 2025
                    ) AS DT INNER JOIN Merit
                ON Merit.DateAwarded <= DT.EndDate
                AND Merit.DateAwarded >= DT.StartDate
              ) AS SR INNER JOIN Student
        ON SR.StudentID = Student.StudentID
        ORDER BY Student.StudentID```

        _Refer nested solutions to team leaders for marking._
        #v(13cm)
      ]
    ),
    (
      number: 6.1,
      marks: 2,
      solution: [
        #AO1

        (Machine code) instructions (*A*. programs) stored in (main) memory (*A*. RAM);

        #underline[Instructions] (*R*. programs) are #underline[fetched] and #underline[executed] #underline[serially/sequentially/in order] by a #underline[processor] (that performs arithmetic and logical operations); \
        *Note*: To achieve this mark a response must include at least four of the five underlined concepts.

        *A*. programs can be moved into (and out of) main memory

        *Max 2*
      ]
    ),
    (
      number: 6.2,
      marks: 6,
      solution: [
        #AO1

        #underline[*Control unit (Max 2)*]

        Controls fetch/load/store operations; *A*. fetches instructions

        Decodes instructions /\/ determines the type of an instruction;

        Manages the execution of instructions; *A*. executes instructions

        Controls/sequences/manages/synchronises/handles the operation of the computer/processor /\/ controls/sequences/manages/synchronises/handles the fetch-execute cycle; *A*. F-E cycle, FDE cycle as *BOD* *NE*. just F-E, FDE

        Sends control signals to other components;

        Stores the state of the processor / the volatile environment when an interrupt occurs; *A*. deals with interrupts

        #underline[*General purpose registers (Max 2)*]

        Store values that need to be accessed frequently (*A*. quickly); \
        *A*. memory (locations) that can be accessed quickly

        Store values that instructions can/will use as operands/will be carried out on /\/ store the results of executing isntructions /\/ store the results of calculations; \
        *A*. store intermediate results during calculations \
        *A*. store vlaues that are being processed \
        *TO*. store instructions

        The programmer determines the (exact) role of each register (when writing a program);

        *NE*. store values inside the processor

        #underline[*Status register (Max 2)*]

        Stores information about the result of the last (arithmetic/logical) instruction;

        Contents are used to affect the behaviour of the next instruction / subsequent instructions /\/ to control conditional branch instructions;

        Stores bits/flags which affects the operation of the control unit;
        #v(13cm)
        *One mark* can be awarded for stating the purpose of a specific bit/flag that may be set in the status register. Examples are:
        - Sign - indicates if the result of the last arithmetic operation was positive/negative
        - Zero - indicates if the result of the last operation was zero/non-zero
        - Carry - indicates if the result of the last arithmetic operation produced a carry /\/ did not produce a carry /\/ produced a carry of 0 /\/ produced a carry of 1
        - Equal - indicates if the last logical comparison compared two equal/unequal values
        - Overflow - indicates if the last arithmetic operation resulted in overflow/no overflow
        - Interupt (Enable/Disable) - set/cleared to enable/disable interrupts /\/ indicates if interrupts are enabled/disabled /\/ indicates interrupt occuring
        - Supervisor - indicates the mode the processor is operating in /\/ indicates if the processor is operating in supervisor/user mode
      ]
    ),
    (
      number: 6.3,
      marks: 1,
      solution: [16 /\/ 2#super[4];]
    ),
    (
      number: 6.4,
      marks: 1,
      solution: [
        *Mark is AO2 (analyse)*

        Most positive: 2047 /\/ 2#super[11] - 1

        Most negative: -2048 /\/ -2#super[11]

        *Both most positive and most negative must be correct to award mark.*
        #v(13cm)
      ]
    ),
    (
      number: 7,
      marks: 12,
      solution: [
        #align(center)[#table(columns:3,
        [*Level*],[*Description*],[*Mark \ Range*],
        [4],align(left)[A line of reasoning has been followed to produce a coherent, relevant, substantiated and logically structured response. The response covers all four areas indicated in the guidance below and, in at least three areas, there is sufficient detail to show that the student has a good level of understanding.],[10-12],
        [3],align(left)[A line of reasoning has been followed to produce a coherent, relevant, substantiated and logically structured response which shows a good level of understanding of at least two areas indicated in the guidance below and some understanding of at least one other area.],[7-9],
        [2],align(left)[A limited attempt has been made to follow a line of reasoning and the response has a mostly logical structure. A good level of understanding has been shown in one area and some understanding has been shown of a second area OR some understanding of three areas.],[4-6],
        [1],align(left)[A few relevant points have been made but there is no evidence that a line of reasoning has been followed.],[1-3]
        )]
        #text(8pt)[#align(center)[
          #table(columns:12,
          ..range(1,13).map(x=>[#x]),
          table.cell(colspan:3)[Mark / \ point],[LLL \ GL],[RLL \ GR],[GG \ RRL],[GGL],[GGR],[GGG],[GGGL],[GGGR],[GGGG])
        ]]
        #underline[*Guidance - Indicative Content*]

        *Area 1: Why does IPV4 not provide enough addresses and how IPv6 overcomes this*
        - IPv4 does not use enough #underline[bits] to be able to represent a unique value for every device
        - IPv4 addresses use 32 bits / 4 bytes and IPv6 addresses use 128 bits / 16 bytes /\/ IPv6 addresses uses 96 more / four times as many bits than IPv4 addresses /\/ IPv4 (theoretically) allows 2#super[32] / 4 294 967 296 (unique) addresses and IPv6 (theoretically) allows 2#super[128] (unique) addresses.
        #text(10pt)[_A good understanding would be demonstrated by explaining that IPv6 addresses are stored in more memory than IPv4 addresses and quantifying this correctly for at least one of IPv4 or IPv6 in terms of either the number of bits/bytes used or the number of available addresses._]

        *Area 2: The difference between a public and private IP address*
        - Public IP address globally unique.
        - Private IP address only locally unique /\/ only unique within LAN / private network.
        - Public IP addresses can be routed to / are routable from external networks / the Internet \
        - Private IP addresses cannot be routed to / are not routable from external networks / the Internet /\/ private IP addresses can only be routed to within the same network.
        #text(10pt)[_A good understanding would be demonstrated by describing both the scopes in which the types of IP address must be unique and their routability._]
#v(13cm)
        *Area 3: NAT*
        - NAT operates on routers that connect a LAN / network to the Internet.
        - When a NAT router receives a request from a computer on the LAN/network to access a resource on the Internet, it will replace the (private) IP address of the computer / the (private) source IP address with the (public) IP address of the router.
        - The NAT router also replaces the (source) port number with a port number it generates.
        - The router adds the mapping (port number to private IP address and port number / socket) it has created to its translation table.
        - Whena reply is received, it is recognised by its destination port number /\/ the (destination) port number is looked up in the translation table.
        - (IF the port number is present in the translation table) the reply is forwarded to the computer that made the original request / the (public) destination IP address is replaced with the (private) IP address of the computer that made the original request (and the destination port number is replaced with the one stored in the NAT translation table / the original source port number).
        - _How helps:_ Replacing the (private) IP address when data is sent from a computer on the LAN onto the Internet means that the computers on the LAN do not need to have globally unique IP addresses /\/ only the (external) router needs to have a globally unique IP address /\/ allows computers with private IP addresses to be connected to / send data to / receive data from (other computers on) the Internet.
        _A good understanding would be demonstrated by describing how NAT works mostly correctly and stating how NAT helps address the problem of a limited number of IPv4 addresses._

        *Area 4: DHCP*
        - DHCP allows the automatic configuration of (the network settings / IP addresses) of computers on a LAN.
        - Computer (joining the network) sends request to discover a (DHCP) server.
        - DHCP server maintains pool of IP addresses.
        - DHCP server(s) offer configuration (*A*. IP address) to host.
        - Host accepts offer of configuration (*A*. IP address) from (a DHCP) server (by echoing the accepted configuration back to the server).
        - (DHCP) server confirms that configuration (*A*. IP address) as been allocated to host.
        - _How helps:_ DHCP helps deal with the problem of there not being enough IPv4 addresses by facilitating the reuse of IP addresses when a computer leaves a network /\/ DHCP only leases an IP address to a computer for a fixed time period.
        _A good understanding would be demonstrated by describing how DHCP works mostly correct (there might be some omissions, for example in relation to the confirmation of the configuration at the end of the process) and stating how DHCP helps address the problem of a limited number of IPv4 addresses._
      ]
    ),
    (
      number: 8.1,
      marks: 4,
      solution: [
        #align(center)[#image("images/8.1 diagram.png", width: 80%)]
        *1 mark:* Columns *U* and *V* correct \
        *1 mark:* Columns *W* and *X* correct \
        *1 mark:* Columns *Y* and *Z* correct \
        *1 mark:* Columns *Q#sub[1]* and *Q#sub[2]* correct 
      ]
    ),
    (
      number: 8.2,
      marks: 2,
      solution: [
        #AO2

        *1 mark*: *Q#sub[1]* indicates if the character/input is a letter (or not) /\/ 1 indicates a letter. \
        *R*. 0 indicates letter \
        *R*. 1 indicates not letter

        *1 mark*: *Q#sub[2]* indicates if the character/input is a capital/uppercase letter (or not) /\/ 1 indicates a capital/uppercase letter \
        *NE*. indicates not a lowercase letter \
        *R*. 0 indicates capital/uppercase letter \
        *R*. 1 indicates not capital/uppercase letter
      ]
    ),
    (
      number: 8.3,
      marks: 1,
      solution: [
        *C*; \ $"Q"_1 = "B"_6 dot ( overline("B"_4 dot "B"_3) + overline("B"_2) dot overline("B"_1 dot "B"_0)) dot ("B"_4 + "B"_3 + "B"_2 + "B"_1 + "B"_0)$
      ]
    ),
    (
      number: 9.1,
      marks: 1,
      solution: [
        *Mark is AO2 (analyse)*

        *1 mark* if lozenges *A* and *B* both shaded:

        *A* (The function has one argument) \
        *B* (The function is a first-class object)

        *R*. if the number of shaded lozenges is not two
      ]
    ),
    (
      number: 9.2,
      marks: 1,
      solution: [
        *Mark is AO2 (analyse)*

        *A*; ($NN -> NN$)

        *R*. if more than one lozenge shaded
        #v(13cm)
      ]
    ),
    (
      number: 9.3,
      marks: 2,
      solution: [
        #AO2

        Each application of the function generates two further applications of the same function; \
        *A*. the function calls itself twice

        The function may (*A*. will) be applied to the saem argument multiple times; \
        *A*. the same value is calculated multiple times \
        *A*. (some of) the Fibonacci numbers will be calculated multiple times

        The number of applications /\/ memory requirements of the function grow exponentially (with the position of the number in the Fibonacci sequence) /\/ the function has big-O complexity O(2#super[n]) /\/ the function has exponential time complexity; \
        *A*. a#super[n] \
        *R*. responses relating to the problem rather than the function

        *Max 2*
      ]
    ),
    (
      number: 9.4,
      marks: 2,
      solution: [
        #AO1

        *2 marks* for making all three points from this list or *1 mark* for making one or two points from the list:
        - one (or more) argument(s) to a function are fixed \ *A*. function is applied to one/some of its arguments \ *R*. function applied to its arguments
        - creating a new function
        - with fewer arguments /\/ that takes the remaining arguments.

        Accept descriptions of functions with a specific number of arguments assumed by the student, for example:
        - one of the arguments of a three-argument function is fixed
        - creating a new function
        - with two arguments.
      ]
    ),
    (
      number: 10.1,
      marks: 1,
      solution: [
        *C*;

        *R*. if more than one lozenge is shaded
      ]
    ),
    (
      number: 10.2,
      marks: 1,
      solution: [
        *D*;

        *R*. if more than one lozenge is shaded
      ]
    ),
    (
      number: 10.3,
      marks: 1,
      solution: [
        *Mark is AO1 (understanding)*

        Maximuses precision / accuracy for given number of bits; \
        *Note*: Must have concept of given number of bits or an example of this eg word length.

        Unique representation of each number /\/ simpler to test for equality of numbers;

        *Max 1*
        #v(13cm)
      ]
    ),
    (
      number: 10.4,
      marks: 2,
      solution: [
        #AO2
        #align(center)[#image("images/10.4 diagram.png")]

        *2 marks* for correct final answer written to 4dp; -0.0430 or as a fraction: -11/256 \
        *A*. written to more decimal places (rounded or truncated), the exact answer is -0.04296875

        If answer is incorrect then award *1 method mark* for either:
        - showing correct value of both mantissa and exponent in decimal \
        (Mantissa = -0.6875 / -11/16 Exponent = -4)
        - showing binary point shifted 4 places to left in binary number
        - indicating that final answer has been calculated using \ answer = mantissa $times$ 2#super[exponent] and used either the correct mantissa, the correct exponent, or both in this calculation.
      ]
    ),
    (
      number: 10.5,
      marks: 3,
      solution: [
        #AO2

        *3 marks for correct final answer:*
        #align(center)[#image("images/10.5 diagram.png")]

        If answer is incorrect then award *up to 2 method marks*, one for each point from this list:
        - correct (unsigned) fixed point representation of 43 057 152 in binary: \ 10 1001 0001 0000 0000 0000 0000 *A*. leading 0s
        - identifying the need to represent 2#super[25]2#super[23] and 2#super[20] /\/ adding 2#super[25]2#super[23] and 2#super[20] /\/ calculating closest value that can be represented is 42 991 616 \ *A*. inclusing of 2#super[16] /\/ 65 536 \ *A*. vlaues given in decimal: 33 554 432 and 8 388 608 and 1 048 576 \ *R*. other powers of 2 also given (apart from 16)
        - showing the correct value of the exponent in decimal (26) or binary (11010) in the working space or in binary in the final answer box /\/ showing the binary point being shifted 26 places left
        - showing the correct value of the mantissa in binary in the working space or final answer box
        - giving mantissa as 1.0100100 and exponent as 011001
        - giving mantissa as 0.0101001 and exponent as 011011
      ]
    ),
    (
      number: 10.6,
      marks: 1,
      solution: [
        *Mark is AO2 (apply)*

        *1 mark:* 0.1522 (%)

        *A*. written to more decimal places (rounded or truncated): 0.1522070015 to 10 dp \
        *R*. -0.1522 %
        #v(13cm)
      ]
    ),
    (
      number: 11,
      marks: 4,
      solution: [
        #AO2

        *Marking guidance for examiners*
        - Award marks for working out until an incorrect step has been made.
        - Ignore missing steps from the example solutions, as long as the jumps between steps are logically correct.
        - If, in any one step, a candidate is simplifying different parts of an expression simultaneously and one part is simplified incorrectly, award all relevant marks for this multiple stage mut don't award any further marks for subsequent stages. \
        For example, if the expression P.P.(P+Q) + P.P.1 was changed to P.(P+Q) + P.0, the candidate would get one mark for correctly simplifying the first part to P.(P+Q) even though the simplification of P.P.1 to P.0 is incorrect. However, no further marks could be awarded for later simplification steps.

        *1 mark* for final answer: $overline(A+C)$ \ *R*. $overline(A) dot overline(C)$

        *max 3* for working. Award up to *three marks* for aplying any of these techniques (can award multiple marks for applying the same technique multiple times):
        - a successful application of De Morgan's laws (and any associated cancellation of NOTs)
        - applying an identity other than cancelling NOTs that produces a simpler expression (Note: A simpler expression is one that is logically equivalent to the original expression but uses fewer logical operators)
        - successfully expanding brackets /\/ factorising.
        *Max 3* overall if any incorrect working.

        *Example Solution 1*
        #align(center)[#image("images/11.1.png")]#v(13cm)
        *Example Solution 2*
        #align(center)[#image("images/11.2.png")]
        *Example Solution 3*
        #align(center)[#image("images/11.3.png")]
        *Partial Example Solution*

        This is the start of a solution when De Morgan's is applied first to each of the OR operators. Many further steps are required to arrive at a fully correct solution but this partial solution is worth 3 marks.
        #align(center)[#image("images/11 Partial.png")]

        *Incorrect Example*
        
        This is an incorrect application of De Morgan's or it has been correctly applied multiple times and the order of precedence has been lost. No marks can be awarded if this is the first step that a student has shown.

        $overline(A) + overline(B) dot A + overline(C) dot overline(B) + overline(C) dot B + overline(A)$
#v(13cm)
      ]
    ),
    (
      number: 12,
      marks: 6,
      solution: [
        #AO2
        #table(columns:2,
        align(center)[*Section*],align(center)[*Purpose*],
        [*2*],[Keep going forward / wait / loop until a touch sensor / (at least) one of sensors *X*, *Y* or *Z* is activated /\/ keep going forward / wait / loop if no touch sensors / none of sensors *X*, *Y* or *Z* are activated;
        
        *A*. check if (at least) one / any of sensors *X*, *Y* or *Z* /\/ any of the touch sensors are activated],
        [*3*],[Stop the robot moving (forward); \ *A*. stop (both) the motors],
        [*4*],[*1 mark*: Count how many #underline[touch] sensors /\/ count how many of sensors *X*, *Y* or *Z* are activated; \
        *1 mark*: End the program (*A*. stop) if the number of active (touch) sensors is not 2 / is 1 or 3 (*A*. 0, 1 or 3); \
        #align(center)[*OR*] \
        *2 marks*: End the program (*A*. stop) if the number of active #underline[touch] sensors is not 2 / is 1 or 3 (*A*. 0, 1 or 3) /\/ end the program (*A*. stop) if the number of sensors *X*, *Y* and *Z* that are on is not 2 / is 1 or 3 (*A*. 0, 1 or 3);;
        
        *NE*. stop the robot for end the program],
        [*5*],[Turn on / move the (robot accessory) arm;],
        [*6*],[Keep the arm moving until the light sensor is activated /\/ stop the arm when the light sensor is activated /\/ wait until the light sensor is activated then stop the arm;]
        )

        *For all sections, accept sensor being on or sensor having a value of 1 instead of sensor activated and accept sensor being off or sensor having a value of 0 instead of sensor deactivated.*

        *For sections 2 3, 5 and 6, do not award mark if any additional purposes are described which are incorrect.*

        *For section 4, Max 1 if any additional purposes are described which are incorrect but ignore descriptions relating to continuation of something that is already happening.*

        *Ignore lower level descriptions of code* such as 'Add one onto `R3`, \ 'Shift `R0` right' etc
      ]
    )



  )
)



]