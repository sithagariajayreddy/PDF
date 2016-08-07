module Automation

  def launch_browser

    chromedriver_path = File.join(File.absolute_path('../../..', File.dirname(__FILE__)),"resource","chromedriver.exe")
    Selenium::WebDriver::Chrome.driver_path = chromedriver_path

    @browser = Watir::Browser.new :chrome
    # @browser = Watir::Browser.new :firefox
    @browser.driver.manage.timeouts.implicit_wait = 10
    @browser.driver.manage.window.maximize
  end

  def wait_for_some_time(timeout = 5)
    sleep timeout
    # wait_condition = @browser.execute_script("return jQuery.active") == 0
    # while wait_condition
    #   sleep 1
    # end
  end

  def browser
    @browser
  end

  def quit_browser
    @browser.close
  end

  def wait_for_page(timeout=30)
    browser.driver.manage.timeouts.page_load = timeout
  end

  def wait_for_sometime(timeout=5)
    sleep(timeout)
  end

  def wait_for_text(text)
    Watir::Wait.until { @browser.text.include? text }
  end

  def wait_for_element_displayed(element, timeout=10)
    timeout.each do
      if element.displayed?
        return
      end
      sleep 1
    end
  end

end
