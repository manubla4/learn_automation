When(/^I search for '(.*)' in the search bar$/) do |name|
	begin
		@searchpage = @homepage.search(name)
	rescue => e
		fail "Error searching. Error: #{e}"
	end
end

When(/^I select the first listed product$/) do
	begin
		@productpage = @searchpage.select_first
	rescue => e
		fail "Error selecting listed product. Error: #{e}"
	end
end

When(/^I select a quantity of '(.*)'$/) do |qty|
	begin
		@productpage.set_qty(qty)
	rescue => e
		fail "Error selecting quantity. Error: #{e}"
	end
end

When(/^I click Add to Cart button$/) do 
	begin
		@productpage.add_to_cart
	rescue => e
		fail "Error adding to cart. Error: #{e}"
	end
end

When(/^I navigate to My Cart$/) do
	begin
		@cartpage = @productpage.navigate_to_cart 		
	rescue => e
		fail "Error navigating to cart. Error: #{e}"
	end
end

Then(/^I see product '(.*)' with quantity of '(.*)' ready for checkout$/) do |name, qty|
	begin
		fail "Product not added to cart" unless @cartpage.verify_cart(name, qty)		
	rescue => e
		fail "Error in result. Error: #{e}"
	end
end