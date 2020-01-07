# DIME GitHub Roles
## About GitHub Roles
* These roles are templates that are often adjusted to fit each project, but this template should always be a good starting point
* Not all of these roles are official GitHub roles, and a role described here might be called something else in other GitHub guidelines, however the intuition behind them will be the same
* Some team members will have multiple roles for the same repository.
  * On smaller projects some team member might have all the roles listed here

## DIME GitHub Team Structure
These are assumptions we make about a typical research team. Most teams are not a typical team, but we still think that most team will be able to use this a great starting point.

* Not all roles are needed in each repository, some roles can exist across teams
  * Team structures differ across organizations, so this sections explains is meant by team in this paper to avoid confusion
  teams
  * These guidelines are based on DIME’s team structure, but the roles in this document should be applicable even if your team is organized differently
* To describe how this could work we are defining three types of teams:
  * Project Team - The team members that work on a single repository for a specific project
  * Research Team - A research team consists of multiple project teams that do research on similar topic, using similar methods etc.
  * Unit - A unit consists of several research teams
* If a research team only has one project, then the terms research team and project team can be seen as completely synonymous

## Role Descriptions
Click the links or scroll down for full description

* Repository specific roles
  * [Observer](#observer) - many per repository
  * [Contributor](#contributor) - many per repository
  * [Repo Maintainer](#repo-maintainer) - typically one per repository
  * [Repo Admin](#repo-admin) - a few in each research team
* General roles - Roles related to GitHub but not specific to a repository
  * [Team Maintainer](#team-maintainer)
  * [Unit Admin](#unit-admin)

----------
## Repository Specific Roles
### Observer
#### Does what:
* Read code and follow progress of a project on GitHub
* Participate in discussions in issues etc., but not submitting fixes to them (as then they are Contributors)

#### How many exist or are needed:
Since this is not an active role, there is no restriction to how many Observers exist on one repository, or how many repositories one person can be an Observer for.

#### Typically who:
The general public for public repositories, and team members in private repositories that are not Contributors (for example a non-coding PI)

#### Need to know:
Almost nothing specific to Git/GitHub. To understand progress an Observer should understand branches as the latest edits might not be in the Master branch.

----------
### Contributor
#### Does what:
Submit edits to the code (or any other part of the content) in the repository

#### How many exist or are needed:
Typically, there are many Contributors to a repository, and most Contributors will be Contributors to several repositories.

#### Typically who:
* Most people in the project team tend to be Contributors
* RAs are the most active Contributors
* PIs that code are Contributors, but not all PIs are Contributors (some are Observers)
* Code reviewer and other QA roles are examples of people that are not members of a the project team but could still be Contributors as they might also submit edits to the code

#### Need to know:
* Need to understand and be able to use Clone, Commit, and Branch
* Need to understand directions from Repo Maintainer on where to commit and where to branch from.

DIME Analytics Intro to GitHub training

----------
### Repo Maintainer
#### Does what:
* Be in charge of reviewing and merging contributions to protected branches (for example the master and develop branch). Reviewing includes:
    * Making sure that the code does not break other contributions made to these branches. This requires the Repo Maintainer to have a very good overview of the content in the repository
    * Making sure that code is legible, reproducible and follows the research team’s coding standards
* Be the point person for all Contributors when they have questions on the content in the repository, or the workflow for how contributions are made to the repository

#### How many exist or are needed:
* Typically one per repository. But with larger repositories there could be several, in which case it is important that responsibilities are clearly divided.
* Being Repo Maintainer is often a lot of work, so it is typically not a good idea to be repository maintainer for many repositories, maybe not even more than one repository, unless some or all of them are fairly inactive.

#### Typically who:
* Not necessarily the most senior person on the project, as a PI or a single senior RA would not have time for this role on all repositories in a research team
* Typically the RA in the project with the best knowledge of the code, or the most time dedicated to that project
* This person should not be very new to GitHub unless they have good support from a Unit Admin

#### Need to know:
This is the repository specific role that requires the by far best understanding of GitHub. An inexperienced Repo Maintainer should have a Unit Admin person to consult.

----------
### Repo Admin
#### Does what:
All non-content settings, such as editing access rights to the repository.

#### How many exist or are needed:
* A few per research team, usually good if a small group of people takes this role for several repositories across the research team
* Repo admins do not need to be Contributors or Repo Maintainers for all the repositories they are Repo Admins for. Repo Maintainer can communicate to Repo Admins when needed

#### Typically who:
* Senior RAs experienced in GitHub
* PI who knows GitHub well

#### Need to know:
Need to know GitHub settings. Basic knowledge is fine as long as the Repo Admin have access to a Unit Admin that can assist.

----------
### Team Maintainer
#### Does what:
Adding and removing people from teams on GitHub

#### How many exist or are needed:
Two or three per research team.

#### Typically who:
* Senior RAs that has a good overview over who is currently in the team

#### Need to know:
No technical knowledge needed, as this is mostly an admin role. Unit Admin can show a new Team Maintainer how what this role needs to know in a few min

----------
### Unit Admin
#### Does what:
Advise and support Repo Admins and Repo Maintainer. Unit Admins could be back up Repo Admins to the all the repositories in the unit.

#### How many exist or are needed:
This role does not have to exist in the team, it is enough for a research team to have access to a Unit Admin

#### Typically who:
This is not an official role, but it would be good for research teams to think who can be their Unit Admin

#### Need to know:
Needs to know GitHub really well. Unit Admins should be the most experienced Git/GitHub users in the whole unit.
