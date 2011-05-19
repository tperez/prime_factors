Feature: person starts the application

	As an application user
	I want to start the application
	So that I can determine the prime factors of an integer

	Scenario: start application
		Given I am have not yet started the application
		When I start the application
		Then I should see "Welcome to Prime Factors!"
		And I should see "Enter a number to factor: "

