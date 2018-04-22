class Wishlist 
    
    NAME_LABEL = {css: 'tbody tr:first-child .text-left a'}


    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end

    def verify_wishlist(name)	
        browser.find_element(NAME_LABEL).text.include?(name)
    end     

    def loaded?
        browser.title.include?('Cart')
    end
     
  end