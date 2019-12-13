# Remote-PC-through-cloud-computing
ABSTRACT
Remote PC control through cloud is used to control remote PC through another PC or mobiles from any place. here we can control the PC mainly in three modes there are DOS mode, control mode, monitor mode. DOS mode is used to control the PC through commands through DOS prompt. monitor mode is used to view the PC through screenshots control motor is used to take full control with keystrokes and mouse clicks. In our project we can connect any number of devices to any number of devices. The device must support the web browser hear the display will be in single screen. this support multiplies connections this project is used for online classes where one screen with multiple systems connection will applied. it provides greater security for the communication.















CHAPTER				TITLE					PAGE
NO.											NO.
LIST OF FIGURES
LIST OF TABLES
LIST OF ABBREVATIONS
INTRODUCTION
    1.1 About the project
    1.2 System Study
        1.2.1. Existing System
        1.2.2. Proposed System
    1.3 Layout of chapters
2.						SYSTEM ANALYSIS
    2.1 System Architecture
    2.2 System Requirements
     2.2.1 Software Requirements
2.2.2 Hardware Requirements
3.					SYSTEM DESIGN
    3.1 Overview
    3.2 Data Flow Diagram
    3.3 UML Diagrams				
4.					SYSTEM IMPLEMENTATION
    4.1 System Modules
4.2 Algorithms used
4.3 Software Description
5.					SYSTEM TESTING
5.1 Introduction
5.2 Types of testing
6.						EXPERIMENTAL RESULTS
6.1 Execution screenshots
7.					CONCLUSION AND FUTURE ENHANCEMENT
7.1 Conclusion
7.2 Future Enhancement
8.					REFERENCES












LIST OF FIGURES
FIGURE						FIGURE NAME					PAGE
NO												NO
1.1						TCP Session establishment and termination
2.1						System Architecture
3.1 Data flow diagram
3.2 Use case diagram
3.3 Class diagram
3.4 Sequence diagram
6.1 User login page at host
6.2 Homepage
6.3 Modes selection page
6.4 Dos mode
6.5 Monitor mode
6.6 Control mode
6.7 User Registration page
6.8 User Login page





LIST OF TABLES
S. No					Table Name				Page No
5.1					Test Cases




















LIST OF ABBREVATIONS
ACRONYMS						ABBREVATIONS
API						Application Programming Interface
CSS						Cascading Style Sheets
GUI						Graphical User Interface
HTML						Hyper Text Markup Language
JDBC						Java Database Connection
JDK						Java development Kit
JSP						Java Server Pages
ODBC						Open Database Connection
PHP 						PHP Hyper Text Preprocessor
RDBMS					Relational Database Management System
SQL						Structured Query Language
UML 						Unified Modeling Language









1. INTRODUCTION
1.1 ABOUT PROJECT:
Remote PC control through cloud is used to control the remote PC through another PCs and mobiles from any place. Here, we can control the PC mainly in three modes. They are Dos mode, control mode, monitor mode. Dos mode is used to control the PC through commands in dos prompt. Monitor mode is used to control the PC through mouse clicks, Control mode is used to access the PC through full control with dos commands, screen shots and mouse clicks.
In our project, we can connect any number of devices with any security issues or connection issues. Every device must support the web browser.
1.1.1 What is Remote control PC?
Refers to a program's or device's ability to control a computer system from a remote location. Remote-control programs for PCs enable you to access data stored on your home system even when you are travelling.
Remote control is different from remote access. In remote control, only keystrokes and screen updates are transmitted between the two machines as all processing originates in the remote-control device. In a remote access setup, the user is logged onto the network, using the phone line as an extension to the network. Thus, all traffic has to flow over a low-speed telephone line
1.1.2 What is Remote PC control through cloud?
In Remote PC control through cloud, the PC is accessed from any device. It is connected from any location but the device must support the web browser. The data means files, screen shots are saved in the cloud. If the data is saved in the cloud then we can access from any place at any time.
1.1.3 Features of Remote PC control through cloud
•	Supports multiple connections at the same time.
•	Different work modes: "view only" and "full control", "control mode"
•	Different display modes: "windowed", "full screen", and "scaled".
•	File transfer between local and remote computers
•	Remote power management (remote shutdown, reboot, logoff, etc.)
•	Strong connection security
•	Runs as a service on the systems
1.2 SYSTEM STUDY:
Remote PC control through cloud is used to control the remote PC through another PCs and mobiles from any place. Here, we can control the PC mainly in three modes. They are Dos mode, control mode, monitor mode. Dos mode is used to control the PC through commands in dos prompt. Monitor mode is used to control the PC through mouse clicks. Control mode is used to access the PC through full control with dos commands, screen shots and mouse clicks. In our project, we can connect any number of devices with any security issues or connection issues. Every device must support the web browser. Here, the display will be in single screen. This supports multiple connections. This project used for online classes where one screens will appear. It provides security by using various algorithms.
1.2.1 Existing System
•	In the existing system, the connection is established by TCP connection between the PC's. TCP connection has many numbers of different states. In TCP connection, the first step is connection establishment and the last step is the connection termination.
•	The connection is established through the following steps:
To establish a connection, TCP uses a three-way handshake. Before a client attempt to connect with a server, the server must first bind to and listen at a port to open it up for connections: this is called a passive open. Once the passive open is established, a client may initiate an active open. To establish a connection, the three-way (or 3-step) handshake occurs:
1. SYN: The active open is performed by the client sending a SYN to the server. The client sets the segment's sequence number to a random value A.
2. SYN-ACK: In response, the server replies with a SYN-ACK. The acknowledgment number is set to one more than the received sequence number i.e. A+1, and the sequence number that the server chooses for the packet is another random number, B.
3. ACK: Finally, the client sends an ACK back to the server. The sequence number is set to the received acknowledgement value i.e. A+1, and the acknowledgement number is set he more than the received sequence number i.e. B+1
At this point, both the client and server have received an acknowledgment of the connection The steps 1, 2 establish the connection parameter (sequence number) for one direction and it is acknowledged. The steps 2, 3 establish the connection parameter (sequence number) for the other direction and it is acknowledged. With these, a full-duplex communication is
•	The connection is terminated through the following steps:
The connection termination phase uses a four-way handshake, with each side of the connection terminating independently. When an endpoint wishes to stop its half of the connection, it transmits a FIN packet, which the other end acknowledges with an ACK. Therefore, a typical tear-down requires a pair of FIN and ACK segments from each TCP endpoint. After the side that sent the first FIN has responded with the final ACK, it waits for a timeout before finally closing the connection, during which time the local port is unavailable for connections; this prevents confusion due to delayed packets being delivered during subsequent connections.
It is also possible to terminate the connection by a 3-way handshake, when host A sends a FIN and host B replies with a FIN & ACK (merely combines 2 steps into one) and host A replies with an ACK.









The following diagram will explain the connection between two hosts:
 
Fig:	1.1. Tcp session establishment and termination
•	Different applications for different OS. That means, we need different software for windows operating system. If the users are Linux users then we need different software for the connection establishment. Remote desktop software, more accurately called remote access software or remote-control software, allows you to remotely control one computer from another. By remote control I truly mean remote control - you can take over the mouse and keyboard and use the computer you've connected to just like your own. In general, remotely accessing a computer requires that a piece of software be installed on the computer you want to connect to, called the host. Once that's done another computer or device with the right credentials, called the client, can connect to the host and control it
The software's available in the market for windows software are as follows:
•	Team Viewer
•	Remote Utilities
•	Ammyy Admin
The software's available in the market for Linux arc as follows:
•	AndroMouse
•	Blink Linux Remote Control
1.2.1.1 Disadvantages of existing system:
•	Only peer to peer connection
•	Less number of connections
•	Network Dependency
•	Infection of client through remote hosted files
•	Man-in-the-middle
•	Social engineering attacks
•	Firewall problem
1.2.2 Proposed system
Refers to a program's or device's ability to control a computer system from a remote location. Remote-control programs for PCs enable you to access data stored on your home system even when you are travelling
Remote control is different from remote access. In remote control, only keystrokes and screen updates arc transmitted between the two machines as all processing originates in the remote-control device. phone line as an extension to the network. Thus, all traffic has to flow over a low-speed telephone line remote-control device In a remote access setup, the user is logged onto the network, using the
Remote PC control through cloud is used to control the remote PC through another PCs and mobiles from any place. Here, we can control the PC mainly in three modes. They are Dos mode, control mode, monitor mode, Dos mode is used to control the PC through commands in dos prompt. Monitor mode is used to control the PC through mouse clicks
In our project, we can connect any number of devices with any security issues or connection issues. Every device must support the web browser
In Remote PC control through cloud, the PC is accessed from any device. It is connected from any location but the device must support the web browser. The data means files, screen shots are saved in the cloud. If the data is saved in the cloud then we can access from any place at any time.
 Remote PC control through cloud supports multiple connections at the same time. Different work modes: "view only" and "full control", "control mode". Different display modes: Windowed full screen and "scaled" File transfer between local and remote computers Remote power management (remote shutdown, reboot, logoff, etc.). Strong connection security. Runs as a service on the systems. Works through the firewalls Supports high screen resolutions and color depths. Uses a log file to log the events and solve connection problems. It has strong security and encryption features
