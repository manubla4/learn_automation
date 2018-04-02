require 'report_builder'


AfterStep do |scenario|
	encoded_img = $browser.screenshot_as(:base64)
	embed("data:image/png;base64,#{encoded_img}",'image/png')
end

Before do
  # We can use this method to open the browser too
end

After do |scenario|
	
	if scenario.failed?
		encoded_img = $browser.screenshot_as(:base64)
		embed("data:image/png;base64,#{encoded_img}",'image/png')
	end
end

at_exit do
	ReportBuilder.configure do |config|
		config.json_path = './output/'
		config.report_path = './output/report'
		config.report_types = [:html]
		config.report_title = 'Results'
		config.include_images = true
#		config.additional_info = {browser: 'Chrome'}
	end

	ReportBuilder.build_report
end