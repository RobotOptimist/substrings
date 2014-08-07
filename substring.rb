class Substring
			
	def self.substrings(words,dictionary = [])
		finder = []
		word_n_count = {}
		hold = {}
		str_array = words.split(' ')
		
		str_array.each do |str|
			counter = str.length
			str.downcase!
				dictionary.each do |word|
					str.match(word) {|m| finder << m}					
					finder.count > 0 ? hold = {word => 1} : hold.clear
					word_n_count.merge!(hold) {|k,v1,v2| v1+1}
					finder.clear
				end
		end
		puts word_n_count
	end

end

#Substring.substrings("hell",["hello", "hola", "hell"])
#Substring.substrings("hello hola",["hello", "hola", "hell"])
#Substring.substrings("hola hola",["hello", "hola", "hell"])
#Substring.substrings("How's it going?",["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
Substring.substrings("Howdy partner, sit down! How's it going?",["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])