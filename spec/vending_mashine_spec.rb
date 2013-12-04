require 'spec_helper'

describe VendingMashine do
	let (:mashine) {VendingMashine.new}

	it 'should exist' do
		expect(mashine).to be_true
	end
	it 'should contain collection of products' do
		mashine = VendingMashine.new(@products=[])
		product =double (:product)
		@products << product
		expect(@products.count).not_to eq 0
	end
	it 'could have no products' do
		expect(mashine).not_to have_products
	end
	it 'has maximum capacity of 10 items' do
		expect(mashine.max_capacity).to eq 10
	end 
	context 'mashine should repspond to actions' do
		before do
			mashine.insert 1
			mashine.insert 0.5
		end
		
		it 'should return a product after payment' do
			expect(mashine.total_amount).to eq 1.5 
		end
	end
end
