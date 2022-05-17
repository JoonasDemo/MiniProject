#Miniproject documentation

I started this project by searching information online on how to install steam via terminal as it is not part o>

I found information in two different sources with roughly the same information with small differences
due to reasons unknown to me so i experimented with both solutions and incorporated what i found to work
in the saltstack.

This is the command to enable 32-bit format which is required for steam to function
on linux (note that all of these commands are followed by "sudo apt update")

    sudo dpkg --add-architecture i386


Next i added the repository in which steam can be found

    sudo add-apt-repository non-free


Following these actions i finally got to installing steam


    sudo apt install steam


While this did produce the desired results i did run into some problems that i
could not fix without brute force solutions. Install works perfectly if you start
off from a clean table but if you purge steam and then try to run the code terminal
gets stuck in limbo.
Next i would close the terminal and start it again and try to
run the code only to end up with an error about front end locks. to brute force fix
this according to information i found online i had to "killall -9 dpkg" to close
the background processes and follow up with "sudo dpkg --configure -a" to allow the
code to function again.

Following steam installation i continued to install the following games:
- Cataclysm Dark Days Ahead
- Dwarf Fortress

I finished up with at least making the commands idempotences by giving them an
unless condition tied to whether /lib/games/steam exists or not.

I tested this code as salt local and by using master minion architecture, both work
when starting off a clean table as stated before.

[image](Code.png)
[image](Run.png)
