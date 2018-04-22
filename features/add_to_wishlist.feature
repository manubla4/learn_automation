Feature: add_to_wishlist

	Background:
		Given a new 'chrome' browser
	
	# POSITIVE

	@test_case 
	Scenario: Verify adding to wishlist a product 
		Given I navigate to homepage
		When I navigate to Sign in
        And I fill the fields with username 'test1@gmail.com' and password 'admin1234'
        And I click Login
		And I search for 'Canon EOS 5D' in the search input
		And I select the first product in the list
		And I click Add to Wishlist button
		And I navigate to My Wishlist 
		Then I see product 'Canon EOS 5D'

	# NEGATIVE