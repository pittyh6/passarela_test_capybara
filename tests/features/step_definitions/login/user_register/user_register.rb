Given("I am not logged in") do
    user.load
    login.check_not_login
end
When("I open the website") do
    user.load
    user.dropdown_visib
end

Then("I check the register page is opening") do
    check_url = '/register'
    user.current_url_check(check_url)
end

When("I select Pessoa Fisica") do
    #user.dropdown_visib_alert
    #user.alert_deny
    radio_btn = 'checkb_pf'
    user.check_radio(radio_btn)
end

When("I fill all the fields") do
    user.fill_fields
    radio_btn = 'checkb_gender_female'
    user.check_radio(radio_btn)
end

When("I select the checkbox") do
    x = 1
    2.times{
        if x == 1
            radio_btn = 'checkb_atualizacao_email'
            user.check_radio(radio_btn)
            x = x + 1
        else
            radio_btn = 'checkb_aviso_phone'
            user.check_radio(radio_btn)
        end
    }
    
end

When("I click in {string}") do |string|
    header.my_accountdp(string)
    user.register_btn(string)
end
 
Then("I check that the register was not created") do
    @get_error = find('div[class="cc-notification-message cc-notification-message-only container"]')
    expect(@get_error.text).to eql 'Error: Email existente'
end