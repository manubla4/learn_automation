
class ProductPage 
    
    QTY_FIELD = {css: '#input-quantity'}
    ADD_CART_BUTTON = {css: '.btn#button-cart'}
    MY_CART_BUTTON = {css: '[href="http://opencart.abstracta.us:80/index.php?route=checkout/cart"]'}
    NAME_LABEL = {css: '.col-sm-4 h1'}

    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end

    def set_qty(qty)
        browser.find_element(QTY_FIELD).clear
        browser.find_element(QTY_FIELD).send_keys qty
    end     
    
    def add_to_cart
        browser.find_element(ADD_CART_BUTTON).click
    end

    def navigate_to_cart
        browser.find_element(MY_CART_BUTTON).click
        @cartpage = CartPage.new $browser
        fail "We are not in CartPage!" unless @cartpage.loaded?
        @cartpage        
    end
     
    def verify_name(name)	
        browser.find_element(NAME_LABEL).text.include?(name)
    end   

  end