Feature: Login

	Background: Below are the common steps for each scenario
		
		Given User Launch Chrome browser
		When  User opens URL "http://admin-demo.nopcommerce.com/login"
		

Scenario Outline: Successful Login with Valid Credentials
	
	And   User enters Email as "<email>" and Password as "<password>"
	And   Click on Login 	
	Then  Page Title should be "Dashboard / nopCommerce administration"
	When  User click on Log out link
	Then  Page Title should be "Your store. Login"
	And   close browser
	
	Examples:
		|email | password |
		|admin@yourstore.com|admin|
		|admin@yourstore|666|