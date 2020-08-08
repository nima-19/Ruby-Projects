def roll_dice()
	rand(1..6)
end

def ask_user()
	puts "Do you want to play(yes/hold)?"
end
ask_user()
a=0
grandTotal=0
while gets.chomp=="yes" do
		puts "Previous value #{a}"
		puts "Dice value #{b=roll_dice()}"
		if b==1
		   	puts "Round total is #{a=0}"
		else
			puts "Round Total is #{a=a+b}"
		end
		ask_user()
end
puts "GrandTotal is #{grandTotal=grandTotal+a}"
puts "Thank you!"
