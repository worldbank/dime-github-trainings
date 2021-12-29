# Clone location best practices

This guide discusses best practices to where on your computer
you should clone the repositories you are working on.
It is often fine to not follow these best practices for a long time -
sometimes even years - but when that would cause an error,
it will create error that are difficult to solve.
So, it is best to follow these best practices in the first place.

* What are good locations for a clone?
* How do I move a clone on my computer?
* Why are synced folders a bad location for my clone?

## What are good locations for a clone?

Most places on your computer would be a good place for your clone,
however, the places where you should not store your clone
tend to be the first place most users would think of.
In short, the clone should not be stored in a folder that is
managed by another software or a remote team
such as the IT department of your organization.
Common examples of folders managed by another software are folders
synced by syncing software like OneDrive, Dropbox etc.
A non-shared synced folder is still not a good place for a clone.
Read more below on why synced folders are not good locations for clones.

In order to not have to remember what folders are good folders
each time you clone a repository, it is a good practice to create a folder
called `git`, `github`, `github-clones` or something similar
where _all_ clones you work on are stored,
no matter what project that clone is for.
This way you only have to find a good location for your clones once,
create this folder there and then clone all your clones in that folder.

A common location for your clone is `C:\Users\username\github` on Window computers
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
It is common that you have a folder like this if
your computer belongs to a large organization you are working for.
Your access to this folder can change with little notice
and you might therefore lose access to your clone.
A almost universal convention across IT department in all organization
is that your user folder in the `C:\Users\` (Windows) or `/Users/` (Mac)
is a folder you should always have access to.
That is another reasons why `C:\Users\username\github`
or `/Users/johnsmith/github` are excellent locations for all your clone.
