
module Helper
    def take_picture_result_test(file_name, result)
        file_path = "report/screenshot/test_#{result}"
        picture_result_test = "#{file_path}/#{file_name}.png"
        page.save_screenshot(picture_result_test)
        embed(picture_result_test,'image/png', 'Click Here')
    end
end

module JavascriptDriver
    # other code that prepares capybara to work with selenium
  
    def scroll_to(element)
      script = <<-JS
        arguments[0].scrollIntoView(true);
      JS
  
      Capybara.current_session.driver.browser.execute_script(script, element.native)
    end
end

# module ClearBrowser
#   def clear_browser
#     browser = Capybara.current_session.driver.browser
#     if browser.respond_to?(:clear_cookies)
#     # Rack::MockSession
#     browser.clear_cookies
#     elsif browser.respond_to?(:manage) and browser.manage.respond_to?(:delete_all_cookies)
#     # Selenium::WebDriver
#     browser.manage.delete_all_cookies
#     else
#     raise "Don't know how to clear cookies. Weird driver?"
#     end
#   end
# end
