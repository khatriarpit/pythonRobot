from selenium import webdriver

def get_chrome_mobile_options():
	mobile_emulation = {
	"deviceName": "iPhone X"}
	chrome_options = webdriver.ChromeOptions()
	chrome_options.add_experimental_option("mobileEmulation", mobile_emulation)
	return chrome_options