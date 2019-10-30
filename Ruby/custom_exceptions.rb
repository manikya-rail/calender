class Errors
	module Custommodule
		class CustomError < StandardError
		  attr_reader :atr

		  def initialize(msg="My Error", atr="atrribute")
		    @atr = atr
		    super(msg)
		  end

		  #def atr
		  	#@atr
		  #end

		end
	end
end



class RaiseErrors
	retry_times = 2
	begin
		puts "Please enter your name: "
		y_name = gets.chomp
	 	raise Errors::Custommodule::CustomError.new("Name cannot be empty!", "Name Empty") if y_name == ""
	 	#puts "Length is: #{y_name.length}"
	 	raise Errors::Custommodule::CustomError.new("Name must be atleast four characters long!", "Name too long") if y_name.length.to_i < 4
	 	puts "Entered name is: #{y_name}"

	rescue => e
	 	#p "attribute #{e.atr} : message #{e.message}"
	 	if retry_times > 0
	 		puts "Retrying....."
	 		sleep 5
	 		retry_times -= 1
	 		retry
	 	end

	 	p e.message

	ensure
		puts "Execution completed...!"


	end
end