1.2.2.1 Advantages of proposed system
•	Modes based on internet connection. There are three kinds of modes in the proposed system. They are: dos mode, monitor mode, full control mode. Dos mode is used to control the PC through commands in dos prompt.
•	Monitor mode is used to control the PC through mouse clicks. Control mode is used to access the PC through full control with dos commands, screen shots and mouse clicks
•	One of the most important advantages is in Remote PC control through cloud, the PC is accessed from any device. It is connected from any location but the device must support the web browser
•	The data means files, screen shots are saved in the cloud. If the data is saved in the cloud then we can access from any place at any time
•	Multiple connections is another advantage of remote PC control through cloud. Here, we connect to any number of devices which supports the web browser
•	Strong security is another advantage of the system. Various secure algorithms are used for providing security to the connected devices.
•	Works through the firewalls Supports high screen resolutions and cooler depths. Uses a log file to log the events and solve connection problems. It has strong security and encryption features
•	Another Advantage is the connection is made through server and the connected system does not affect through the infected files present in the system
•	The proposed system is free from the attacks like man in the middle attack and social engineering attacks
•	Some other advantages are Remote power management, File transfer between local and remote computers, Strong connection security
1.3 Layout of chapters:
Chapter 2: System Analysis
This chapter contains system Architecture, requirements and software description. This chapter totally focuses on the overall architecture of the system
Chapter 3: System Design
This chapter mainly focuses on designing part of the system, data flow diagram and UML diagram this chapter mainly focuses on designing part of the system.
Chapter 4: System Implementation
This chapter contains design of the system and algorithms used. This chapter totally discusses about the modules of the system
Chapter 5: System Testing
This chapter explains the information about testing. And it also explains about how the testing is performed.
Chapter 6: Experimental Results
This chapter contains outcome and screenshots. And it also explains about the screenshots and about the outcome of them
Chapter 7: Conclusion and Future enhancements	
This chapter contains conclusion and future enhancements. It mainly concentrates on future enhancements to be done
2. SYSTEM ANALYSIS
2.1 SYSTEM ARCHITECTURE:
•	In this architecture totally there, are five components. They are web server, ftp server, database, client and hosted machine
•	Totally there are three modes of controlling is possible here.
•	Each mode has its own significance in its working.
•	The three modes are dos, monitor, control mode.
The following diagram explains the system architecture:
 
Fig: 2.1 System Architecture
2.1.1 Dos mode
•	In dos mode, the components or component which wants to control the hosted machine goes as follows
•	First the hosted machine needs to be in hosted state and its ready to provide dos service
•	Then client should have permission to access that system using dos mode
•	If both are cleared then in the client system the user enters the command and that is sent to the web server
•	Now the web server stores the command in database
•	The hosted system containing dos service checks whether there is any command to execute or not in certain interval of time
•	But now the command is available so the dos service downloads it from web server which in turn takes it from database based on credentials
•	Then the hosted system executes it and sends the output of that command to file and saves that tile name in the database through web server
•	The file is uploaded to ftp server via ftp client by the hosted system
•	Then when some command is given by the client system the client checks regularly for the output on web server
•	If the output is found the client asks the web server to download the content
•	Then the web server takes the output from the file stored in ftp server through ftp server and sends to client system
•	Then user can see the output on his screen.
2.1.2 Monitor mode:
•	First the hosted system should be ready for providing the monitor service and the client system should have permission to access that. Now the client system checks whether any new image uploaded or not in database through web server
•	If it is found the image name is downloaded from the database via web server and downloads the image file from ftp server by giving name via web server 
•	The downloaded image is shown on the client system
•	Before that in hosted system the monitor service takes the screen shots of the system 
•	Uploads the image files to the ftp server via web server
•	Stores the image count and name in database via web server
2.1.3 Control mode:
•	First the hosted system should be ready with the control service
•	The hosted system should take screenshots according to the speeds provided by the user
•	The screen shots need to be uploaded to the ftp server via web server with the same speed
•	The image count and latest name should be stored in the database via web server
•	Now the client machine should have permissions to access the hosted machine via control mode
•	If it having permission then the client checks for the latest images
•	It checks regularly in database via web server if it is found then it downloads the name of the image file from the database via web server
•	Downloads the image file from the ftp server by giving that name via web server and displays it in client side
•	Now in the client side if user clicks through mouse or touches the phone screen or presses a key it is recorded and sent to web server
•	The web server in turn stores the events in database
•	Now the hosted machine downloads the events and executes them on hosted system
•	Since it is sending the images the output is shown on the client-side screen
2.2 SYSTEM REQURIMENTS:
2.2.1. Software Requirements:
•	Operating systems	: Windows 8.1, Linux
•	Coding languages	: J2SE, J2EE, web technologies
•	IDE			: NetBeans 8.1
•	Database		: MYSQL
•	Server			: Tomcat
•	FTP			: FileZilla
2.2.2. Hardware Requirements:
•	Processor		: Intel Dual core 1.2 GHz.
•	Hard Disk		: 40 GB
•	RAM			: 512MB
3. SYSTEM DESIGN
System design is the process of defining the architecture, components, modules, interfaces, and data for a system to satisfy specified requirements. Systems design could be seen as the application of systems theory to product development. There is some overlap with the disciplines of systems analysis, systems architecture and systems engineering.
3.1 Overview:
If the broader topic of product development "blends the perspective of marketing, design, and manufacturing into a single approach to product development", then design is the act of taking the marketing information and creating the design of the product to be manufactured. Systems design is therefore the process of defining and developing systems to satisfy specified requirements of the user 
Until the 1990s, systems design had a crucial and respected role in the data software resulted in the processing industry. In the 1990s, standardization of hardware and ability to build modular systems. The increasing importance of software running on generic platforms has enhanced the discipline of software engineering
Object-oriented analysis and design methods are becoming the most widely used methods for computer systems design. The UML has become the standard language in object-oriented analysis and design. It is widely used for modelling software systems and is increasingly used for high designing non-software systems and organizations
3.1.1Architectural design:
The architectural design of a system emphasizes the design of the system architecture that describes the structure, behavior and more views of that system and analysis
3.1.2Logical design:
The logical design of a system pertains to an abstract representation of the data flows, inputs and outputs of the system. This is often conducted via modelling, using an over-abstract (and sometimes graphical) model of the actual system. In the context of systems, designs are included. Logical design includes entity-relationship diagrams (ER diagrams)
3.1.3 Physical design:
The physical design relates to the actual input and output processes of the system. This is explained in terms of how data is input into a system, how it is verified/authenticated, how it is processed, and how it is displayed. In physical design, the following requirements about the system are decided.
•	Input requirement
•	Output requirements
•	Storage requirements
•	Processing requirements
•	System control and backup or recovery
Put another way, the physical portion of system design can generally be broken down into three sub-tasks:
•	User Interface Design
•	Data Design
•	Process Design
User Interface Design is concerned with how users add information to the system and with how the system presents information back to them. Data Design is concerned with how the data is represented and stored within the system. Finally, Process Design is concerned with how data moves through the system, and with how and where it is validated, secured and/or transformed as it flows into, through and out of the system. At the end of the system design phase, documentation describing the three sub-tasks is produced and made available for use in the next phase.
Physical design, in this context, does not refer to the tangible physical design of an information system. To use an analogy, a personal computer's physical design involves input via a keyboard, processing within the CPU, and output via a monitor, printer, etc. It would not concern the actual layout of the tangible hardware, which for a PC would be a monitor, CPU, motherboard, hard drive, modems, video/graphics cards, USB slots, etc. It involves a detailed design of a user and a product database structure processor and a control processor. The H/S personal specification is developed for the proposed system
3.2 Data Flow Diagram:
•	The DFD is additionally known as bubble chart. its a straightforward graphical formalism that may be wont to represent a system in terms of the input file to the system, varied process meted out on these knowledges, and therefore the output knowledge is generated by the system
•	The knowledge multidimensional language (DFD) is one amongst the foremost necessary modelling tools. It's wont to model the system elements. These elements area unit the system method, the information employed by the method, associate degree external entity that interacts with the system and therefore the info flows within the system
•	DFD shows however the knowledge moves through the system and the way it's changed by a series of transformations. It's a graphical technique that depicts info flow and therefore the transformations that area unit applied as knowledge moves from input to output.
•	DFD is additionally called bubble chart. A DFD is also wont to represent a system at any level of abstraction. DFD is also partitioned off into levels that represent increasing info flow and useful detail.
3.2.1 NOTATIONS:
3.2.1.1 SOURCE OR DESTINATION OF DATA:
External sources or destinations, which can be folks or organizations or alternative entities


