
swordcount=0

puts "You are in a dark room. There is a door at the north.
n for North
w for West
s for South
e for East
exit to leave"
puts ">"

loop do 

answer=gets.chomp

case answer

	when "n"
		puts "You are in the forest. There is a lot of light. There is a bear sleeping. You can see a sword.
		Pick sword? Yes or no?"
		answersword=gets.chomp

		case answersword 
			when "yes"
				puts "You pick up a sword.Where do you want to go next?"
				swordcount+=1
		    when "no"
		    else
		    puts "What?" 
			end
		puts ">"
		
	when "s"
 		puts "You are in a dark room. There is a door at the north."
 		puts "Inventory: SWORD: #{swordcount}"
 		if swordcount>=1
 			puts "Drop sword? Yes or no?"
 			answersworddrop=gets.chomp
 			case answersworddrop
				when "yes"
					puts "You dropped the sword.Where do you want to go next?"
					swordcount-=1
			    when "no"
			    else
			    puts "What?" 
				end
		end
 		puts ">"
		
	when "e"
		puts "There is no exit there. 
			  You are in a dark room. There is a door at the north."
		puts "Inventory: SWORD: #{swordcount}"
        puts ">"
		
	when "w"
		puts "You are all the way in the West."
		puts "Inventory: SWORD: #{swordcount}"
		puts ">"

	when "exit"
	puts "Ok, bye bye."
	puts ">"
		
	else
		puts "What?"
		puts ">"
		
	end
end
