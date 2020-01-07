# Intro to Git and GitHub - Contributor

This training is for someone with no previous knowledge in Git/GitHub who wants to learn how to explore code hosted on GitHub and how to contribute to it using Git.

It is meant to be an interactive course with a instructor and not a self-taught course but anyone is free to use this material in any way they find useful. Both as a student and as an instructor.

### Slides

The slides are developed using LaTeX. The code to generate the slides are found in the `latex-slides` folder. If you are new to LaTeX you can follow [DIME Analytics LaTeX Training](https://github.com/worldbank/DIME-LaTeX-Templates) where you will find a guide how to install LaTeX and generate pdf slides from the code in this folder.

### Training repository

The training repo is generated using GitHubs API and you can set up your own repository using the jupter notebook found in the `jupyter-repo-setup` folder.

To run the notebook you need to have [PyGithub](https://pygithub.readthedocs.io/) installed, but you cannot have a more recent version than `1.39` or you will have to make small edits on how the paths are passed when using the PyGithub library.

You will also have to go to the [Token folder](https://github.com/worldbank/dime-github-trainings/tree/master/GitHub-trainings/Common-Resources/token) and set up at least the minimum info required in order for the notebook to run.
