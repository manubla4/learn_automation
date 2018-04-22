
class CartPage 
    
    NAME_LABEL = {css: 'form .text-left a'}
    QTY_FIELD = {css: '.btn-block .form-control'}

    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end

    def verify_cart(name, qty)	
        browser.find_element(NAME_LABEL).text.include?(name) && browser.find_element(QTY_FIELD).attribute('value').include?(qty)
    end     

    def loaded?
        browser.title.include?('Cart')
    end
     

  end