1. What are some of the key design philosophies of the Linux operating system?

There are nine major tenets to the Linux philosophy.

Small is Beautiful 
	(Each command is small)
Each Program Does One Thing Well 
	(Each command hasa specific task)
Prototype as Soon as Possible
Choose Portability Over Efficiency
Store Data in Flat Text Files
Use Software Leverage 
	(good programmers write good code and great programmers borrow good code. Never rewrite code that has already been written.)
Use Shell Scripts to Increase Leverage and Portability
	(portability of shell scripts can be far more efficient in the long run than the perceived efficiency of writing a program in a compiled language)
Avoid Captive User Interfaces
Make Every Program a Filter
	(Each command takes an Standard Input and “filters” the data stream by making some change to it then sends the resulting data stream to Standard Output for the next command to manipulate)

2. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

A VPS is a virtual server that is installed on a computer. It is great for small businesses who may not have the resources needed to have their own server. It also is helpful for a someone who wants to have multiple virtual servers for the same website. Dedicated servers can be expensive and shared hosting plans may not provide the space needed. VPS is a middle ground between the two and can give more space and more flexibility. A developer will have more freedom using a VPS and also more security.

3. Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

It is considered to be good practice on any operating system to run your applications on a user level and leave administrative tasks to the root user only on a need basis. It is a security issue and makes the system more vulnerable as the root user has full permission. If you log in through your own user account, programs you run are restricted from writing to the rest of the system – they can only write to your home folder. You can only modify system files if you have root permissions. Logging in as user helps keep your computer secure rather than leaving your entire system open to being compromised.