When(/^I navigate to Register section$/) do 
	begin
		@registerpage = @homepage.navigate_to_register
	rescue => e
		fail "Error navigating to Register section. Error: #{e}"
	end
end

When(/^I fill the registration form with '(.*)' as first name$/) do |name|
	begin
		@registerpage.fill_form(name)
	rescue => e
		fail "Error filling form. Error: #{e}"
	end
end

When(/^I click Continue button$/) do 
	begin
		@registerpage.click_continue
	rescue => e
		fail "Error clicking continue. Error: #{e}"
	end
end

When(/^I navigate to Edit Account Information$/) do 
	begin
		@accountinfopage = @registerpage.navigate_to_edit_account_info
	rescue => e
		fail "Error navigating to Edit account. Error: #{e}"
	end
end

Then(/^I see '(.*)' in first name field$/) do |name|
	begin
		fail "Account not created" unless @accountinfopage.verify_sign_up(name)		
	rescue => e
		fail "Error in result. Error: #{e}"
	end
end

