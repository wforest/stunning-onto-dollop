# filename: login_spec.rb

require 'selenium-webdriver'

describe 'Login' do

	before(:each) do
		geckodriver = File.join(Dir.pwd, 'vendor', 'geckodriver')
		@driver = Selenium::Webdriver.for :firefox, driver_path: geckodriver
	end

	after(:each) do
		@driver.quit
	end

	it 'succeeded' do
		@driver.get 'http://the-internet.heroku.com/login'
		@driver.find_element(id: 'username').send_keys('tomsmith')
		@driver.find_element(id: 'password').send_keys('SuperSecretPassword')
		@driver.find_element(css: 'button').submit
	end

end