Feature: sign_in

	Background:
		Given a new 'chrome' browser
	
	# POSITIVE

	@test_case 
	Scenario: Verify sign in
		Given I navigate to homepage
		When I navigate to Sign in section
		And I fill the fields with random email and password
		And I click Login button
        Then I see a warning label for unregistered email

	# NEGATIVE
	
	