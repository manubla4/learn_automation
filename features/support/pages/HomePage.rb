
class HomePage 
    
    SEARCH_BUTTON = { xpath: '//*[@action="https://www.phptravels.net/hotels/search"]//button[contains(text(),"Search")]'     }
    
    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end

    def click_search 
        browser.find_element(SEARCH_BUTTON).click
    end 

    

    def loaded?
        browser.title.include?('PHPTRAVELS')
    end
     

  end