class CharCounter

	def self.count(string)
		dic = Hash.new
		string.delete! ' '
		string.each_char { |char|
			dic[char] = string.count char
		}
		dic
	end


end