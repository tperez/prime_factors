Feature: person enters a number

	As an application user
	I want to enter a number
	So that I can see the prime factors

	Scenario Outline: enter number
		Given I enter a "<number>"
		When I hit enter
		Then I should see the prime "<factors>"

		Scenarios: number is a prime
			| number | factors |
			| 2      | 2       |
			| 3      | 3       |

		Scenarios: number has two factors
			| number | factors |
			| 4      | 2, 2    |
			| 6      | 2, 3    |


		Scenarios: number has three factors
			| number | factors |
			| 8      | 2, 2, 2 |
			| 12     | 2, 2, 3 |

