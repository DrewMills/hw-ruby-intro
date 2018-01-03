# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
	sum = 0
	for num in arr
		sum += num
	end
	return sum
end

def max_2_sum(arr)
	max1 = arr.max

	if max1.nil?
		max1 = 0;
	else
		arr.delete_at(arr.index(max1))
	end

	max2 = arr.max
	max2 = max2.nil? ? 0 : max2

	return max1 + max2
end

def sum_to_n?(arr, n)
	size = arr.length
	idx = 0
	result = false

	while idx < size
		inner_idx = idx + 1

		while inner_idx < size
			if arr[idx] + arr[inner_idx] == n
				result = true
				break
			end

			inner_idx += 1
		end

		idx += 1
	end

  return result
end

# Part 2

def hello(name)
	return "Hello, #{name}"
end

def starts_with_consonant?(s)
	result = false
	first = s[0]

	if !first.nil? && first > 'A' && first <= 'z'
		result = !['a', 'e', 'i', 'o', 'u'].include?(first.downcase)
	end

	return result
end

def binary_multiple_of_4?(s)
	result = false
	size = s.size

	if s.count('01') == s.size
		length = s.length
		four_idx = length - 3

		if four_idx < 0
			result = s == "0"
		else
			relevent_data = s[four_idx..length]
			result = relevent_data == "100"
		end
	end

	return result
end

# Part 3

class BookInStock
	def initialize(new_isbn, new_price)
		self.isbn = new_isbn
		self.price = new_price
	end

	def isbn
		@isbn
	end

	def price
		@price
	end

	def isbn=(new_isbn)
		if new_isbn.nil? or new_isbn == ''
			raise ArgumentError, 'ISBN cannot be empty'
		else
			@isbn = new_isbn
		end
	end

	def price=(new_price)
		if !new_price.is_a?(Numeric)
			raise ArgumentError, 'Price must be a number'
		elsif new_price <= 0.0
			raise ArgumentError, 'Price must be greater than zero'
		else
			@price = new_price
		end
	end

	def price_as_string
		return sprintf('$%.2f', price)
	end
end
