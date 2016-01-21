H1
I’ve always been really interested in Meditation and have tried it on and off for some years. I was a Philosophy major in college, and this was my first introduction to meditation. In the past month or so, I’ve tried to break it down into smaller tasks, such as 5 minutes of deep breathing right before I leave for work. I found that this slows me down in a great way, and gets me focused even just for the commute. It was interesting to read about what neurologically happens in the brain during & after meditation: the parts of your brain that are responsible for reasoning, planning, emotions, self-conciousness, arousal, and spatial orientation, all slow down. For regular practitioners, anxiety is minimized, new ideas can come more easily, and people tend to be more compassionate. It can even slow down aging & improve memory recall, partly because you can learn to ignore distractions.
The Fogg Method reminds me a lot of the book ‘The Power of Habit,’ by Charles Duhigg. Creating new habits doesn’t just happen, at least not for me. Since I want to make meditation a morning habit, I’m going to focus the Fogg Method on actually cementing this. I need to 1-Get Specific, 2-Make it easy, 3-Trigger the behavior. I think what will work best for my wanting to meditate in the morning is to target a 5 minute meditation, at least at first, and trigger it by doing this while my coffee is brewing in the morning. I think it’s the perfect trigger, because I undoubtedly drink coffee every morning.
A timebox sets a limit of time that someone or a team will be working towards a goal or project. I’ve started using the Pomodoro technique after reading ‘A Mind for Numbers,’ by Barbara Oakley, so this immediately sounded familiar when I started reading this article. The Engineering team at my current company works in ‘Sprints’ which from my understanding is a method of timeboxing. They set goals for 3 week periods, and ‘sprint’ towards them, and re-cap/evaluate at the end of the sprints. I definitely already see the value in timeboxing, and will use it in Phase 0 to help chunk assignments down into phases. Rather than looking at an assignment that suggests taking 2 hours, and plugging in for 2 straight hours while casually browsing the internet, I’m going to use the Pomodoro technique to do some rapid learning & then short breaks, to allow my brain to get the full-picture and not get overworked. I’ve also found that this allows me to get into a learning “flow” a bit more quickly, since the time period I’m laying out to work isn’t dauntingly long.
I think my current strategy is working, but I also haven’t had to test it for this kind of a program while working full-time. I’m a calendar & to-do list fanatic. I’m going to manage my time by looking at each week’s upcoming work & assigning it to different mornings/evenings based on the time frames it says we can expect. I’ve been trying to wake up earlier to learn because it always goes better than trying to cram work in after I get home from my job. When I do want to learn material after work, I usually try to work out as soon as I get home so that my brain gets a bit of a boost. My overall plan will be to learn the material/do the solo challenges in the morning before work (with Pomodoro technique), and then leave space for any additional studying/reviewing or Pair Programming after work. I’m going to create the habit of meditation in the morning (triggered by my coffee brewing), and workout after work when I need to re-focus before learning again.




H2

A shell is the user interface for accessing your Operating System’s services. In my case (I use a Mac), I open Terminal to access my shell. Bash is a Unix (type of operating system) Shell. The Command-Line Interface (CLI) is where I type in commands to be executed on the shell.

In general, since I have no experience with Terminal/shells, I had a hard time feeling like I was doing the correct things. After some practice, it feels more natural. At first I had some trouble with pushd and popd, and understanding its importance. I also got really stuck on the part where you need to save a text file from a text editor, and then access it in terminal. For some reason, even though I could see it on my desktop, I couldn’t find it in terminal. I took a break, and then realized I wasn’t in the right directory, and then did ‘cd desktop’ and then was able to access it. Pipes & Redirection was challenging at first, but once I slowed down and realized what |, <, and > each do, it was much more logical and easy to understand. 

I was able to successfully use all of the commands, but it took several sessions and breaks to let it all sink in, and I did keep moving forward if I got stuck on something, and re-visited it after. I’m still using flashcards to memorize the commands, but feel very familiar with at least the first half of them right now.

