# Child team access management

This page is a guide to how you can use teams, child teams, and child teams of child teams access to your repositories in a very granular way. We strongly recommend that this granular set-up is only used when necessary, as our expereince is that this tends to get outdated quite quickly. But if you want to do this, then please reade the guide below.

## General example

Below is an example set-up that explains the main rules how access are given through teams and child teams on GitHub.com. Black boxes are teams, green boxes indicate which repos those teams are added to, and grey boxes are users that are added as members to different teams.

The team "_Team Child_" is a child team of "_Team Parent_" and the two grandchild teams are both added as child teams directly to "_Team Child_" as the arrows indicate.

Child teams have access to repos of the parent team but not the other way around. Some examples of what that means:
* `User A` has does not have access to `repo-gx1` but `User C` has access to `repo-p1`
* In this example there is no difference to be added to `Team Parent` and `Team Child` meaning that `User A` and `User B` has the same type of access
* `User A` and `User B` does not have access to any of the repos `repo-gx1`, `repo-gy1` or `repo-gy2`
* All users in this example have access to the repository `repo-p1` since all users in this

---

![github-access-child-team](https://user-images.githubusercontent.com/15911801/73011151-b01f5200-3de1-11ea-960a-e59fbfa7475f.png)

---

#### Different type of access

One aspect not mentioned in the image above is that there are different types of access to a repository. There is _read_ access where a user can only see the files, and there is _write_ access where a user can both see and modify a file.

Here is one way that can be used. Let's assume that all green boxes indicate _write_ access in the image above. If desired, then the team `Team Child` can be added with _read_ access to the repos `repo-gx1`, `repo-gy1` or `repo-gy2`, meaning that all users but `User A` have read access to those three repos as child teams inherent parent teams' access. 

If a user have both _read_ and _write_ access then the higher level of access, i.e. _write_, applies. So, for example, if `Team Child` is given _read_ access to the repos `repo-gx1`, `repo-gy1` or `repo-gy2`, then `User C` has _write_ access to repos `repo-p1` and `repo-gx1` as before, but also _read_ access to repos `repo-gy1` and `repo-gy2`.
