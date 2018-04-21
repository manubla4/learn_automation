Given(/^a new '(.*)' browser$/) do |browserName| 
	begin
		case browserName
			when "firefox"
				$browser = Selenium::WebDriver.for :firefox
			when "ie"
				$browser = Selenium::WebDriver.for :ie
			when "edge"
				$browser = Selenium::WebDriver.for :edge
			when "safari"
				$browser = Selenium::WebDriver.for :safari
			else
				$browser = Selenium::WebDriver.for :chrome
		end
		#$browser.window.maximize
	rescue => e
		fail "Error opening browser. Error : #{e}"
	end
end

Given(/^I navigate to homepage$/) do
	begin
        $browser.navigate.to "http://opencart.abstracta.us/"
        @homepage = HomePage.new $browser
		fail "We are not in HomePage!" unless @homepage.loaded?
	rescue => e
		fail "Error opening page. Error : #{e}"
	end
end

  