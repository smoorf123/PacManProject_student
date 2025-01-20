# Pac-Man Project - Part 2: Updates, Git Workflow, and Securing Sensitive Information

## **Overview**
In Part 2 of the Pac-Man Project, you will work with your team to implement updates and enhancements to the Pac-Man game. This part focuses on:
1. Updating code and assets (e.g., renaming elements, adding new features).
2. Collaborating with your team using Git, including Git rebasing and handling branches.
3. Securing sensitive information, such as private assets, and cleaning up the Git history to ensure no sensitive data is exposed.

---

## **Objectives**
1. **Rename components and implement updates**
2. **Rebase your branches**
3. **Sensitive Information Handling**
4. **Pull requests and code reviews** 

---

## **Steps for Part 2**

### **1. Update and Rename Components - 20 points**
Uh oh, we forgot that player should actually be named Pacman. Rename all appropriate files, branches, code, and dependencies to reflect this name change. Ensure you maintain a clean Git history in this process.

### **2. Rebase your branches - 30 points**
In the past week we've found numerous bugs (thanks to your help!) from the original codebase and squashed them. Rebase your repository so that your game is also (mostly) bug free! **Hint**: This is why it was important to set the base repository as the upstream remote. Ensure you maintain a clean Git history in this process.

### **3. Sensitive Information Handling - 40 points**
Uh oh! We've accidentally included a .env file containing sensitive information about PacMan that in the repositories. To make sure that evil Ghosts online can't learn this sensitive information you must modify your repository to ensure that the .env file is no longer tracked by Git. Additionally, you need to clean up your Git history so Ghosts online can't go to a previous commit and find the .env file. 

### 4. **Pull requests and code reviews - 10 points**: 
If needed, make sure you make pull requests and conduct code reviews for this project.