module Enumerable
	def my_each
		i = 0
		until i == self.length
			yield(self[i])
			i += 1
		end
	end

	def my_each_with_index
		i = 0
		until i == self.length
			yield(self[i],i)
			i += 1
		end
	end

	def my_select
		i = 0
		to_return = []
		until i == self.length
			if yield(self[i])
				to_return.push(self[i])
				i += 1
			else
				i += 1
			end
		end
		to_return
	end

	def my_all?(&block)
		arr = self.my_select(&block)
		arr.length == self.length
	end

	def my_any?(&block)
		arr = self.my_select(&block)
		!!arr[0]
	end

	def my_none?(&block)
		arr = self.my_select(&block)
		!arr[0]
	end

	def my_count(*arg, &block)
		if block_given?
			arr = self.my_select(&block)
			arr.length
		elsif arg.empty?
			self.length
		else
			self.my_select{|e| e == *arg }.length
		end
	end

	def my_map
		i = 0
		until i == self.length
			self[i] = yield(self[i])
			i += 1
		end
		self
	end

	def my_inject(*num)
		arr = self.to_a
		if num.empty?
			memo = arr.first
			i = 1
		else
			memo = *num
			i = 0
		end
	
		until i == arr.length
			memo = yield(memo,arr[i])
			i += 1
		end
		memo
	end

	def multiply_els(arr)
		arr.my_inject {|product,n| product * n}
	end

#modifying my_map to use a proc
	def my_map(block)
		i = 0
		until i == self.length
			self[i] = block.call(self[i])
			i += 1
		end
		self
	end
end

