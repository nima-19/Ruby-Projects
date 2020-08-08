def cipher(input_string,shift_factor)
	input_string.split("").map { |a| convert(a.ord,shift_factor)}.map{|a| a.chr}.join
end

def convert(char,shift)
	if (char>=65 && char<=90)
		return (((((char+shift-65)% 26)+26)%26)+65)
	elsif (char>=97 && char<=122)
		return (((((char+shift-97)% 26)+26)%26)+97)
	else
		return
	end

end
loop do 
	puts "Enter your string to be coded?"
	input_string=gets.chomp
	puts "Enter the shift number"
	shift_factor=gets.chomp.to_i
	puts " #{shift_factor} #{cipher(input_string,shift_factor)}"
	puts "Do you want enter another string?"
	i=gets.chomp
	if(i!="yes")
		break
	end
end
