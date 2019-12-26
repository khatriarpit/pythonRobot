** Settings **
Documentation    A resource file with reusable keywords and variables.
...
...              The system specific keywords created here form our own
...              domain specific language. They utilize keywords provided
...              by the imported SeleniumLibrary.
Library          SeleniumLibrary
Library          util.py

*** Variables ***
${URL}         http://www.google.com
${BROWSER}        Chrome
${DELAY}          0

** Keywords **
Open Application
     ${options}=         Get Chrome Mobile Options 

    Create Webdriver    Chrome                       chrome_options=${options}

Close Application
    Close Browser