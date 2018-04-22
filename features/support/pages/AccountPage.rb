
class AccountPage 
       
    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end

    def searchInAccount(name)
        browser.find_element(SEARCH_FIELD).send_keys name
        browser.find_element(SEARCH_BUTTON).click
        @searchpage = SearchPage.new $browser
        fail "We are not in SearchPage!" unless @searchpage.loaded?
        @searchpage
    end

    def loaded?
        browser.title.include?('Account')
    end

  end