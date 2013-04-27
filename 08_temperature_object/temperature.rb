class Temperature
	def initialize(options = {})
		if options.include?(:c)
			@temperature_in_celsius = options[:c]
		elsif options.include?(:f)
			@temperature_in_celsius = Temperature.ftoc(options[:f])
		else
			"Please tell us whether the input is in celsius (:c) or in fahrenheit (:f) only!"
		end
	end

	def in_fahrenheit
		Temperature.ctof(@temperature_in_celsius)
	end

	def in_celsius
		@temperature_in_celsius
	end

	def self.from_celsius(celsius)
		self.new(:c => celsius)
	end

	def self.from_fahrenheit(fahrenheit)
		self.new(:f => fahrenheit)
	end

	def self.ftoc(fahrenheit)
		(fahrenheit - 32) * 5.0/9.0
	end

	def self.ctof(celsius)
		(celsius * 9.0/5.0) + 32
	end
end

class Celsius < Temperature
	def initialize(celsius)
		super(:c => celsius)
	end
end

class Fahrenheit < Temperature
	def initialize(fahrenheit)
		super(:f => fahrenheit)
	end
end