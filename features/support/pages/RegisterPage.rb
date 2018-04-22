
class RegisterPage     

    FIRSTNAME_FIELD = {css: '#input-firstname'}
    LASTNAME_FIELD = {css: '#input-lastname'}
    EMAIL_FIELD = {css: '#input-email'}
    TELEPHONE_FIELD = {css: '#input-telephone'}
    ADDRESS_FIELD = {css: '#input-address-1'}
    CITY_FIELD = {css: '#input-city'}
    POSTCODE_FIELD = {css: '#input-postcode'}
    REGION_FIELD = {css: '#input-zone'}
    REGION_FIELD_OPTION = {css: '#input-zone [value="3513"]'}
    PASS_FIELD = {css: '#input-password'}
    PASSCONFIRM_FIELD = {css: '#input-confirm'}
    TERMS_CHECKBOX = {css: '.pull-right [type=checkbox]'}
    CONTINUE_BUTTON = {css: '[type="submit"]'}
    EDIT_ACCOUNT_BUTTON = {css: '[href="https://opencart.abstracta.us:443/index.php?route=account/edit"]'}

    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end   

    def loaded?
        browser.title.include?('Register')
    end
    
    def fill_form(name)
        browser.find_element(FIRSTNAME_FIELD).send_keys name
        browser.find_element(LASTNAME_FIELD).send_keys 'Test'      
        browser.find_element(EMAIL_FIELD).send_keys Utils.generate_random_email
        browser.find_element(TELEPHONE_FIELD).send_keys '12345'
        browser.find_element(ADDRESS_FIELD).send_keys 'Test 12345'
        browser.find_element(CITY_FIELD).send_keys 'Test'
        browser.find_element(POSTCODE_FIELD).send_keys '12345'
        browser.find_element(REGION_FIELD).click
        browser.find_element(REGION_FIELD_OPTION).click
        browser.find_element(PASS_FIELD).send_keys '12345'
        browser.find_element(PASSCONFIRM_FIELD).send_keys '12345'
        browser.find_element(TERMS_CHECKBOX).click
    end
    
    def click_continue 
        browser.find_element(CONTINUE_BUTTON).click
    end 

    def navigate_to_edit_account_info 
        browser.find_element(EDIT_ACCOUNT_BUTTON).click
        @accountinfopage = PersonalInformationPage.new $browser
        fail "We are not in PersonalInformationPage!" unless @accountinfopage.loaded? 
        @accountinfopage
    end 
    
  end