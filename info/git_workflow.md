### when you are getting ready for a phat coding sesh
1. __make sure you are on the master branch in the root directory (motionmo)__
 - `git co master` to switch to the master branch
2. __pull down the most recent code from the remote master on github__
 - `git pull` __make sure you are on the master branch before you run this
3. __checkout a new feature branch__
 - this should be related to what you are working on ex. `new-user-form`
 - `git co -b new-user-form`
4. __open it up and go crazy with changes__

### after you have made changes that you are ready to commit to
1. __check what you have changed__
 - always look to make sure there aren't changes in this list that you don't remember making, ex. you could have opened a file for reference and not realized that you typed something in it
2. __add your changes__
 - `git add [filename]` add each file individually to make sure that you arent adding things you didn't intend to
 - add changes in committable bundles - if you made changes that dont necessarily relate to eachother they probably dont belong in the same commit - a good rule of thumb is to only add something that you can describe in a single line commit message without an and ex. `add new user submit button animation` not `add new user submit button animation and fix new user routes`
3. __commit that shit__
 - `git commit -m "add new user submit button animation"`
 - note: we __still__ haven't "uploaded" any code to the remote repository on github, be patient young padawan th
4. __rinse, wash & repeat__
 - you may need to go through `git status`, `git add` and `git commit` a number of times before you are ready to push up a feature or a work in progress

### push it real good
1. __push your changes to github__
 - `git push origin [branch name]`

### go to github
1. __submit a pull request__
 - this is basically for alerting me or other collaborators that you have pushed code that we should check out before merging it into the production codebase
 - most of the time a little alert comes up on your github after you have pushed that asks you nicely if you want to submit a pull request, if that doesn't happen don't panic you can just click the pull request menu item and the branch you just pushed will be queued up for a pull request

### conflicts
When we start to run into merge conflicts we should resolve them together. So if this ever happens to you let me know and we can walk through it.