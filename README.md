# Cyberworkspace robotframework project by Testcoders

[Testcoders](https://www.testcoders.nl)

This repository is set up to assist in the workshop given by Testcoders for Cyberworkspace where we introduce Test Automation

## Pre requisites

To get this framework installed, first make shure a latest version of the following tools are installed:
- Pyhton
- Poetry
- NodeJS/NPM

Prefered IDE's:

Visual Studio Code is a preffered IDE to use. Although other IDE's like Pycharm, IntelliJ have a testrunner en debugger capabilities as wel.
Visual Studio Code offers latest support for Robot Framework integration.

### Windows

Python:
How to instal Python >= 3.9 <https://docs.python-guide.org/starting/install3/win/#install3-windows>

Poetry:
To install Poetry execute following command in Poewershell:
`(Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | python –`

For more information or alternative installions please check:
https://www.python.org/about/gettingstarted/
https://python-poetry.org/
https://nodejs.org/

### Verify 

Please execute the following commands in your powershell or terminall to verify if the pre-requisites are installed correctly.

## Installation

Execute the following commandline actions in order:


`poetry config virtualenvs.in-project true`

`poetry install`

`poetry run rfbrowser init`

##