dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substring(string , dictionary)
	dictionary.reduce(Hash.new(0)) do |count, dict|
         if string.include?dict
            count[dict] += 1
         end
         count
end
end
loop do 
	puts "Enter your string"
	string=gets.chomp
	puts " #{substring(string,dictionary)}"
	puts "Do you want enter another string?"
	i=gets.chomp
	if(i!="yes")
		break
	end
end
