# Github knowledge for 2 days

**Introducing Github**
> **Git** is one of the Distributed Version Management Systems, which was developed to manage Linux source code. On Git, we can save the status of the file as an update history. Therefore, it is possible to put the edited file once in the old state or to know where the file was edited.

**Concepts of Git**
- **Repository** - the place where contain your source code.Have 2 types of repository:
-- **Local repository** - contain your source code in your PC or your laptop. You can create local repository in your laptop or PC by syntax:
*##create folder to setup local repository*
`mkdir folder_name`
*##move to this folder and setup local repository*
`cd folder_name`
`git init`
-- **Remote repository** - contain your source code in your server **Github**. You can access website [https://github.com/](https://github.com/) with your account to create server repository.
Click button `New repository` and fill in **Repository name** to  create new **remote repository**.
- **Branch** - your branch for work, default branch is **master** and you can create many others branch throughout your work.
- **Remote repository** - connect your local repository to remote repository(server repository) to update your code, pull code from remote repository to local repository. Syntax `git remote add <remote_name> https://github.com/<username>/<server_repository>||git@github.com:<username>/<server_repository>`. **Remote repository** is required to work with github and you can create many remote to connect others Management Systems such as **Github** or **Gitbucket**. Some protocol of **remote repository**:
-- **HTTPS repository**
-- **SSH repository** 
- **git add** - add your change such as change code from file, create new file or delete file from your folder where contain your file code to commit for prepare add them to **local repository** with syntax `git add file_name.txt`.
- **git commit** - add your change from your file code to **local repository** prepare push them to **server repository** with a message with syntax `git commit -m "message"`.
- **git push** - push things from your **local repository** to **server repository** by current branch with remote which you define. Syntax `git push <remote_name> <branch_name>`.
- **git pull** - take file code from **server repository** to **local repository** and update file code in **local repository** with the same as file code in **server repository**. Syntax `git pull <remote_name> <branch_name>`.
- **git merge** - combine file code from another branch to current branch. Syntax
*##switch branch to current branch which want to combine*
`git checkout <current_branch>`
*##combine file code from another branch to current branch*
`git merge <another_branch>`
- **git rebase** - combine file code from another branch to current branch. Commits in another branch is newer than commits in current branch.Syntax
*##switch branch to current branch which want to combine*
`git checkout <current_branch>`
*##combine file code from another branch to current branch*
`git rebase <another_branch>`
