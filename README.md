# Robot Framework
Test Automation with Robot Framework - Basic

## Pre-requirements

It is required to have Python 3 and [Robotframework installed](https://robotframework.org/?tab=1#getting-started) to run this project.

> I used versions `v3.11.3` and `6.0.2` of Python and robotframework, respectively.

## Installation
Robot Framework is implemented with Python, so you need to have Python installed.
>`pip install robotframework`
## Installation of Web Drivers
The web driver version needs to be the same as your browser.
> I used versions `113.0.5672.93` of Chrome browser.

Command to view the version:

`chromedriver --version`

`geckodriver --version`
> I used versions `113.0.5672.63` and `0.33.0` of ChromeD

## Options
Where to create output files.
> robot -d `Folder` `Test File`

> Example: `robot -d resultados amazon_testes.robot`

Select tests by tag.
> robot -i `Tag Name` `Test File`

> Example: `robot -i menu amazon_testes.robot`

Set variables in the test data.
> robot -v `Variable:Name` `Test File`

> Example: `robot -v BROWSER:edge amazon_testes.robot`iver and Geckodriver, respectively.


# robot-web-testing
Web Testing with Robot Framework

## Installation of libraries
`pip install -U robotframework-seleniumlibrary`

>`pip list`: To list which packages have been installed and their versions.

# robot-api-testing
API Testing with Robot Framework.
Using [ServeRest](https://serverest.dev/) to test API.
ServeRest is a free REST API that simulates a virtual store in order to serve as material for API testing studies.

## Installation of libraries
`pip install -U robotframework-requests`