3.2.1.2 DATA SOURCE
Here the information documented by a method is keep and retrieved


3.2.13 PROCESS:
People, procedures or devices that turn out knowledge. The physical part isn't known.

3.2.1.4 DATA FLOW:
Data moves in a specific direction from an origin to a destination. the information flow could be a "packet" of knowledge.

3.2.2 MODELING RULES:
There are many common modelling rules once making DFDs
1. All processes should have a minimum of one knowledge flow in and one knowledge emanate.
2. All processes ought to modify the incoming knowledge, manufacturing new varieties of outgoing knowledge.
3. Every knowledge store should be attached a minimum of one knowledge flow
4. Every external entity should be attached a minimum of one knowledge flow
5. A knowledge flow should be connected to a minimum of one method








Fig:3.1 Data flow Diagram


3.3 UML Diagrams
UML is a standard language for specifying, visualizing, constructing, and documenting the artifacts of software systems. UML was created by Object Management Group (OMG) and UML 1.0 specification draft was proposed to the OMG in January 1997.OMG is continuously patting effort to make a truly industry standard.
•	UML stands for Unified Modeling Language
•	UML is different from the other common programming languages like C++, Java and COBOL etc.
•	UML is a pictorial language used to make software blue prints
•	So, UML can be described as a general-purpose visual modelling language to visualize, specify, construct and document software system. Although UML is generally used to model software systems but it is not limited within this boundary. It is also used to model non-software systems as well like process flow in a manufacturing unit etc. 
•	UML is not a programming language but tools can be used to generate code in various languages using UML diagrams. UML has a direct relation with object-oriented analysis and design. After some standardization UML is become an OMG (object Management Group) standard.
3.3.1 Goals of UML:
•	picture is worth a thousand words, this absolutely fits while discussing about UML Object oriented concepts were introduced much curlier than UML. So, at that time there were no standard methodologies to organize and consolidate the object-oriented development. At that point of time UML came into picture
•	There are a number of goals for developing UML but the most important is to define some general-purpose modelling language which all modelers can use and also it needs to be made simple to understand and use
•	UML diagrams are not only made for developers but also for business users, common people and anybody interested to understand the system
3.3.2 A conceptual model of UML
To understand conceptual model of UML first we need to clarify what is a conceptual model? And why a conceptual model is at all required?
•	A conceptual model can be defined as a model which is made of concepts and their relationships.
•	A conceptual model is the first step before drawing a UML diagram. It helps to understand the entities in the real world and how they interact with each other
As UML describes the real time systems it is very important to make a conceptual model and then proceed gradually. Conceptual model of UML can be mastered by learning the following three major elements:
•	UML building blocks
•	Rules to connect the building blocks 
•	Common mechanisms of UMI
3.3.3 UML Diagrams:
UML diagrams are the ultimate output of the entire discussion. All the element relationships are used to make a complete UML diagram and the diagram represents a system.
The visual effect of the UML diagram is the most important part of the entire process. the other elements are used to make it a complete one.
UML includes the following nine diagrams and the details are described in the following chapters
•	Class diagram
•	Object diagram
•	Use case diagram
•	Sequence diagram
•	Collaboration diagram
•	Activity diagram
•	State chart diagram
•	Deployment diagram
•	Component diagram
3.3.3.1 Standard Diagrams:
We prepare UML diagrams to understand a system in better and simple way. A single diagram is not enough to cover all aspects of the system. So UML defines various kinds of diagrams to cover most of the aspects of a system.
There are two broad categories of diagrams and then are again divided into sub-categories
•	Structural Diagrams
•	Behavioral Diagrams
3.3.3.1.1 Structural Diagrams:
The structural diagrams represent the static aspect of the system. These static aspects represent those parts of a diagram which forms the main structure and therefore stable. 
These static parts are representing by classes, interfaces, objects, components and nodes. The These four structural diagrams are:
•	Class diagram
•	Object diagram
•	Component diagram
•	Deployment diagram
3.3.3.1.2 Behavioral Diagrams:
Any system can have two aspects, static and dynamic. So a model is considered as complete when both the aspects are covered fully
Behavioral diagrams basically capture the dynamic aspect of a system. Dynamic aspect can be further described as the changing/moving parts of a system
UML has the following five types of behavioral diagrams
•	Use case diagram
•	Sequence diagram
•	Collaboration diagram
•	State chart diagram
•	Activity diagram.
3.3.3.1.2.1 Use case Diagram:
A use case diagram within the Unified Modelling Language (UML) could be a kind of behavioral diagram outlined by and created from a Use-case analysis. A use case diagram at its simplest is a representation of a user's interaction with the system that shows the relationship between the user and the different use cases in which the user is involved. A use case diagram can identify the different types of users of a system and the different use cases and will often be accompanied by other types of diagrams as well.
 




 
Fig: 3.2 Use case diagram for admin





3.3.3.1.2.2 Class Diagram:
In computer code engineering, a category diagram within the Unified Modelling Language (UML) could be a kind of static structure diagram that describes the structure of a system by showing the system's categories, their attributes, operations (or methods), and therefore the relationships among the categories. It explains that category contains data.
 
Fig: 3.3 Class Diagram
3.3.3.1.2.3 Sequence Diagram:
A sequence diagram in Unified Modelling Language (UML) could be a reasonably interaction diagram that shows however processes operate with each other and in what order. It's a construct of a Message Sequence Chart. Sequence diagrams are typically referred to as event diagrams, event situations, and temporal order diagrams.
 
