*** Settings ***
Resource         ../../../steps/web/step_definitions.robot
Test Setup	Open Application
Test Teardown	Close Application

*** Test Cases ***
testweb

	
	Go To	http://www.google.com
	Clear Element Text    name=q
	Input Text	name=q    hello
	Submit Form	id=tsf
	Click Element	xpath=//a[contains(text(),'News')]



