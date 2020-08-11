def stock_picker(array)
	profit=0
	buy_day=0
	sell_day=0
	array.each_with_index do|firstValue,firstIndx|
	array.each_with_index do|secondValue,secondIndx|
	difference = secondValue-firstValue	
		if (profit < difference && secondIndx > firstIndx)
		 	profit = difference
		 	buy_day = firstIndx
			sell_day = secondIndx
		end	
	end
end
return {:profit=>profit ,:buy_day=>buy_day,:sell_day=>sell_day}
end
result = stock_picker([17,3,6,9,15,8,6,1,10])
puts "The maximum profit will be #{result[:profit]} if we buy on #{result[:buy_day]} and if we sell on #{result[:sell_day]}"
