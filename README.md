# robot-web-testing
Automação de Testes com Robot Framework - Básico

## Pre-requirements

It is required to have Python 3 and [Robotframework installed](https://robotframework.org/?tab=1#getting-started) to run this project.

> I used versions `v3.11.3` and `6.0.2` of Python and robotframework, respectively.

## Installation
Robot Framework is implemented with Python, so you need to have Python installed.
>`pip install robotframework`

## Installation of libraries
`pip install -U robotframework-seleniumlibrary`

`pip install -U robotframework-requests`

>`pip list`: To list which packages have been installed and their versions.

## Installation of Web Drivers
The web driver version needs to be the same as your browser.
> I used versions `113.0.5672.93` of Chrome browser.

Command to view the version:

`chromedriver --version`

`geckodriver --version`
> I used versions `113.0.5672.63` and `0.33.0` of ChromeDriver and Geckodriver, respectively.