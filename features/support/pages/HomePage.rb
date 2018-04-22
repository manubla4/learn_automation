
class HomePage 
    
    MY_ACCOUNT_DROPDOWN = {css: '.dropdown-toggle[href="https://opencart.abstracta.us:443/index.php?route=account/account"]'}
    REGISTER_BUTTON = {css: '[href="https://opencart.abstracta.us:443/index.php?route=account/register"]'}
    LOGIN_BUTTON = {css: '[href="https://opencart.abstracta.us:443/index.php?route=account/login"]'}
    SEARCH_FIELD = {css: '[placeholder="Search"]'}
    SEARCH_BUTTON = {css: '.fa-search'}
    NAVIGATE_TO_WISHLIST = {css: '[data-original-title="Add to Wish List"]'}
    
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
     
    def search(name)
        browser.find_element(SEARCH_FIELD).send_keys name
        browser.find_element(SEARCH_BUTTON).click
        @searchpage = SearchPage.new $browser
        fail "We are not in SearchPage!" unless @searchpage.loaded?
        @searchpage
    end

    def navigate_to_sign_in
        browser.find_element(MY_ACCOUNT_DROPDOWN).click
        browser.find_element(LOGIN_BUTTON).click
        @signinpage = SignInPage.new $browser
        fail "We are not in SignInPage!" unless @signinpage.loaded? 
        @signinpage
    end

    def navigate_to_wishlist
        browser.find_element(NAVIGATE_TO_WISHLIST).click
        @wishlistpage = Wishlist.new $browser
        fail "We are not in Wishlist!" unless @wishlistpage.loaded?
        @wishlistpage        
    end

    def loaded?
        browser.title.include?('Store')
    end 

  end