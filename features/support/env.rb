require 'selenium-webdriver'
require 'page-object'

Before do |scenario|
    @browser = Selenium::WebDriver.for :chrome
    @browser.manage.window.maximize
    @browser.manage.timeouts.implicit_wait = 10
end

After do |scenario|
    @browser.quit
end