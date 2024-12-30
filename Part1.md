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

### **1. Fork the Repository**
Start by forking the project repository. Make sure to also add the base repository as a remote. Hint: You want to setsthe base repository as the upstream remote.


### **2. Branch Workflow**
Each team member will work on a specific feature or item. You will have to make branches for each branch. It is up to your group on how the work will be divided up. For each branch, make the nescessary changes, commit your work, and push your branch to the remote repository. 

By the end there should be 4 extra branches that have the names:
* `feature/player`
* `feature/ghost`
* `feature/game_board`
* `feature/item`

### **3. Implement Features**
You will find  files for the following components in the repository:

- **game_board.py**: Manage the game grid.
- **player.py**: Implement Pac-Man's movement and interactions.
- **ghost.py**: Handle ghost behavior and movement.
- **item.py**: Manage items (e.g., dots, power pellets).
Uncomment the code and fill in the TODO sections of the code to implement your assigned feature. Remeber, each feature belongs to a specific branch. If you accidentally update the wrong branch with a certain feature, it is up to you to maintain a clean git history and fix that mistake.

### **4. Write Tests**
Write tests for your code in the corresponding test file (e.g., test_player.py for player.py):

Use the pytest framework for writing tests.
Ensure your tests cover edge cases and possible errors. If you find an error, make sure to create a issue in GitHub about it in the base repo. 


### **5. GitHub Actions Workflow**
The project uses GitHub Actions for continuous integration. You will make a CI file `.github/workflows/ci.yml`, and you need to fill it in to make it functional. 

Your Goals:
1. **Triggering Events**
    * The workflow should run in response to the following events:
        * **Push**: When code is pushed to the main branch.
        * **Pull Request**: When a pull request is opened that targets the main branch.
2. **Job Setup**
    * The job should run on an `ubuntu-latest` runner.
    * Run the job for Python 3.10

3. **Steps**
    1. Checkout the Code
        * Use the `actions/checkout` action to check out the repository's code.

    2. Setup Python Environment
        * Use the `actions/setup-python` action to set up the Python version
    3. Install System Dependencies
        * Install the following system dependencies:
            1. **python3-pygame**: A library used for game development in Python.
            2. **xvfb**: A virtual framebuffer required for running tests in a headless environment.
        ```bash
        sudo apt-get update
        sudo apt-get install -y python3-pygame
        sudo apt-get install -y xvfb
        ```
    4. Install Python Dependencies
        ```bash
        python -m pip install --upgrade pip
        pip install pytest
        pip install pytest-cov
        pip install flake8
        pip install black
        pip install pygame
        ```
    5. Check Code Formatting with Black
        * If the code is not properly formatted, it should fail the CI run and display the differences
        ```bash
        black --check --diff .
        ```
    6. Lint the Code with Flake8
        * Run flake8 to check for Python syntax errors and undefined names. Ensure the build fails if any critical issues are found. Additionally, run flake8 again with more lenient rules to check for complexity, line length, and general style.
        ```bash
        # stop the build if there are Python syntax errors or undefined names
        flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics
        # exit-zero treats all errors as warnings
        flake8 . --count --exit-zero --max-complexity=30 --max-line-length=100 --statistics
        ```
    7. Run tests with pytest
        * Use pytest to run the tests and generate a coverage report in XML format. Since the project involves graphical elements, use xvfb-run to run the tests in a virtual framebuffer, ensuring the tests can be executed in a headless environment.
        ```bash
        xvfb-run -a pytest --cov=./ --cov-report=xml
        ```

    **Notes**
    * The commands for installing dependencies and running tests are provided, but your focus is on writing the correct workflow structure in the YML file.
    * Make sure the pipeline runs in the right order and follows best practices for CI configuration.

### **6. Collaborate Using Pull Requests**
1. Push your branch to the remote repository.
2. Submit a pull request (PR) to merge your branch into main.
3. Assign a reviewer from your team to review your code.
