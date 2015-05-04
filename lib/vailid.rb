require "vailid/version"

module Vailid
	
	LENGTH = 9 # Accepted maximal valid length for IL id number
	
	def self.valid?(*args)
		if (args.length == 1)
			validator(args.first)
		else
			false
		end
	end
		
	def self.validator(str)
		return false unless (str != nil)
		str=str.to_s
		return false unless (str.length <= LENGTH)
		return false unless (str.to_i != 0)
		while(str.length < LENGTH)
			str="0".concat(str)
		end
		sum=0
		for i in 0..(LENGTH-1)
			if (i%2==0)
				sum+=	str[i].to_i
			else
				temp= 2*str[i].to_i
				(temp=temp/10 + temp%10) unless (temp<10)
				sum+=temp
			end
		end
		(sum%10==0)? true : false
	end
	
end
