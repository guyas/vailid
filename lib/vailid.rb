require "vailid/version"

module Vailid
	
	LENGTH = 9 # Accepted maximal valid length for IL id number
	
	def initialize
	
	end
	
	def self.valid?(str)
		return false unless (str != null)
		return false unless (str.length <= LENGTH)
		while(str.length < LENGTH)
			str="0".concat(str)
		end
		sum=0
		for i in 0..(LENGTH-1)
			if (i%2==0)
				sum+=	str[i]
			else
				temp= 2*str[i]
				(temp=temp/10 + temp%10) unless (temp<10)
				sum+=temp
			end
		end
		(sum%10==0)? true : false
	end
	
end
