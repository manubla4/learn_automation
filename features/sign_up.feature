Feature: sign_up

	Background:
		Given a new 'chrome' browser
	
	# POSITIVE

	@test_case 
	Scenario: Verify sign up
		Given I navigate to homepage
		When I navigate to Register section
		And I fill the registration form with 'Carlos' as first name 
		And I click Continue button
		And I navigate to Edit Account Information
        Then I see 'Carlos' in first name field

	# NEGATIVE
	
	