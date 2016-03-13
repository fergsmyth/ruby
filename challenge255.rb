class LightSwitch
	def validateLineInputs (inputs, switchCount, lineNumber)
		if inputs.empty?
			puts "Empty line at index " + lineNumber
		elsif inputs.length != switchCount
			puts "Number of inputs does not match number of switches, see line " + lineNumber
		end
	end

	def hitTheLights
		puts "This program reads in a file with indicies between 0 nd the number of switches you specify minus one"
		puts "Reading from the file it flips any switches between the two ranges specified"
		puts "Enter number of switches:"

		switchNo = gets.chomp.to_i
		switches = Array.new(switchNo, "X")
		puts switches
		File.open("inputs.txt").each_with_index { |line, index| 
			validateLineInputs(line.split, switches.length, (index+1).to_s)
			puts line
		}
	end
end

lights = LightSwitch.new
lights.hitTheLights
