*** Settings ***
Resource         ../../../steps/mobileweb/step_definitions.robot
Test Setup	Open Application
Test Teardown	Close Application

*** Test Cases ***
testMobileqweb

	
	Go To	http://www.google.com
	Clear Element Text    name=q
	Input Text	name=q    hello
	Submit Form	id=tsf
	Click Element	xpath=//a[contains(text(),'News')]



