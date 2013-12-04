class VendingMashine
	def initialize(products=[],max_capacity=10)
		@max_capacity=max_capacity
		@products =[]
		@total_amount =0

	end

	def has_products?
		!@products.empty?
	end
	def max_capacity
		@max_capacity
	end
	def insert(money)
		@total_amount += money
	end
	def total_amount
		@total_amount
	end
end

