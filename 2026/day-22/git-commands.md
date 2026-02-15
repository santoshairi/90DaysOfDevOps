# Git Setup & Configuration 



## Setup commands 
- git -v 
- git init  # Initialze git 
- git config --global user.name "Your Name"
- git config --global user.email "Your mail id"
- git config --list #View Git config


## Repository Basics 

- git clone <repo-url> # Clone remote repo
- git status #View file status
- git add <file> # Stage a file
- git add .  #Stage all files
- git commit -m "message" #Commit staged changes
- git log #View commit history

## Remote Repository**

- git remote -v #List remotes
- git remote add origin <url> #Add remote
- git push origin master/main #Push to main branch
- git pull origin master/main #Pull latest from main
- git fetch #Fetch remote changes