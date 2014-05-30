def bubble_sort(arr)
	swapped = false
	arr.each_cons(2) do |a,b|
		if b < a
			arr[arr.index(b)] = a 
			arr[arr.index(a)] = b
			swapped = true
		else
		end
	end
	p arr
	return unless swapped
	bubble_sort(arr)
end

bubble_sort([4,3,8,2,0,2])