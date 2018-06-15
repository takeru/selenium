#!/usr/local/bin/ruby

require "selenium-webdriver"

driver = Selenium::WebDriver.for :remote, url: "http://selenium-hub:4444/wd/hub", desired_capabilities: :chrome
driver.get "https://www.nict.go.jp/JST/JST5.html"
ts = Time.now.strftime("%Y%m%d_%H%M%S")
driver.save_screenshot("images/ruby_jst_#{ts}.png")
driver.quit
