o	How does tracking and adding changes make developers' lives easier?
•	Tracking & adding changes provides an outline of all changes on a project, which makes it easier to go back in time and revert to an earlier state of your files if you want a change or a bug is introduced. It also will retain who made what changes, so it’s easier for teams to know who they need to work with on fixing/reviewing a certain piece of code.
o	What is a commit? 
•	A commit is like a save point for developers, in which you save your work at intervals, and then you’re able to access the project at any state you’ve ‘committed.’ It’s sort of like a check point that saves your work without overwriting it.
o	What are the best practices for commit messages?
Best- practices for commit messages are modeled as follows:
The title should be a capitalized, & short (50 characters or less) summary, all in the imperative tense.
Example: [Update code]
The imperative tense is essentially written as a command (‘Fix changes’ rather than ‘Fixed changes,’ or ‘Add body’ rather than ‘Added body’). This tense stays consistent with the commands we use in git.

Then you can put a more detailed explanation in the body text, but this should still be fairly short (72 characters or less).’


o	What does the HEAD^ argument mean?

HEAD is the commit you’re currently on, and HEAD^ is the last commit you’ve made. This is useful if you’ve committed some files and decide that you want to change them. If you need to go further back, you can follow this pattern HEAD~3, HEAD~4, etc. from HEAD respectively.


o	What are the 3 stages of a git change and how do you move a file from one stage to the other?

1 – Committed – Your file is stored in your local database.
2 – Modified – You have changed the file, but have not committed it to your database.
3 – Staged – You have marked a modified file in its current version to go into the next commit.

You need to first create a file or fork a repository from GitHub, and clone it onto a directory on your computer. Then, after any changes have been made, we need to ‘set these up for commits’ by adding this new file/changes to your directory [navigate to the proper directory with cd, and then type git add file]. Then, we commit with [git commit –m “Your commit message here”], and push it back to GitHub with [git push origin master].


o	Write a handy cheatsheet of the commands you need to commit your changes?

Git status – Always do this first to see the status of master/any branches
[Edit a file] – Can either create one with touch filename.html
Add some code to the file & save
Git status – We should see that it tells us we made a change
Git add filename.html
Git status – We should see that these are now changes to be committed
Git commit –m “Commit Message Here”
Git push origin master

o	What is a pull request and how do you create and merge one?
A pull request is the best practice-way of adding changes in code to a master version. 
A pull request is an official request via GitHub that gets sent to the author of a repository telling them you want to push changes into it. This way, nothing is merged until the author gives you permission to do so.

o	Why are pull requests preferred when working with teams?
Pull requests are preferred when working with teams because it tracks who contributed which commits, and when. I would believe this makes it easier for accountability, as well as project management.
