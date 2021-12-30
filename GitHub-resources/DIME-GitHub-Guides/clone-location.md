# Clone location best practices

This guide discusses best practices for where on your computer
you should clone the repositories you are working on.
It is often fine to not follow these best practices for a long time -
sometimes even years - but when that causes an error,
that error tend to be difficult to solve
and/or risk you losing parts of your work.
So, it is best to follow these best practices in the first place.

**Table of content:**

* [What are good locations for a clone?](#what-are-good-locations-for-a-clone)
* How do I move a clone on my computer?
* Why are synced folders a bad location for my clone?

## What are good locations for a clone?

Most places on your computer are acceptable places for your clone,
however, the places where you should not store your clone
tend to be the first place most users would think of.
In short, the clone should not be stored in a folder that is
managed by another software or managed by a remote team
such as the IT department of your organization.
Common examples of folders managed by another software are folders
synced by syncing software like OneDrive, Dropbox etc.
A non-shared synced folder is still not a good place for a clone.
Read more below on why synced folders are not good locations for clones.

In order to not have to remember what folders are good folders
each time you clone a repository, it is a good practice to create a folder
called `git`, `github`, `github-clones` or something similar
where _all_ clones for all projects you work on are stored.
This way you only have to find a good location for your clones once,
create this folder there and then clone all your clones in that folder.

A common location for your clone is `C:\Users\username\github` on Windows computers
(`C:\Users\wb123456\github` on WB computers where `123456` is replaced with your UPI)
or `/Users/johnsmith/github` on Mac computers.
Another common location is `C:\Users\username\Documents\github`
or `/Users/johnsmith/Documents/github`, however,
this location is acceptable only if OneDrive is not installed on your computer
as then the `\Documents\` folder is also synced.
This is common on all Windows 10 computers, and always the case on all WB computers.

The best way to know if your folder is synced in OneDrive
is to check if the folder has the _Status_ column
when viewed in the file explorer.
Any folder with this column (see image blow) is indeed synced in OneDrive.

<img src="https://github.com/worldbank/dime-github-trainings/blob/move-clone/GitHub-resources/DIME-GitHub-Guides/img/onedrive-status.png" width="75%"><!--- Image is read from master branch or use full URL-->

Another example of a type of folder where the clone should not be stored
is a folder that is managed remotely by someone else, such as an IT department.
It is common that you have one or several folders like this if
your computer belongs to a large organization you are working for.
Your access to this folder can change with little notice
and you might therefore lose access to your clone.
A almost universal convention across IT department in all organizations
is that your user folder in the `C:\Users\` (Windows) or `/Users/` (Mac)
is a folder you should always have access to.
That is another reasons why `C:\Users\username\github`
or `/Users/johnsmith/github` are excellent locations for all your clone.

## How do I move a clone on my computer?

There are two methods we recommend to move a clone on your computer.
Method 1 is easiest but can only be done in some special circumstances.
Method 2 can always be used.

#### Method 1: Re-clone

###### Method 1: Important - read first

**Important**: When using this method you will lose anything not committed to GitHub.com.
If you are not sure this is ok in your case, use method 2.
Content that **will be lost** when using this method includes:
* Edits yet to _both_ be committed and pushed to GitHub.com
* Any files ignored in your `.gitignore` file
* Empty folders

This method can be used to change the location of the clone in these cases:
* Immediately after the clone was first cloned before any work is done
* Open source tools you are using but not contributing to,
and other repositories you never make any edits to.
* Many other cases where you need to decide yourself if this method is appropriate

###### Method 1: How to move the clone

In this method you simply delete the clone and clone the repository again.
When deleting the clone it is important that you delete the full folder.
This means that if your repository is called `lyrics-clone`
then you should delete the folder called `lyrics-clone` and all its content.

If you open GitHub Desktop and select this repository as your current repository,
then you will see the screen shown in the image below.
Then simply click the button "_Clone Again_".
If you do not see this screen or
if you are not able to select the repository as current repository,
then just go to GitHub.com and clone it again.

<img src="https://github.com/worldbank/dime-github-trainings/blob/move-clone/GitHub-resources/DIME-GitHub-Guides/img/clone-not-found.png" width="75%"><!--- Image is read from master branch or use full URL-->

This method can also be used if you have some issues with a clone
you know that you have no un-committed/pushed and no ignored files and
and want to start over fresh.

#### Method 2: Move the existing clone

If you want to move the clone and keep all content in the clone folder,
also un-committed and ignored files, then you need to use this method.

###### Method 2: How to move the clone

First start by copying the clone folder to the new location.
Remember that you need to copy the folder as well as its content.
If you have a repository called `lyrics-clone`,
then you need to copy the clone folder with that name as well as all its content.

Once you have completed the move of the clone folder, then open GitHub Desktop.
Make sure that you have the repository of the clone you are moving
selected as current repository.
Then you should see the view in the first image below.
Simply click the "_Locate_" and go to the new location of the clone.
Remember to select the clone folder in this step,
and not any of the content of the clone.
In the example we use here you should select the folder called `lyrics-clone`.
See the second image below.

<img src="https://github.com/worldbank/dime-github-trainings/blob/move-clone/GitHub-resources/DIME-GitHub-Guides/img/clone-not-found.png" width="75%"><!--- Image is read from master branch or use full URL-->

<img src="https://github.com/worldbank/dime-github-trainings/blob/move-clone/GitHub-resources/DIME-GitHub-Guides/img/new-location.png" width="75%"><!--- Image is read from master branch or use full URL-->

If you do not see the screen where you are asked to locate the clone,
then go to the menu of GitHub Desktop and select "_File_" -> "_Add local repository_".
Then use the menu that comes up and select the clone folder in the new location.
GitHub desktop will then identify this is the new location of the same clone,
and it will detect that this is a clone of a repository hosted on GitHub.com.

## Why are synced folders a bad location for my clone?

In short, syncing software and git are both collaboration tools,
but they work very differently.
And neither of the tools are implemented to work together,
which can cause many different types of weird errors.

#### Shared synced folders

Putting a clone in a shared synced folder quickly leads to issues if
more than one person is expected to work on the same clone in that shared folder.
For example, if one user changes branch in the middle of someone else running the code,
then all weird errors will happen as the files are changed by git.
It is probably easy to see how this leads to errors
and there is no standard workflow where this should ever be the norm.

#### Non-shared synced folders

What about non-shared synced folders? Then there will never be an issue with another user.
While that is true, there are still errors than can happen in any kind of synced folder.
And while these errors are more rare they are
likely to cause major disruptions when they happen.

When syncing software detects a file with edits to be synced to the cloud,
it blocks access to it for a fraction of a second.
That is fine when it is only much slower humans that also competes for access to those files.
However, git is not a human and in certain git actions,
git can make many updates in a fraction of a second to the files in the `.git` folder.
There is always a `.git` folder in each clone folder
but depending on the settings of your computer,
this folder might or might not be visible to you.

If git makes multiple changes to some of those technical files,
then the later changes might not be possible to do
as the syncing software currently blocks access to that file.
This can lead to things like git not being aware that you have changed branch
and commits you think you are committing to one branch,
is actually pushed to a different branch.
But since there is an error in the `.git` folder it might never show in your computer,
and might not be detected until you push your edits to GitHub.com.
This has happened in DIME projects.

Your commits you thought you did to one branch might have been made to other branches,
but since those branches are different you might have very weird conflicts.
And these conflicts are difficult to solve,
as this types of conflicts are not expected to happen in the first place.
Sometimes the easiest way of solving such issue is to delete those commits
and re-do all the work since the error happened.
Since the error might have happened a while ago,
this could mean weeks of lost work.




One example, of this is that when you are doing a git action such as changing branch or making a commit, then Git makes many edits to many files inside the hidden folder `.git` that is in your clone folder regar
