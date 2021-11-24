# Vaccine Web Tests

Using Robot Framework Test to test https://vaccine-haven.herokuapp.com/

<!-- How to run your tests. -->

## Installation

### Required Dependency

This project runs on Python 3.6 or higher and Google Chrome for MacOS Version 96.0.4664.55 (Official Build) (x86_64).

If you use other Operation System or other Versions, please download `chromedriver` from [here!](https://sites.google.com/chromium.org/driver/home)

then in [resource.robot](robot/resource.robot)

update _YOUR_CHROMEDRIVER_PATH_

```.robot
${CHROMEDRIVER_PATH}    <YOUR_CHROMEDRIVER_PATH>
```

Install the required packages (first time only)

```bash
# install setup
pip install -r requirements.txt
```

Execute test files

```bash
cd robot

# run register (no need)
robot register-test.robot

# run assignment tests
robot automate-tests.robot
```

## Robot Framework vs Cucumber

I prefer `Robot Framework`. Because I can monitoring the steps of test with visual, so I can understand the procedure better when it detected bugs. Also this framework convenient for the tester to test User Interface without knowing code.

## Tutorial Ref

[THiNKNET - ลองเขียน System Test ด้วย Robot Framework](https://engineering.thinknet.co.th/%E0%B8%A5%E0%B8%AD%E0%B8%87%E0%B9%80%E0%B8%82%E0%B8%B5%E0%B8%A2%E0%B8%99-system-test-%E0%B8%94%E0%B9%89%E0%B8%A7%E0%B8%A2-robot-framework-d1383775be06)
