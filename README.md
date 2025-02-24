
# Pac-Man Project

## Introduction
In this project, you will implement features of the classic Pac-Man game using Python. The project is divided into two parts:
- Instructions for Part 1 can be found in Part1.md
- Instructions for Part 2 can be found in Part2.md

## Setup Instructions

### Prerequisites
- Python 3.7 or higher
- Git
- pip (Python package installer)


### Windows Setup

1. Clone the repository:
```bash
# Make sure you clone the forked version. Instructions in Part1.md
git clone <repository_url>
cd PacManProject
```

2. Create and activate virtual environment:
```bash
# Create virtual environment
python -m venv venv

# Activate virtual environment
# Command Prompt
venv\Scripts\activate.bat
# PowerShell
venv\Scripts\Activate.ps1
```

3. Install required packages:
```bash
pip install -r requirements.txt
```

### macOS/Linux Setup

1. Clone the repository:
```bash
# Make sure you clone the forked version. Instructions in Part1.md
git clone <repository_url>
cd PacManProject
```

2. Create and activate virtual environment:
```bash
# Create virtual environment
python3 -m venv venv

# Activate virtual environment
source venv/bin/activate
```

3. Install required packages:
```bash
pip install -r requirements.txt
```

## Running the Game

### Windows
```bash
python main.py
```

### macOS/Linux
```bash
python3 main.py
```

## Troubleshooting

### Common Issues

1. **Python Command Not Found**
   - Windows: Ensure Python is added to PATH during installation
   - macOS: Try using `python3` instead of `python`

2. **Permission Denied**
   - Windows: Run Command Prompt or PowerShell as administrator
   - macOS/Linux: Use `chmod +x main.py` to make the file executable

3. **Package Installation Errors**
   - Ensure your virtual environment is activated
   - Try updating pip: `python -m pip install --upgrade pip`

### Virtual Environment Tips

- To deactivate the virtual environment: `deactivate`
- To reactivate the virtual environment after closing terminal:
  ```bash
  # Windows Command Prompt
  venv\Scripts\activate.bat
  
  # Windows PowerShell
  venv\Scripts\Activate.ps1
  
  # macOS/Linux
  source venv/bin/activate
  ```
- To delete and recreate the virtual environment if issues occur:
  ```bash
  # Windows
  deactivate
  rmdir /s /q venv
  python -m venv venv

  # macOS/Linux
  deactivate
  rm -rf venv
  python3 -m venv venv
  ```

**Note**: The game will not work initially. You must complete the tasks in **Part1.md** before the game will run properly.
