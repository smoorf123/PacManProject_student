# Pac-Man Project - Part 1: Collaborative Development

## **Overview**
In this project, you will work as a team to collaboratively build a Pac-Man game in Python. The project focuses on both feature implementation and using essential software development tools, such as Git for version control and CI/CD pipelines for automated testing.

This is Part 1 of a multi-phase project. You will implement key features, collaborate via Git workflows, and write tests to ensure your code functions as intended.



---

## **Objectives**
1. Implement Pac-Man game features:
   - Game board
   - Player (Pac-Man)
   - Ghosts
   - Items (e.g., dots, power pellets)
2. Use Git for collaborative development:
   - Work on separate branches for each feature or item.
   - Submit pull requests for code reviews.
3. Write and run automated tests:
   - Ensure all features are thoroughly tested.
   - Correctly fill in the ci.yaml file 
   - Achieve passing results for all CI/CD checks.

---

## **Tasks and Workflow**

### **1. Fork the Repository - 10 points**
Start by forking the project repository. Make sure to also add the base repository as a remote. Hint: You want to set the base repository as the upstream remote.


### **2. Branch Workflow - 10 points**
Each team member will work on a specific feature or item. You will have to make branches for each branch. It is up to your group on how the work will be divided up. For each branch, make the nescessary changes, commit your work, and push your branch to the remote repository. 

By the end there should be 4 extra branches that have the names:
* `feature/player`
* `feature/ghost`
* `feature/game_board`
* `feature/item`

### **3. Implement Features* - 10 points**
You will find  files for the following components in the repository:

- **game_board.py**: Manage the game grid.
- **player.py**: Implement Pac-Man's movement and interactions.
- **ghost.py**: Handle ghost behavior and movement.
- **item.py**: Manage items (e.g., dots, power pellets).
Uncomment the code and fill in the TODO sections of the code to implement your assigned feature. Remeber, each feature belongs to a specific branch. If you accidentally update the wrong branch with a certain feature, it is up to you to maintain a clean git history and fix that mistake.

### **4. Write Tests - 25 points**
Write tests for your code in the corresponding test file (e.g., test_player.py for player.py). Be as thorough as possible with your testing. The more thorough you are, the more points you will recieve.

Use the pytest framework for writing tests.
Ensure your tests cover edge cases and possible errors. If you find an error, make sure to create a issue in GitHub about it in the base repo. Every team must report at minimum 1 bug and give a correct test case associated with it to show where the code fails. Team that finds the most bugs (with test cases) will recieve 10 bonus points for this assignment.



### **5. Collaborate Using Pull Requests - 20 points**
Follow the following steps to ensure a clean main branch with proper practices:
1. Push your branch to the remote repository.
2. Submit a pull request (PR) to merge your branch into main.
3. Assign a reviewer from your team to review your code.
