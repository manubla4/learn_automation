Feature: add_to_cart

	Background:
		Given a new 'chrome' browser
	
	# POSITIVE

	@test_case 
	Scenario: Verify adding to cart a product 
		Given I navigate to homepage
		When I search for 'MacBook' in the search bar
		And I select the first listed product
		And I select a quantity of '2'
		And I click Add to Cart button
		And I navigate to My Cart 
		Then I see product 'MacBook' with quantity of '2' ready for checkout

	# NEGATIVE
	
	