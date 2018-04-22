When(/^I navigate to Sign in$/) do 
	begin
		@signinpage = @homepage.navigate_to_sign_in
	rescue => e
		fail "Error navigating to Sign in section. Error: #{e}"
	end
end

When(/^I fill the fields with username '(.*)' and password '(.*)'$/) do |username, password|
	begin
		@signinpage.sign_in_with_valid_credentials(username, password)
	rescue => e
		fail "Error filling fields. Error: #{e}"
	end
end

When(/^I click Login$/) do 
	begin
		@accountpage = @signinpage.click_login
	rescue => e
		fail "Error clicking login. Error: #{e}"
	end
end

When(/^I search for '(.*)' in the search input$/) do |name|
	begin
		@searchpage = @searchpage.searchInAccount(name)
	rescue => e
		fail "Error searching. Error: #{e}"
	end
end

When(/^I select the first product in the list$/) do
	begin
		@productpage = @searchpage.select_first
	rescue => e
		fail "Error selecting listed product. Error: #{e}"
	end
end

When(/^I click Add to Wishlist button$/) do 
	begin
		@productpage.add_to_wishlist
	rescue => e
		fail "Error adding to cart. Error: #{e}"
	end
end

When(/^I navigate to My Wishlist$/) do
	begin
		@wishlistpage = @homepage.navigate_to_wishlist	
	rescue => e
		fail "Error navigating to cart. Error: #{e}"
	end
end

Then(/^I see product '(.*)'/) do |name|
	begin
		fail "Product not added to cart" unless @wishlistpage.verify_wishlist(name, qty)		
	rescue => e
		fail "Error in result. Error: #{e}"
	end
end