import os, sys, json
from github import Github, InputGitAuthor

def getTokenAttribute(attribute,paramsFile=''):
    ''' This function gets Gtihub access token, from local machine. To create an
        access token go here: https://github.com/settings/tokens

        INPUT
        paramsFile [string] path to a parameters file with your github admin token.
            The params file needs to be a JSON file with one value - github_repo_admin

        RETURNS
        [string] - github access token used to authorize access to github API
    '''
    if paramsFile == '':
        paramsFile = r"../../Common-Resources/token/token.json"
    with open(paramsFile, 'rb') as data_file:
        jsonParams = json.load(data_file)

    if attribute in jsonParams:
        return jsonParams[attribute]
    else:
        return False

def getUseOrDefault(attribute,default_author=None):

    #Get access token for user 2
    user_info = getTokenAttribute(attribute=attribute)

    #Test if an access token exist, if it does, try to log in user, use user 1
    if user_info:
        return InputGitAuthor(user_info[0],user_info[1])
    else:
        return default_author


if __name__ == "__main__":
    accessToken = getGithubToken()
    g = Github(accessToken)