4. SYSTEM IMPLEMENTATION
4.1 System modules:
•	Hoisting Module
•	Live Streaming Module
•	Controlling Module
•	Security Module
4.1.1 Hoisting Module:
•	It is used to host PC.
•	It is used to connect to server
•	It stores data through FTP server
4.1.2 Live Streaming Module
•	It is used for sending commands. i.e. DOS
•	It is used for sending images. i.e. Monitor
•	It is used for sending videos i.e. Full control
•	It is used for receiving output of commands.
•	It is used for receiving images
4.1.3 Controlling Module:
•	It is used for executing the commands i.e. processes 
•	It is used for giving key presses
•	It is used for giving mouse clicks
•	It is used for moving mouse
•	It is used for receiving and saving settings
4.1.4 Security Module:
•	It implements RC4 Algorithm
•	It provides security between PC and Web Server
•	It provides security between server and browser
4.2 Algorithms Used:
In security module, the system implements the RC4 algorithm.
In cryptography, RC4 (Rivets Cipher 4 also known as ARC4 or ARCFOUR meaning Alleged RC4, see below) is a stream cipher. While remarkable for its simplicity and speed in software, multiple vulnerabilities have been discovered in RC4, rendering it insecure. It is especially vulnerable when the beginning of the output key stream is not discarded, or when nonrandom or related keys are used. Particularly problematic uses of RC4 have led to very insecure protocols such as WEP
4.2.1 History
RC4 was designed by Ron Rivets of RSA Security in 1987. While it is officially termed "Rivets Cipher 4", the RC acronym is alternatively understood to stand for "Ron's Code" (see also RC2, RC5 and RC6).
RC4 was initially a trade secret, but in September 1994 a description of it was anonymously posted to the Cypherpunks mailing list. It was soon posted on the sci.crypt newsgroup, and from there to many sites on the Internet. The leaked code was confirmed to be genuine as its output was found to match that of proprietary software using licensed RC4. Because the algorithm is known, it is no longer a trade secret. The name RC4 is trademarked, so RC4 is often referred to as ARCFOUR or ARC4 (meaning alleged RC4) to avoid trademark problems. RSA Security has never officially released the algorithm
RC4 became part of some commonly used encryption protocols and standards, such as WEP in 1997 and WPA in 2003/2004 for wireless cards; and SSL in 1995 and its successor TLS in 1999, until it was prohibited for all versions of TLS by RFC 7465 in 2015, due to the RC4attacks weakening or breaking RC4 used in SSLTLS. The main factors in RC4's success over such a wide range of applications have been its speed and simplicity: efficient implementations in both software and hardware were very easy to develop.
4.2.2 Description:
RC4 generates a pseudorandom stream of bits (a key stream). As with any stream cipher these can be used for encryption by combining it with the plaintext using bit-wise exclusive-or decryption is performed the same way (since exclusive-or with given dates is an involution (this is similar to the Vernam cipher except that generated pseudorandom bite, father than s prepared stream, are used.) To generate the key stream, the cipher makes use of a secret internal sate which consists of two parts:
1. A permutation of all 256 possible bytes (denoted "S" below).
2. Two 8-bit index-pointers (denoted "i" and “j”).
The permutation is initialized with a variable length key, typically between 0 and 2% bits, using the key-scheduling algorithm (KSA). Once this has been completed, the stream of bits is generated using the pseudo-random generation algorithm (PRGA).
4.2.3 Key-scheduling algorithm (KSA)
The key-scheduling algorithm is used to initialize the permutation in the array "S. "Key length" is defined as the number of bytes in the key and can be in the fame I S key length s 256, typically between 5 and 16, corresponding to a key length of 40 128 bits. First, the array "S" is initialized to the identity permutation. S is then processed for 256 iterations in a similar way to the main PRGA, but also mixes in bytes of the key at the same time. 
forifrom 0 to 255
S[i] := i
endfor
forifrom 0 to 255
j :=(J+ S[i]+ key[imodkeylength]) mod 256
swap values of S[i] and S[i]
endfor
Pseudo-random generation algorithm (PRGA)
 
Fig:4.1 pseudo-random generation algorithm
The lookup stage of RC4. The output byte is selected by looking up the values of Sil and S[i], adding them together modulo 256, and then using the sum as an index into S; S(S[i] + S(j)) is used as a byte of the key stream, K.
For as many iterations as are needed, the PRGA modifies the state and outputs a byte of the key stream. In each iteration, the PRGA increments i, looks up the ith element of S, SL1, and adds that to j, exchanges the values of S[.l and SUJ, and then uses the sum Sal+ SU] (modulo 256) as an index to fetch a third clement of S, (the key stream value K below) which is bitwise exclusive OR'ed (XOR'ed) with the next byte of the message to produce the next byte of either cipher text or plaintext. Each element of S is swapped with another element at least once every 256 iterations.
I := 0
J := 0
while Generating Output
i (i+1) mod 256
j Si) mod 256
swap values of S[i] and Sij
K: St(STi]+ SüJ) mod 256
output K
endwhile
4.2.4 RC4-based random number generators
Several operating systems include arc4random, API originating in OpenBSD providing access to a random number generator originally based on RC4. in OpenBSD 5.5, released in May 2014, arc4random was modified to use ChaCha20. The implementation of arc4random in NetBSD and Linux'slibbsd also uses ChaCha20. However, the implementations of arc4random in FreeBSD, and Mac OS X are still based on RC4, as of January 2015
Man pages for the new, ChaCha20-based arc4random includes a backronym A ChaCha20. A Replacement Call for Random" for ARC4 as a mnemonic, as it provides better random data than rand() does. 
Proposed new random number generators are often compared to the RC4 random number generator
Several attacks on RC4 are able to distinguish its output from a random sequence.
4.2.5 Implementation:
Many stream ciphers are based on linear feedback shift registers (LFSRs), which, while efficient in hardware, are less so in software. The design of RC4 avoids the use of LFSRs, and is for software implementation, as it requires only byte manipulations. It uses 256 bytes of memory for the state array, s[0] through S[255], k bytes of memory for the key, key[0] through Key[k-1], and integer variables, i, j, and K. Performing a modular reduction of some value modulo 256 can be done with a bitwise AND with 255 (which is equivalent to taking the low-order byte of the value in question). 
4.2.6 Security:
Unlike a modern stream cipher (such as those in eSTREAM), RC4 does not take a separate nonce alongside the key. This means that if a single long-term key is to be used to securely encrypt multiple streams, the protocol must specify how to combine the nonce and the long-term key to generate the stream key for RC4
Because RC4 is a stream cipher, it is more malleable than common block ciphers. If not ether with a strong message authentication code (MAC), then encryption is vulnerable to gtack. The cipher is also vulnerable to a stream cipher attack if not implemented Correctly. Furthermore, inadvertent double encryption of a message with the same key may tally output plaintext rather than cipher text because the involutory nature of the XOR
It is noteworthy, however, that RC4, being a stream cipher, was for a period of time the only common cipher that was immune to the 2011 BEAST attack on TLS 1.0. The attack exploits a known weakness in the way cipher block chaining mode is used with all of the other ciphers supported by TLS 1.0, which are all block ciphers
4.3 SOFTWARE DESCRIPTION:
The software technologies used in this project are:
•	Java
•	PHP
•	MySQL
•	JQuery
•	Bootstrap
4.3.1 Java:
4.3.1.1 What is java?
Java programming language was originally developed by Sun Microsystems which was initiated by James Gosling and released in 1995 as core component of Sun Microsystems' Java platform (Java 1.0 (J2SE]), Java runs on a variety of platforms, such as Windows, Mac OS, and the various versions of UNIX
The latest release of the Java Standard Edition is Java SE 8. With the advancement of Java and its widespread popularity, multiple configurations were built to suit various types of platforms For example: J2EE for Enterprise Applications, J2ME for Mobile Applications.
4.3.1.2 Java is:
•	Object Oriented In Java, everything is an Object. Java can be easily extended since it is based on the Object model.
•	Platform Independent- unlike many other programming languages including C and c++, when Java is compiled, it is not compiled into platform specified machine, rather into platform independent byte code. This byte code is distributed over the web and interpreted by the Virtual Machine (JVM) on whichever platform it is being run on.
•	Simple - Java is designed to be easy to learn. If you understand the basic concept of OOP Java, it would be easy to master
•	Secure - With Java's secure feature it enables to develop virus-free, tamper-free systems. Authentication techniques are based on public-key encryption
•	Architecture-neutral- Java compiler generates an architecture-neutral object file format, which makes the compiled code executable on many processors, with the presence of Java runtime system.
•	Portable - Being architecture-neutral and having no implementation dependent aspects of the specification makes Java portable. Compiler in Java is written in ANSI C with a clean portability boundary, which is a POSIX subset.
•	Robust Java makes an effort to eliminate error prone situations by emphasizing mainly on compile time error checking and runtime checking.
•	Multithreaded - With Java's multithreaded feature it is possible to write programs that can perform many tasks simultaneously. This design feature allows the developers to construct interactive applications that can run smoothly Interpreted Java byte code is translated on the fly to native machine instructions and is not stored anywhere. The development process is more rapid and analytical since the linking is an incremental and light-weight process.
•	High Performance With the use of Just-In-Time compilers, Java enables high performance
•	Distributed-Java is designed for the distributed environment of the internet
•	Dynamic Java is considered to be more dynamic than C or C++ since it is designed to adapt to an evolving environment. Java programs can carry extensive amount of run-time information that can be used to verify and resolve accesses to objects on run-time
4.3.1.3 History of Java:
James Gosling initiated Java language project in June 1991 for use in one of his many set-top box projects. The language, initially called 'Oak' after an oak tree that stood outside Goslings office, also went by the name Green' and ended up later being renamed as Java, from a list of random words.
Sun released the first public implementation as Java 1.0 in 1995. It promised Write Once, Run anywhere (WORA), providing no-cost run-times on popular platforms On 13 November, 2006, Sun released much of Java as free and open source software under the terms of the GNU General Public License (GPL)
On 8 May, 2007, Sun finished the process, making all of Java's core code free and open-source aside from a small portion of code to which Sun did not hold the copyright
4.3.1.4 Tools You Will Need:
You will need a Pentium 200-MHz computer with a minimum of 64 MB of RAM (128 MB of RAM recommended) 
You will also need the following software's
•	Linux 7.1 or Windows xp/7/8 operating system
•	Java JDK 8
Example program
publicclassMyFirstJavaProgram{
pablicstatic void main(Strings[]args) f
System.out.println("Hello World");
}
}
Java is an Object-Oriented Language. As a language that has the Object-Oriented feature, Java the following fundamental concepts
•	Polymorphism
•	Inheritance
•	Encapsulation
•	Abstraction
•	Classes
•	Objects
•	Instance
•	Method
•	Message Parsing
4.3.2 PHP:
4.3.2.1 What is PHP?
PHP is an acronym for "PHP: Hypertext Pre-processor", PHP is a widely-used, open source scripting language. PHP scripts are executed on the server. PHP is free to download and use.
The PHP Hypertext Pre-processor (PHP) is a programming language that allows web developers to create dynamic content that interacts with databases. PHP is basically used for developing web based software applications. This tutorial helps you to build your base with PHP
Let's depict the sentence. The PHP language runs on the server-side. This means that the execution (read starting) of the scripts is done on the server where the web-site is hosted. HITML embedded means that you can use PHP statements (read a piece of PHP code) from thin an HTML code. PHP files are returned to the browser ns plain HTML
The last piece of the sentence - scripting language - is a little harder to explain, but we will give it a go. A scripting language is a form of programming language that is usually interpreted rather than compiled. In programming languages such C or C++ you compile gram (permanently) into an excitable file, before you can execute the program. A program that is written in a scripting language, is interpreted one command at a time by a command interpreter (Command interpreter is in most cases an cxecutable written in another language (for instance C/C++) than the scripting language.) Some other examples of scripting languages are Perl, Python, Java and Ruby
A last note: scripting languages are also often used by applications as control or configure language. An example: Firefox is written in C/C++ and can be controlled with JavaScript.
4.3.2.2 Things You Should Know:
Because PHP is an HTML embedded language you should have a basic understanding of HTML XHTML and (a little) JavaScript. In the coming tutorials we will explain the PHP code, but we won't explain the HTML code (at least not in great detail.) 
In order to develop and run PHP Web pages three vital components need to be installed on your computer system 
•	Web Server PHP will work with virtually all Web Server software, including Microsoft's Internet Information Server (IIS) but then most often used is freely available Apache Server. Download Apache for free here- https:/httpd.apache.org/download.ogi
•	Database PHP will work with virtually all database software, including Oracle and Sybase but most commonly used is freely available MySQL database. Download MySQL for free here -https://www.mysql.com/downloads 
•	PHP Parser In order to process PHP script instructions parser must be installed to generate HTML output that can be sent to the Web Browser. This tutorial will guide you how to install PHP parser on your computer
4.3.2.3 Common uses of PHP
•	PHP performs system functions, ie. from files on a sysem it can create, open, read, write, and close them.
•	PHP can handle forms, i.e. gather data from files, save data to a file, through email you can send data, return data to the user
•	You add, delete, and modify elements within your database through PHP
•	Access cookies variables and set cookies.
•	Using PHP, you can restrict users to access some pages of your website.
•	It can encrypt data.
4.3.2.4 Characteristics of PHP
Five important characteristics make PHP's practical nature possible-
•	Simplicity
•	Efficiency
•	Security
•	Flexibility
•	Familiarity
4.3.2.5 What is a PHP File?
PHP files can contain text, HTML, CSS, JavaScript, and PHP code. PHP code is executed on the server, and the result is returned to the browser as plain HTML. PHP files have extension ".php”
4.3.2.6 What Can PHP Do?
PHP can generate dynamic page content. PHP can create, open, read, write, delete, and server. PHIP' can collect form data. PHP can send and receive cookies.
With PHP you are not limited to output HTML. You can output images, PDF files, and lose files and 
even flash movies. You can also output any text, such as XHTMI and XML
4.3.2.7 Why PHP?
PHP runs on various platforms (Windows, Linux, Unix, Mac OS x, etc.) PHP is compatible with almost all servers used today (Apache, IIS, etc) PHP supports a wide range of databases. PHP is free. Download it from the official PHP resource: www.php.net. PHP is easy to learn and runs efficiently on the server side.
4.3.2.8 What do you need?
Before you can follow the coming PHP tutorials you need to have the following 
•	Access to a web server (like Apache) 
•	PHP and MySQL should be installed on the web server 
The easiest way is to find a cheap web hosting plan that support PHP and MySQL (most of the web-hosting providers do.) For a couple of bucks a month you can get a virtual host. The advantage is that everything is already installed and that you can share your program (that you are going to write) with the rest of the world
If you don't want to spend money, you can also install everything on your local machine. The easiest way is to install WAMP if you have a Windows machine and LAMP if you have a Linux machine. (WAMP Windows Apache MySQL PHP and LAMP = Linux Apache MySQL PHP.) These packages install everything you need. Read the install manual of these packages for instructions. After installation you should have access to http/localhost in your browser
4.3.2.9 How Can We Set Up PHP on Your Own PC:
however, if your server does not support PHP, you must:
•	Install a web server
•	Install PHP
•	Install a database, such as MySQL
.
The official PHP website (PHP.net) has installation instructions for PHP: http://php.net/manual/en/install.php
4.3.2.10 Sample PHP Code:
<IDOCTYPE html>
<html>
<body>
<?php
echo "MyfirstPHPscript!"
</body>
</html>
4.3.2.11 Comments in PHP:
A comment in PHP code is a line that is not read/executed as part of the program. Its only purpose is to be read by someone who is looking at the code.
Comments can be used to:
•	Let others understand what you are doing
•	Remind yourself of what you did - Most programmers have experienced coming back to their own work a year or two later and having to re-figure out what they did. Comments can remind you of what you were thinking when you wrote the code.
4.3.2.12 Advantages of PHP
4.3.2.12.1 Simple and easy to learn:
PHP scripting is definitely one of the easiest, if not the easiest scripting language to learn and grasp for developers. This is partially due to the similarities PHP syntax has with C and Java. even if the only knowledge of development that you have is with HTML, picking up PHP is still fairly easy. For developers just starting out, PHIP is often the first scripting language they lean fairly easy. because it's clear and easy to understand.


