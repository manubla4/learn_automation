
class SearchPage 
    
    FIRST_PRODUCT = {css: '.row .product-layout:first-child img'}
    
    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end

    def select_first
        browser.find_element(FIRST_PRODUCT).click
        @productpage = ProductPage.new $browser
    end

    def loaded?
        browser.title.include?('Search')
    end
     

  end