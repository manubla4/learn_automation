When(/^I navigate to Sign in section$/) do 
	begin
		@signinpage = @homepage.navigate_to_sign_in
	rescue => e
		fail "Error navigating to Sign in section. Error: #{e}"
	end
end

When(/^I fill the fields with random email and password$/) do
	begin
		@signinpage.fill_fields
	rescue => e
		fail "Error filling fields. Error: #{e}"
	end
end

When(/^I click Login button$/) do 
	begin
		@signinpage.click_login
	rescue => e
		fail "Error clicking login. Error: #{e}"
	end
end


Then(/I see a warning label for unregistered email$/) do
	begin
		fail "Account not created" unless @signinpage.verify_sign_in		
	rescue => e
		fail "Error in result. Error: #{e}"
	end
end