4.3.2.12.2 Support:
The last thing you want as a developer is to be? Stuck? With a coding issue and not have anywhere to go for help or answers. Since PHP is so popular and widely used, finding help or documentation for PHP online is extremely easy. The best part is the support is free through forums, PDFs, blogs, and social media. The fact that its open source also contributes to the large support community of PHP and LAMP (Linux, Apache, MySQL, and PHP) in general. PHP has the largest user base of any scripting language.
4.3.2.12.3 Freedom:
When comparing PHP to a language such as ASPX, the level of freedom you get is far superior. As mentioned in reason #2, PHP is open source. You can use any text editor in order to code PHP such as Notebook++, jEdit, Emacs, Bluefish, or even just Notepad if you feel inclined. If you want to develop applications with ASPX, you're going to be limited to Microsoft Visual Studio. Restrictions are never a good thing, especially with coding 
PHP also isn't OS specific. You can run PHP on:
•	Linux
•	Mac OSX
•	Windows
4.3.2.12.4 Free:
There are no costs associated with using PHP, including updates. Keeping costs down is goal of any business and developers as well. So the fact that you can code programs with Php for free is a huge benefit that you won't get with JPS, ASP, or other scripting languages that paid hosting. There are no licenses, restrictions, or royalty fees involved at all. PHP is 100% free for anyone to use.
4.3.2.12.5 Integration:
PHP is used for so many web applications and actually powers over 30% of the web. system such as MongoDB, Memcached, and Pusher all integrate with PHP. Almost any industry you can think of uses PHP applications in some fashion including banks, hospitals, government and large corporations.
4.3.2.12.6 Frameworks:
Almost every benefit of PHP seems to go back to the fact that the community is so large. The number of PHP frameworks available is even further proof of how strong the PHP community is. Whether you're looking for database access librarics, session management, or code reuse, you will have no problem finding PHP frameworks to give you a helping hand. 
Some popular PHP frameworks include:
•	Aiki
•	Symfony
•	Zend
•	Silex
•	Slim
4.3.2.12.7 Easier to fix problems
When it comes to web application development, your bound to ran into issues and across the occasional? Fail? But the benefit you get with Pip is hat problems aren't as default to find and fix as they are with other languages. This is because with each request PHP cleans up and starts over. So ลก issue with one request will not necessarily disruptnanother 
4.3.2.12.8 Scalability
In the world of IT, the word scalability is like gold. Whether you’re dealing with databases, hosting, or in this case, programming, scalability is never a bad thing Dre to the way PHP is built, you can easily increase your cluster size by adding more servers see your project grows
4.3.2.12.9 Object Oriented:
PHP actually has the ability to call Java and Windows COM objects. In addition to you can create custom classes. Other classes can actually borrow from those custom classes as well which extends the capabilities of PHP even further
4.3.2.12.10 Speed:
Since PHP does not use a lot of a system's resources in order to run, it operates much faster than other scripting languages. Hosting PHP is also very easy and lot of support for PHP. Even when used with other software, PHP still retains speed without slowing down other processes. Being that PHP is a mature language, it is also fairly stable because all the kinks have been worked out over the years
4.3.3 MYSQL
4.3.3.1 What is MYSQL?
MySQL is the most popular Open Source Relational SOL database management system MySQL is one of the best RDBMS being used for developing web-based software applications.
4.3.3.2What is SQL?
•	SQL stands for Structured Query Language
•	SQL lets you access and manipulate databases
•	SQL is an ANSI (American National Standards Institute) standard
4.3.3.3 What Can SQL do?
•	SQL can execute queries against a database
•	SQL can retrieve data from a database
•	SQL can insert records in a database
•	SQL can update records in a database
•	SQL can delete records from a database
•	SQL can create new databases
•	SQL can create new tables in a database
•	SQL can create stored procedures in a database
•	SQL can create views in a database
•	SQL can set permissions on tables, procedures, and views
4.3.3.4 Using SQL in Your Web Site:
To build a web site that shows data from a database, you will need
•	An RDBMS database program (i.e. MS Access, SQL Server, MySQL)
•	To use a server-side scripting language, like PHP or ASP
•	To use SOL to get the data you want
•	To use HTML/ CSS
4.3.3.5 What is Database?
A database is a separate application that stores a collection of data. Each database has one or more distinct APIs for creating, accessing, managing, searching and replicating the data it holds
Other kinds of data stores can be used, such as files on the file system or large hash tables In Memory but data fetching and writing would not be so fast and easy with those types of systems
So nowadays, we use relational database management systems (RDBMS) to store and manage huge volume of data. This is called relational database because all the data is stored into different tables and relations are established using primary keys or other keys known as foreign keys.
4.3.3.6 A Relational Data Base Management System (RDBMS)
•	Enables you to implement a database with tables, columns and indexes.
•	Guarantees the Referential Integrity between rows of various tables.
•	Updates the indexes automatically.
•	Interprets an SQL query and combines information from various tables
4.3.3.7 RDBMS Terminology:
Before we proceed to explain MySQL database system, let's revise few definitions related to database.
•	Database: A database is a collection of tables, with related data.
•	Table: A table is a matrix with data. A table in a database looks like a simple spreadsheet.
•	Column: One column (data element) contains data of one and the same kind, for example the column postcode.
•	Row: A row (tuple, entry or record) is a group of related data, for example the data of one subscription
•	Redundancy: Storing data twice, redundantly to make the system faster
•	Primary Key: A primary key is unique. A key value cannot occur twice in one table. With a key, you can find at most one row
•	Foreign Key : A foreign key is the linking pin between two tables
•	Referential Integrity’s Referential Integrity makes sure that a forcing key value always points to an existing row
4.3.3.8 MySQL, Database
•	MySQL is a fast, easy-to-use KDBMS being used for many small and big businesses
•	MySQL is developed, marketed, and supported by MySQL AB, which is a Swedish company
•	MySQL, is becoming so popular because of many good reasons
•	MySQL in released under an open-source license. So you have nothing to pay to use it
•	MySQL is a very powerful program in its own right. It handles a large subset of the functionality of the most expensive and powerful database packages.
•	MySQL uses a standard form of the well-known SOL data language
•	MySQL works on many operating systems and with many languages including PHP, PERL, C, C++, JAVA, etc.
•	MySQL works very quickly and works well even with large data sets
•	MySQL is very friendly to PHP, the most appreciated language for web development.
•	MySQL supports large databases, up to 50 million rows or more in a table. The default file size limit for a table is 4GB, but you can increase this (if your operating system ca handle it) to a theoretical limit of 8 million terabytes (TB)
•	MySQL is customizable. The open-source GPL license allows programmers to modify the MySQL software to fit their own specified environments
4.3.3.9 Installing MYSQL
1. Download the MySQL installer from http:/dev. mysql.com/downloads
2. Double-click downloaded file to mount the click image.
3. To install MySQL double-click the installer package.
4. Follow the installer instruction to complete the installation.
When installation is completed, double-click MySqlStartupltem.pkg installer package to install it as well
4.3.4 jQuery
4.3.4.1 What is jQuery?
There are lots of other JavaScript frameworks out there, but jQuery seems to be the most popular, and also the most extendable
Many of the biggest companies on the Web use jQuery, such as:
•	Google
•	Microsoft
•	IBM
•	Netflix
4.3.4.2 Adding jQuery to Your Web Pages:
There are several ways to start using jQuery on your web site. You can:
•	Download the jQuery library from jQuery.com
•	Include jQuery from a CDN, like Google
4.3.4.3 Downloading jQuery:
There are two versions of jQuery available for downloading:
•	Production version - this is for your live website because it has been minified and compressed
•	Development version - this is for testing and development (uncompressed and readable code)
Both versions can be downloaded from jQuery.com
The jQuery library is a single JavaScript file, and you reference it with the HTML <script> tag (notice that the <script> tag should be inside the <head> section):
4.3.4.4 jQuery Syntax:
The jQuery syntax is tailor-made for selecting HTML elements and performing some action on the element(s).
Basie syntax is: $(selector).action()
•	A $ sign to define/access jQuery
•	A (selector) to "query (or find)" HTML elements
•	A jQuery action) to be performed on the element(s)
4.3.4.5 Examples
$(this).hide() hides the current element
$("p") hide) hides all p elements
$(“.test").hide()- hides all elements with class "test".
4.3.4.6 The 3 main advantages of jQuery are:
•	Its light weight when compared to other JavaScript frameworks
•	It has a wide range of plugins available for various specific needs.
•	It is easier for a designer to learn JavaScript as it uses familiar CSS syntax. jQuery is JavaScript for Designers
4.3.5 BOOTSTRAP:
4.3.5.1 What is BOOTSTRAP?
Bootstrap is the most popular front-end framework in the recent time. It is sleek, intuitive, and powerful mobile first front-end framework for faster and easier web development It uses HTML, CSS and JavaScript.
4.3.5.2 Bootstrap History:
Bootstrap was developed by Mark Otto and Jacob Thornton at Twitter, and released as an open source product in August 2011 on GitHub
4.3.5.3 What is Bootstrap?
•	Bootstrap is a free front-end framework for faster and easier web development
•	Bootstrap includes HTML and CSS based design templates for typography, forms, buttons, tables, navigation, modals, image carousels and many other, as well as optional JavaScript plugins
•	Bootstrap also gives you the ability to easily create responsive designs
4.3.5.4 Why Use Bootstrap?
•	Mobile first approach- Bootstrap 3, framework consists of Mobile first styles throughout the entire library instead them of in separate files.
•	Browser Support- It is supported by all popular browsers.
 
•	Easy to get started -with just the knowledge of HTML and CSS anyone can get started with Bootstrap. also, the Bootstrap official site has a good documentation
•	Responsive design- Bootstrap's responsive CSS adjusts to Desktops, Tablets and Mobiles. More about the responsive design is in the chapter Bootstrap Responsive Design
4.3.5.5 Where to Get Bootstrap?
There are two ways to start using Bootstrap on your own web site
•	Download Bootstrap from getbootstrap.com
•	Include Bootstrap from a CDN
4.3.5.6 Downloading Bootstrap:
If you want to download and host Bootstrap yourself, go to getbootstrap.com, and the instructions there. 
4.3.5.7 What Bootstrap Package Includes?
•	Scaffolding- Bootstrap provides a basic structure with Grid System, link styles, and background. This is covered in detail in the section Bootstrap Basic Structure
•	CSS- Bootstrap comes with the feature of global CSS settings; fundamental HTML elements styled and enhanced with extensible classes, and an advanced grid system This is covered in detail in the section Bootstrap with CSS
•	Components Bootstrap contains over a dozen reusable components built to provide iconography, dropdowns, navigation, alerts, pop-over's, and much more
•	JavaScript Plugins - Bootstrap contains over a dozen custom jQuery plugins. You can easily include them all, or one by one. This is covered in details in the section Bootstrap Plugins
•	Customize You can customize Bootstrap's components, LESS variables, and jQuery plugins to get your very own version.
•	Provides a clean and uniform solution for building an interface for developers
•	It contains beautiful and functional built-in components which are easy to customize.
•	It also provides web based customization
•	Best of all tis an open source.
4.3.5.8 Advantages of Bootstrap:
•	Easy to use: Anybody with just basic knowledge of HTML and CSS can start using Bootstrap.
•	Responsive features: Bootstrap's responsive CSS adjusts to phones, tablets, and desktops
•	Mobile-first approach: In Bootstrap 3, mobile-first styles are part of the core
•	Browser compatibility: Bootstrap is compatible with all modern browsers (Chrome, Firefox, Internet Explorer, Safari, and Opera).
•	Speed of Development: Undoubtedly one of the biggest advantages of using Bootstraps is the speed of development. If you're looking to push out a new website or application quickly, you should definitely consider using Bootstrap
•	Consistency: Bootstrap ensures consistency regardless of who's working on the project In addition, results are uniform across platforms so output remains the same whether you're using Firefox, Chrome or Internet Explorer. 
•	Customizable: Bootstrap can be tailor made according to the specifications of your project. Developers have the ability to pick and choose the features that are needed and the rest can be tossed. This is easily accomplished using the Bootstrap customize page. Simply tick off all the features you don't need and your custom version of Bootstrap will be ready for download. How cool is that?
•	Support: Bootstrap has a huge support community behind it so you can usually get help when your run into issues. Furthermore, Bootstrap itself is being continuously updated and the creators have been really good about putting out timely updates. It's currently being hosted, developed and maintained on GitHub with over 9,000 commits and over 500 contributors
4.3.6 FileZilla
4.3.6.1 What is FileZilla?
FileZilla is a free software, cross-platform FTP application, consisting of FileZilla Client and FileZilla Server. Client binaries are available for Windows, Linux, and macOS, server over SSLTLS)
4.3.6.2 Features:
These are some features of FileZilla
•	Transfer files in FTP, SFTP, encrypted FTP such as FTPS and SFTP
•	Support IPv6 which is the latest version of internet protocol
•	Available in 47 languages worldwide (Arabic, Armenian, Basque, Bulgarian, Catalan, Chinese, Corsican, Croatian, Czech, Danish, Dutch, German, Greek, Estonian, Finnish, French, Gallegan, Hebrew, Hungarian, Indonesian, Icelandic, Italian, Japanese, Georgian, Khmer, Korean, Kurdish, Kyrgyz, Lithuanian, Latvian, Macedonian, Norwegian, Nepali Occitan, Persian (Farsi), Polish, Portuguese, Romanian, Russian, Serbian, Slovak, Slovenian, Spanish, Thai, Turkish, Ukrainian, Vietnamese)
•	Supports resume which means the file transfer process can be paused and continued
•	Tabbed user interface for multitasking, to allow browsing more than one server or even transfer files simultaneously between multiple servers
•	Site Manager to manage server lists and transfer queue for ordering file transfer tasks
•	Bookmarks for easy access to most frequent use
•	Drag and drop to download and upload.
•	Directory comparison for comparing local files and server files in the same directory. When the file doesn't have the same information (name not match, or size not match) it will highlight that file in color
•	Configurable transfer speed limits to limit the speed transferring the files, which helps reducing error of transferring
•	Filename filters, users can filter only specific files that have the conditions they want.
•	Network configuration wizard, help configuring confusing network settings in form of step by-step wizard
•	Remote file editing, for quickly edit file on server side on-the-fly. No need to download, edit on the computer and re-upload back to the server
•	keep alive, if the connection has been idle for the long time it will checek by sending keep-alive command
•	HTTP/1.1, SOCKS5 and FTP-Proxy support
•	Logging to file
4.3.6.3 FileZilla Client:
4.3.6.3.1 General
•	Installation on Windows/Linux/Mac OSX
•	Tutorial
•	Usage instructions
•	Fixing connection and transfer problems; Network configuration
•	Frequently Asked Questions (FAQ)
4.3.6.3.2 Specific features
•	Filename filters
•	Logging in FileZilla
•	Other features
4.3.6.3.3 Special cases
•	Key-based authentication with SFTP
•	FileZilla and Windows Vista/Windows 7 UAC
•	Importing FileZilla 2 Site Manager entries into FileZilla 3
4.3.6.4 FileZilla Server:
4.3.6.4.1 General
•	Fixing connection and transfer problems; Network configuration
•	Frequently Asked Questions (FAQ)
4.3.6.4.2 Specific features
•	Logging in FileZilla Server
4.3.6.4.3 Special cases
•	FTPS using Explicit SSL/TLS how-to
•	Transfer user accounts from Another FTP Server
•	Securing your Windows Service installation
5. SYSTEM TESTING
5.1 INTRODUCTION
The aim of testing is to find errors. Testing is that the method of making an attempt to find cache conceivable fault or weakness during ถ work product. It provides some way to envision he practicality of elements, sub-assemblies, assemblies and/or a finished product it's the method exertion package with the intent of making certain that the Software system meets its user expectations and doesn't fail in an unacceptable manner. There square measure numerous forms of test. Every test sort addresses a selected testing demand
Software testing is an investigation conducted to provide stakeholders with information about the quality of the product or service under test. Software testing can also provide an objective, independent view of the software to allow the business to appreciate and understand the risks of software implementation. Test techniques include the process of executing a program or application with the intent of finding software bugs (errors or other defects), and to verify that the software product is fit for use.
Software testing involves the execution of a software component or system component to evaluate one or more properties of interest. In general, these properties indicate the extent to 
which the component or system under test:
•	meets the requirements that guided its design and development
•	responds correctly to all kinds of inputs
•	performs its functions within an acceptable time
•	Is sufficiently usable,
•	Can be installed and run in its intended environments, and
•	Achieves the general result its stakeholder's desire
As the number of possible tests for even simple software components is practically infinite all software testing uses some strategy to select tests that are feasible for the available time and resources. As a result, software testing typically (but not exclusively) attempts to execute a program or application with the intent of finding software bugs (errors or other defects). The job of testing is an iterative process as when one bug is fixed, it can illuminate other, deeper bugs, or can even create new ones
Software testing can be conducted as soon as erectable software (even if partially complete ) exists. The overall approach to software development often determines when and how testing is conducted. For example, in a phased process, most testing occurs after system requirements have been defined and then implemented in testable programs. In contrast, under an Agile approach, requirements, programming, and testing are often dome concurrently
5.1.1 Testing methodologies:
The following are act as the Testing Methodologies
•	Unit Testing
•	Integration Testing
•	User Acceptance Testing
•	Output Testing.
•	Validation Testing

