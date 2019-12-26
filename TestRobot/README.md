# Automation Testing with Robot Framework

#### Pre-requisites
1.Python and PIP should be installed
2.Using PIP install requirements.txt by following command
```
Python must be above 3.0 version.you can use pip with `alias name` like 3 etc based on your python installed.

pip(Alias Name) install -r requirements.txt

Compatible chromedriver path should be set in your system and in application.properties file if it is present in your project folder for command line execution.

# use automationName='XCUITest' if needed in IOS device during command line execution
```


#### Writing Features inside Scenario
    *** Test Cases ***
    Valid Login
        Open Browser To Login Page
        Input Username    demo
        Input Password    mode
        Submit Credentials
        Welcome Page Should Be Open
        [Teardown]    Close Browser


Preconditions
-------------

A precondition for running the tests is having `Robot Framework`_ and
SeleniumLibrary_ installed, and they in turn require
Python_. Robot Framework `installation instructions`__ cover both
Robot and Python installations, and SeleniumLibrary has its own
`installation instructions`__.

In practice it is easiest to install Robot Framework and
SeleniumLibrary along with its dependencies using `pip`_ package
manager. Once you have pip installed, all you need to do is running
these commands::

    pip(Alias Name) install robotframework
    pip(Alias Name) install robotframework-seleniumlibrary
    pip(Alias Name) install robotframework-appiumlibrary

Running tests
-------------

The `test cases` are located in the ``tests`` directory. They can be
executed using the ``robot`` command::

    robot tests

.. note:: If you are using Robot Framework 2.9 or earlier, you need to
          use the ``pybot`` command instead.

You can also run an individual  file and use various command line
options supported by Robot Framework::

    robot tests/<platform>/<filename>.robot
    robot --test <TestCaseName> --loglevel DEBUG tests

You can also run an individual test case from file and command line option  supported by Robot Framework::

    robot -t testCaseName tests/<platform>/<filename>.robot
    In case testCaseName with whitespace than replace whitespace with '_'(Ex. testCaseName : Amazon Invalid Login,than use testCaseName as Amazon_Invaid_Login)

Run ``robot --help`` for more information about the command line usage

Using different browsers
------------------------

The browser that is used is controlled by ``${BROWSER}`` variable defined in
`paltform specific steps`_ resource file. Chrome browser is used by default, but that
can be easily overridden from the command line::

    robot --variable BROWSER:Firefox tests
    robot --variable BROWSER:IE tests


Consult
[SeleniumLibrary]( https://github.com/robotframework/SeleniumLibrary) documentation about supported browsers.
Also, You can find available Keywords in [Keyword Documentation](http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)

### Generated results

After `running tests` you will get report and log in HTML format. Example
files are also visible online in case you are not interested in running
the demo yourself:

- `report.html`
- `log.html`

### Upload Results to QTM or QTM4J
For uploading results to QTM or QTM4J, you need to run using below command which will generate xUnit compatible output file and listener `python_listerner.py` will upload that file to respective tool.

    robot --listener python_listener.py --xunit result.xml tests


Read more
------------------------

[Robot Framework](http://robotframework.org), [Python](http://python.org), [pip](http://pip-installer.org)