# Cyberworkspace robotframework project by Testcoders

[Testcoders](https://www.testcoders.nl)

This repository is set up to assist in the workshop given by Testcoders for Cyberworkspace where we introduce Test Automation. In this workshop we make use of a Python test framework RobotFramwork

## Pre Requisites

To get this example work as expected The following need to be installed:
- Python - version 3.8 or higher
- Poetry - version 1.3 or higher

### IDE's:

Although an IDE is not obligated, a tool Like an IDE offers a lot of running and debugging capabilities for testing which will speed up the test development process.
Visual Studio Code is a preffered IDE to use. Although other IDE's like Pycharm, IntelliJ have simular capabilities, from our latest experience we can strongly advice the use of Visual Studio Code for the use of Robot Framework. 

https://code.visualstudio.com/

## Installation

Before starting installatin it might be good to verify if the requirements are met.
Open Powershell or Terminal window and exectute the following commands:

`python --version`
(version should be 3.8 or higer, when not please continue with installation instructions)

`poetry --version`
(version should be 1.3 or higer, when not please continue with installation instructions)

### Windows

Python:
https://www.python.org/about/gettingstarted/

Poetry:
To install Poetry execute following command in Poewershell:
`(Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | python –`

### Other

For more information or alternative installions please check:
https://www.python.org/about/gettingstarted/
https://python-poetry.org/

## Installation

Before continuing with further insstallation, please verify the versions of Python and Poetry stated in: Pre Requisites.

When Python and Poetry are installed, following commands can be executed:

`poetry config virtualenvs.in-project true`

`poetry install`

`poetry run rfbrowser init`

### IDE installation

When making use of Visual Studio Code, we reccommend to make use of extensions:
Python (Microsoft)
Robot Code (Daniel Biehl)

Open Visual studio Code, go to View > Exensions and install the requested extensions.

## Run Baby

When executing all these commands were succesfull, restart Visual Studio Code.
You might be prompted once to select the correct Python interpreter. Please select the one with: '.venv':poetry 

Verify a folder `.venv` is created in the root folder.

When opening the file `test.robot` in the editor play butttons should be visible and you can start executing the test from the IDE.