5.2. Types of testing:
5.2.1 Unit Testing:
Unit test involves the planning of test cases that validate that the interior program logic is functioning properly, which program inputs manufacture valid outputs. All call branches and internal code flow ought to be valid. It's the testing of individual package units of the appliance it is done once the completion of a private unit before integration. This is often a structural testing, that depends on information of its construction and is invasive.
Unit test perform basic tests at part level and test a selected business method, application, And/or system configuration. Unit tests make sure that every distinctive path of a business method performs accurately to the documented specifications and contains clearly outlined inputs and expected results
5.2.3 Test strategy and approach:
A strategy for system test integrates system test cases and style techniques into a purposeful series of steps that ends up in the fortunate construction of package. The test should are test designing, test suit style, test execution, and therefore the resultant knowledge assortment and analysis
Package testing could be an important part of package quality assurance and represents The final word review of specification style and cryptography. Testing represents a stimulating anomaly for the package. Thus, a series of testing square measure performed for the projected system before the systems prepared for user acceptance testing. Field testing is performed manually and purposeful tests are written well.
5.2.4 Test objectives
•	All field entries should work properly.
•	Pages should be activated from the known link.
•	The entry screen, messages and responses should not be delayed.
5.2.5 Features to be tested:
•	Verify that the entries square measure of the proper format
•	No duplicate entries ought to be allowed
•	All links ought to take the user to the proper page.
5.2.6 Integration Testing
Integration testing addresses the problems related to the twin problems of verification and program construction. Once the package has been integrated a collection of high order tests square measure conducted. The most objective during this testing method is to require unit tested modules and builds a program structure that has been set purposely
The following are the categories of Integration Testing:
5.2.6.1 Top Down Integration
This technology is progressive approach to the development of program structure module square measure integrated by moving downward through the management hierarchy starting with the most program module the module subordinates to the most program module square measure incarnated into the structure in either a depth initial or breadth initial or breadth manner during this technique the package is test from main module and individual stubs square measure replaced once the test takings downward. 
5.2.6.2 Bottom-up Integration
This technique begins the development and testing with the modules at all-time low level within the program structure
•	The low-level modules square measure combined into clusters into clusters that perform a selected package sub-function
•	A driver (i.e) the management program for testis written to coordinate test case input and output
•	The cluster is tested
•	Drivers square measure removed and clusters square measure combined moving upward within the program structure
The bottom up approaches tests every module severally and so every module is module is integrated with a main module and tested for practicality
5.2.7 Functional Testing
Purposeful tests offer systematic demonstrations that functions tested square measure out there as nominative by the business and technical necessities, system documentation, and user manuals.
Functional testing is focused on the subsequent items:
Valid Input: known categories of valid input should be accepted.
Invalid Input: known categories of invalid input should be rejected
Functions: known functions should be exercised
Output: known categories of application outputs should be exercised.
Systems/Procedures: interfacing systems or procedures should be invoked.
Organization and preparation of purposeful tests is concentrated on necessities, key functions, or special test cases. Additionally, systematic coverage relating establishes Business method flows; knowledge fields, predefined processes, and ordered processes should be thought about for testing, Before purposeful testing is complete, extra tests square measure known and therefore the effective price of current tests is set.
5.2.8 System testing 
System testing ensures that the complete integrated computer code meets necessities. It Tests a configuration to confirm acknowledged and fore cable results. Example of system test is that the configuration destined system integration test. System testing relies on method descriptions and flows, action pre-driven method links and integration points
•	White Box Testing
White Box Testing could be a testing during which during which the package tester has information of the inner workings, structure and language of the package, or a minimum of it purpose It's wont to test arcs that can't be reached from a recording machine level
•	Black Box Testing
Recording machine Testing is testing the package with none information of the inner workings, structure or language of the module being tested. Recording machine tests, as most different kinds of tests, should be written from a definitive supply document, like specification or necessities document, like specification or necessities document.
It's a test during which the package beneath test is treated, as a recording machine you cannot "see" into it. The test provides inputs and responds to outputs while not considering however the package works
5.2.9 Test Results
All the test cases mentioned on top of passed with success. No defects encountered
5.2.10 Acceptance Testing:
User Acceptance Testing could be a important part of any project and needs important participation by the tip user. It conjointly ensures that the system meets the purposeful
5.2.11 Test Results: 
All the test cases mentioned on top of passed with success. No defects encountered.
o	User Acceptance Testing
User Acceptance of a system is that the key issue for the success of any system. Them into account is tested for user acceptance by perpetually keeping up-to-date with the stem users at the time of developing and creating changes where needed. The system developed provides a friendly program that may simply be understood even by someone who is now the system.
5.2.12 Output Testing
Once playing the validation testing, successive step is output testing of the projected system, since no system might be helpful if it doesn't manufacture the required output within the specified format.
5.2.1.3 Validation Testing:
Validation checks square measure performed on the subsequent fields.

