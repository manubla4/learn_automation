
class HomePage 
    
    MY_ACCOUNT_DROPDOWN = {css: '.dropdown-toggle[href="https://opencart.abstracta.us:443/index.php?route=account/account"]'}
    REGISTER_BUTTON = {css: '[href="https://opencart.abstracta.us:443/index.php?route=account/register"]'}
    
    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end

    def navigate_to_register
        browser.find_element(MY_ACCOUNT_DROPDOWN).click
        browser.find_element(REGISTER_BUTTON).click
        @registerpage = RegisterPage.new $browser
        fail "We are not in RegisterPage!" unless @registerpage.loaded? 
        @registerpage
    end
     

    def loaded?
        browser.title.include?('Store')
    end
     

  end