PWD is a great place to start, and important so you know where you’re working and don’t accidentally touch the wrong file. CD & LS have been useful so far as well- I’m finding that right now, the most useful commands are the ones that give me the most visibility into my system, ones that help me check in to make sure I’m actually working my way around the system successfully. Wildcard commands (*) seem great to command things for several files/directories. Touch seems like it will be efficient to avoid having to open a text editor, but I’m not sure yet. 

-pwd – print working directory. Shows you where you are in your directory tree. This is a good check-in point if you’re not sure where you are!

-ls – list directory. Shows what folders/directories exist inside of the directory you’re currently in. 

-mv – move a file. You can use this by saying mv and then the old name of the file  & new name of the file. (ex. mv oldfile.txt newfile.txt) This is somewhat similar to the copy command: (In the directory you want to find the file, type cp oldname.txt newname.txt)

-cd – change directory. Moves you around to a new directory in order to access its contents. (ex. cd desktop). You can move upwards in the hierarchy of directories with just ‘cd’, or downwards by adding the next command:

-../ -  I’m using this in addition to cd in order to go up a folder. You can add on ../ as many times as needed to go up that many times in the folder hierarchy. (ex. cd../../../ will bring you 3 levels up from the file you were on.)

-touch – create an empty file. You will write touch and then the file name. (ex. touch newemptyfile.txt)

-mkdir – make directory. You will write ‘mkdir’ and then the file name. (ex. mkdir Files)

-less – Lets you view the contents of a file, one ‘page’ at a time. (ex. less newfile.txt) If it’s long, you can press the spacebar to page through the file, and on your keyboard, click ‘q’ to quit that page and return to your terminal.

-rmdir – remove directory. You’ll use this to delete directories you don’t need anymore, but they do have to be empty. If they’re not, Git will warn you and then you can use cd to move further into the directory and delete its contents (which could be other directories) prior to deleting the directory. (ex. rmdir Files)

-rm – remove/delete a file. You’ll write rm and then the file name. You may need to do this inside directories if your goal is to delete the directory that the file was in. (ex. rm oldfile.txt)

-help – I don’t have the ‘help’ command as I’m on OSX, this is what you would type for Windows help with commands. For Mac, you can use ‘man’ to find information about commands.



H3

A repository contains all of the files of a project, as well as the revision history, so it’s important to know how to create new “repo’s” on GitHub, where you’ll want your projects to be seen by the community. To create a new repository, you’ll need a GitHub profile & to make sure you have Git installed. (If you need GitHub or Git, follow this link to sign up: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git). Log into GitHub, and on the upper right-hand side of the screen, hover over the + sign. Click ‘New repository.’ Give it a simple name, make it public if you want anyone else to be able to see your work, or private if you want to just grant access to certain people, and add a license (in our case, MIT License). Click the green ‘Create Repository’ button to complete this step!

Forking a repository is basically pulling a copy of someone’s project to be able to use as your own in the future. To fork a repository, you go to any main page of the repo you want to on GitHub. Forking is important so that you can work on code that you want to experiment on or learn from, without affecting the original version that was put on GitHub. This is great for open source projects, or for getting inspiration for your own. To get started, on the ride hand side, click ‘Fork,’ and then direct it to your account (your picture should pop up, click that!). Now you’ve copied this original repository to your personal account on GitHub.

You should now have at least 2 repo’s in GitHub (you might have more if you already have forked any in the past!). To check that you have these, go to the upper right-hand corner of GitHub, click your icon, and go to ‘Your Profile.’ Under ‘Repositories,’ click the link to either repo that you want to clone. Open your command line, and make a directory (or folder, they’re the same thing) where you will store these on your computer. I named mine simply ‘DBC’ and will create sub directories as needed for each week that we clone new projects. Once you’re in the directory where you want to store it (still in your command line), head back over to GitHub to find the box on the repo page you’re trying to clone that says ‘HTTPS’ and copy the URL. Back in your command line, type in ‘git clone’ as a new command, and then paste the URL from GitHub. The git clone + {URL} will all be in one line, and then hit enter on your keyboard, which should complete the task. You can check if this cloned repo contains all of the original items by exploring the directory you just added it to, in my case, DBC, and commanding to list its contents (ls).

There you go, you forked & cloned two repositories, and you can read over the code or add in your own to improve/experiment on a project!