5.2.1.4 Text Field:
`The text field will contain solely the quantity of characters lesser than or adequate to its size. The text fields square measure alphanumeric in some tables and alphabetic in alternative tables. Incorrect entry continually flashes and error message
5.2.1.5 Numeric Field:
The numeric field will contain solely numbers from zero to nine. Entry of any character flashes a slip message. The individual modules square measure checked for accuracy and what it's to perform. Every module is subjected to check run together with sample knowledge.
The severally tested modules square measure integrated into one system. Testing involves corporal punishment the S64000 knowledge info is employed within the program the existence of any program defect is inferred from the output. The testing ought to be planned thus that everyone the wants square measure severally tested
A fortunate test is one that offers out the defects for the inappropriate knowledge and
Produces and output revealing the errors within the system
5.2.1.6 Preparation of Test Data
Taking numerous forms of test knowledge will the on top of testing. Preparation of test knowledge plays a significant role within the system testing, Once making ready the test knowledge the system beneath study is test victimization that test knowledge. Whereas test the system by victimization test knowledge errors square measure once corrected by victimization on top of testing steps and corrections are noted for future use.
5.2.1.7 Using Live test Data
Live test knowledge square measure those who are literally extracted from organization files. Once a system is part made, programmers or analysts usually raise users to key during a set of information from their traditional activities
Then, the systems person uses this knowledge as some way to part test the system. In alternative instances, programmers or analysts extract a collection of live knowledge from the files and have they entered themselves. It's tough to get live knowledge in decent amounts to conduct intensive testing
Though its realistic knowledge can show however, the system will perform for the everyday process demand, assumptive that the live knowledge entered square measure in truth typical, such knowledge typically won't test all mixtures or formats that may enter the system This bias toward typical values then doesn't offer a real system test and in truth ignores the cases possibly to cause system fail
5.2.1.8 Using Artificial test Data
Artificial test knowledge square measure created entirely for test functions, since they will be generated to check all mixtures of formats and values. In alternative words, the factitious knowledge, which may quickly be ready by a data generating program within the information systems department, 
The most effective test programs use artificial test knowledge generated by persons aside from people who wrote the programs. Often, freelance team of testers formulates a testing set up victimization the systems specifications. The package "Virtual non-public Network" has glad all the demands nominative as per package requirement specification and was accepted
5.2.19 User Training
Whenever a Brand-New system is developed, user coaching is needed to coach them regarding the operating of the system so it is place to economical use by those for whom the system has been primarily designed. For this purpose, the traditional operating of the project was incontestable to the possible users. Its operating is well comprehensible and since the expected users square measure those that have sensible information of computers, the employment of this method is incredibly simple
5.2.20 Testcase
A test case is a document, which has a set of test data, preconditions, expected results and postconditions, developed for a particular test scenario in order to verify compliance against a specific requirement. Test Case acts as the starting point for the test execution, and after applying a set of input values, the application has a definitive outcome and leaves the system at some end point or also known as execution postcondition.

S.NO	Input	Expected Behavior	Observed Behavior	Status
F=Fail
P=Pass
1.	Login as admin with correct details	Home page for admin should be displayed	-do-	P
2.	Login as admin with wrong login details	Error message for admin should be display	-do-	P
3.	Send request to the selected user with correct mode selection	Display the permissions provided by the user	-do-	P
4.	Login as user with correct login details	Display home for the user	-do-	P
5.	Login as user with incorrect login details	Display error message for the user	-do-	P
	
				Table 5.1 Testcase






8. REFERENCES
[ 1 ] http://www.w3schools.com
[ 2 ] http://www.bootstrap.components.com
[ 3 ] http:// www.jquery.com/plugin-datetime
[ 4 ] http:/liquery.com/jslider
[ 5 ] Reference Guide, http://psolve.sourceforge.net/5.5
[ 6 ] http://www.ffimpeg.org/
[ 7 ] Java by Brett McLaughlin, Oreilly& Associates Incorporated, 2000
[ 8] The Unified Modeling Language User Guide by Booch, Pearson Education Indi
