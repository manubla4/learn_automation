Feature: sign_in

	Background:
		Given a new 'chrome' browser
	
	# POSITIVE

	@test_case 
	Scenario: Verify sign in 
		Given I navigate to homepage
		When I insert a valid time range 
		And I insert 'Budapest' as destination
		And I click Search button
        Then I see the flights available to go to 'Madrid' in the corresponding dates

	# NEGATIVE
	
	