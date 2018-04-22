
class AccountPage 
       
    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end

    def loaded?
        browser.title.include?('Account')
    end

  end