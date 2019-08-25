Before do
    #page.driver.browser.manage.window.resize_to(750,400)
    page.driver.browser.manage.window.maximize()
    
end
After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/', '_')

    if scenario.failed?
        take_picture_result_test(scenario_name.downcase!, 'failed')
    else
        take_picture_result_test(scenario_name.downcase!,'pass')
    end
end

Before do 
    browser = Capybara.current_session.driver.browser
    if browser.respond_to?(:clear_cookies)
    # Rack::MockSession
    browser.clear_cookies
    elsif browser.respond_to?(:manage) and browser.manage.respond_to?(:delete_all_cookies)
    # Selenium::WebDriver
    browser.manage.delete_all_cookies
    else
    raise "Don't know how to clear cookies. Weird driver?"
    end
end