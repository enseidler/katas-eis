class CharCounter

	def self.count(string)
		dic = Hash.new
		if string != nil
			string.delete! ' '
			string.each_char { |char|
				dic[char] = string.count char
			}
		end
		dic
	end


end