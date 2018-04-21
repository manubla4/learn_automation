Feature: sign_up
 
 	Background:
 		Given a new 'chrome' browser
 
 	# POSITIVE
 
 	@test_case 
 	Scenario: Verify search iphone
	 	Given I navigate to homepage
 		When I insert 'iPhone' as item
		When I select the first item listed
        Then I see product 'iPhone' selected

 	# NEGATIVE