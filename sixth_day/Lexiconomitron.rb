class Lexiconomitron

	# removes "T"
	def t_remover(word)
		word.gsub(/[Tt]/,"")

	end
 	
 	# Reverses letters of words
	def shazam(input_array)		
		input_array.map{|n| t_remover(n.reverse) } 
		
	
	end

	# Removes words with more then 3 letters 
	def oompa_loompa(input_array)
		input_array.select{|n| n.length <= 3} 
    end

end


 # puts superobject.shazam(["hello", "This", "a", "boring", "test"])

 # puts superobject.oompa_loompa(["hello", "This", "a", "boring", "test"])

# array = [“This”, “is”, “a”, “boring”, “test”]


# answer = superobject.shazam(["hello", "This", "a", "boring", "test"])

# p answer


	# if answer == ["olleh","sihT","a","gnirob","tset"]
	# 	puts "OK"
	# else
	# 	puts "FAIL"
	# end

describe Lexiconomitron do
	before do
	  	@superobject = Lexiconomitron.new	 		
  	end
    it "reverse and remove 'T'" do
  		test_obj = @superobject.shazam(["hello", "This", "a", "boring", "test"])
  		test_res = ["olleh", "sih", "a", "gnirob", "se"]
  		expect(test_obj).to eq(test_res)
  	end
   
end

