def stock_picker(arr)
	days = []
	max_profit = 0
	arr.each_with_index do |buy,buy_index|
		arr[(buy_index + 1)..-1].each_with_index do |sell,sell_index|
			if (sell - buy) > max_profit
				max_profit = sell - buy
				days = [buy_index,sell_index]
			else
			end
		end
	end
	puts days
end

#test

stock_picker([17,3,6,9,15,8,6,1,10])