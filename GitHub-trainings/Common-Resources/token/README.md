# GitHub Token Folder
This file is a placeholder file saved here to share this folder that would otherwise not have been shared as GitHub does not share empty folders or folders where all files are ignored.

The reason this folder is otherwise empty is that the `token.json` file is ignored so that the GitHub tokens are not exposed in this public repository. If your GitHub tokens are exposed or made public in any way whatsoever, then it is very important that you go and change your GitHub token immediately.

## How to set up the token.json file

First you need to navigate to https://github.com/settings/tokens in a browser where you are logged in to your GitHub account. See [this](https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line) guide for how to create tokens.

### Minimum info required in token.json
This is the absolute minimum information needed for any of the jupyter notebooks to run.
```
{
    "token" : "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
}
```

### Full info possible in token.json
To make some of the training repos more realistic looking, more information is needed, and the in those cases the following information can be provided. 
```
{
    "token" : "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    "user1_author": ["user1_author","user1@gmail.com"],
    "token_user2" : "yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy",
    "brazil_user" : ["user2","user2@gmail.com"],
    "spain_user" : ["user3","user3@gmail.com"],
    "usa_user" : ["user4","user4@gmail.com"],
    "india_user" : ["user5","user5@gmail.com"],
    "nepal_user" : ["user6","user6@gmail.com"],
    "sweden_user" : ["user7","user7@gmail.com"]
}
```
