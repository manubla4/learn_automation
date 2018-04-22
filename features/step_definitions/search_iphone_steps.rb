When(/^I insert '(.*)' as item$/) do |item|
	begin
		@searchpage = @homepage.search(item)
	rescue => e
		fail "Error searching. Error: #{e}"
	end
end

When(/^I select the first item listed$/) do
	begin
		@productpage = @searchpage.select_first
	rescue => e
		fail "Error selecting listed product. Error: #{e}"
	end
end

Then(/^I see product '(.*)' selected$/) do |name|
	begin
		fail "Product not added to cart" unless @productpage.verify_name(name)		
	rescue => e
		fail "Error in result. Error: #{e}"
	end
end
