require 'spec_helper'

module PrimeFactors
	describe Application do
		let(:output) { double('output').as_null_object }
		let(:app) { Application.new(output) }

		describe "#start" do

			it "sends welcome message" do
				output.should_receive(:puts).with('Welcome to Prime Factors!')
				app.start
			end

			it "prompts for the first integer" do
				output.should_receive(:puts).with('Enter a number to factor: ')
				app.start
			end
		end

		describe "#generate" do
			before(:each) do
				app.start
			end

			[ 
				['1', ''],
				['2', '2'],
				['3', '3'],
				['4', '2, 2'],
				['6', '2, 3'],
				['8', '2, 2, 2'],
				['9', '3, 3'],
				['195', '3, 5, 13']
			].each do |number, factors|

				it "receives #{number}" do
					output.should_receive(:puts).with(factors)
					app.generate(number)
				end
			end
		end
	end
end


