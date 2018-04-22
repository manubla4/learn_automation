
class PersonalInformationPage 
    
    FIRSTNAME_FIELD = {css: '#input-firstname'}
    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end

    def loaded?
        browser.title.include?('Information')
    end

    def verify_sign_up(name)      
        browser.find_element(FIRSTNAME_FIELD).attribute('value').include?(name)
    end
    

  end