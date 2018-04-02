
When(/I insert a valid time range/) do 
	begin
	#	@page.fill_valid_dates
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I insert '(.*)' as destination$/) do |city|
	begin
	#	@page.fill_city(city)
	rescue => e
		fail "Error inserting city. Error: #{e}"
	end
end

When(/I click Search button/) do 
	begin
		@page.click_search
	rescue => e
		fail "Error searching. Error: #{e}"
	end
end

Then(/^I see the flights available to go to '(.*)' in the corresponding dates$/) do |city|
	begin
	#	@page.verify_search_results(city) 
	rescue => e
		fail "Error in results. Error: #{e}"
	end
end

