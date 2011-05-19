module PrimeFactors
	class Application
		def initialize(output)
			@output = output
		end

		def start
			@output.puts("Welcome to Prime Factors!")
			@output.puts("Enter a number to factor: ")
		end

		def generate(number)
			number = number.to_i
			factors = []

			candidate = 2
			while candidate < number do
				while number % candidate == 0 do
					factors << candidate
					number /= candidate
				end
				candidate += 1
			end

			if number > 1 then
				factors << number
			end

			@output.puts(factors.join(', ').to_s)
		end
	end
end

