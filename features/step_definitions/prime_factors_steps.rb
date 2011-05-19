
Given /^I am have not yet started the application$/ do
end

When /^I start the application$/ do
	app = PrimeFactors::Application.new(output)
	app.start
end

Then /^I should see "([^"]*)"$/ do |message|
	output.messages.should include(message)
end

class Output
	def messages
		@messages ||= []
	end

	def puts(message)
		messages << message
	end
end

def output
	@output ||= Output.new
end

Given /^I enter a "([^"]*)"$/ do |number|
	app = PrimeFactors::Application.new(output)
	app.start
	app.generate(number)
end

When /^I hit enter$/ do
end

Then /^I should see the prime "([^"]*)"$/ do |factors|
	output.messages.should include(factors)
end

