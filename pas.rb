#easyread pass
glasnie = ["A", "E", "I", "O", "U"]
soglasnie = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
symb = ["!", "@", "#", "$", "%", "^", "&", "*"]
num = rand(100)

puts "enter the number of characters for the password: "
length = gets.to_i
pas2 = []
i = 0
while i < length
	if i.zero?
		pas2 << num
	elsif i == length - 1
		pas2 << symb.sample
	elsif i != 0
		  if rand(3)==1
			  pas2 << soglasnie.sample
				else  pas2 << soglasnie.sample.downcase
		  end

		  if rand(3)==1
			  pas2 << glasnie.sample
		    else  pas2 << glasnie.sample.downcase
		  end
	end
	i += 1
end

print "your pass: #{pas2.join}"
