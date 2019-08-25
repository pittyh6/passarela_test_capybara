class User < SitePrism::Page
    set_url ''
    
    # #dropdown btn
    # element :dropdow_minhaconta, 'a[class="dropdown-toggle"]'
    # element :dropdow_cadastrese, 'a[id="CC-loginHeader-registration"]'
    # element :dropdow_identifiquese, 'a[id="CC-loginHeader-login"]'

    #checkbox
    element :checkb_pf, 'input[id="pessoaFisica"]'
    element :checkb_pj, 'input[id="pessoaJuridica"]'
    element :checkb_gender_female, 'input[value="female"]'
    element :checkb_gender_male, 'input[value="male"]'
    element :checkb_atualizacao_email, 'input[id="CC-emailUpdates"]'
    element :checkb_aviso_phone, 'input[class="CC-phoneOffers"]'

    #field
    element :name, 'input[id="CC-userRegistration-firstname"]'
    element :last_name, 'input[id="CC-userRegistration-lastname"]'
    element :mail, 'input[id="CC-userRegistration-emailAddress"]'
    element :cpf, 'input[id="CC-userRegistration-CPF"]'
    element :phone, 'input[id="CC-userRegistration-telContacto"]'
    element :mobile, 'input[id="CC-userRegistration-telCelular"]'
    element :birth, 'input[id="CC-userRegistration-birthDate-input"]'
    element :pass, 'input[id="CC-userRegistration-password"]'
    element :conf_pass, 'input[id="CC-userRegistration-confirmPassword"]'

    #button
    element :btn_cancel, 'a[id="CC-userRegistrationCancel"]'
    element :btn_save, 'a[id="CC-userRegistrationSubmit"]'

    element :page_click, 'div[id="page"]'
    element :ul_mail, 'ul[class="email_tipos email_tipos_ativo"]'

    #pattern user
    @name_p = 'Julia'
    @last_name_p = 'Souza'
    @mail_p = 'juliasouzate@gmail.com'
    @cpf_p = '424.447.710-10'
    @phone_p = '1189652541'
    @mobile_p = '11985631475'
    @birth_p = '14/11/1984'
    @pass_p = '134679'
    @conf_pass_p = '134679'

    #check if the Minha COnta is visible
    def dropdown_visib
        page.has_css?('.dropdown-toggle')
    end

    #wait for alert and decline
    def dropdown_visib_alert
        wait = Selenium::WebDriver::Wait.new ignore: Selenium::WebDriver::Error::NoAlertPresentError
        alert = wait.until { page.driver.browser.switch_to.alert }
        alert.deny
    end
    #deny alert
    def alert_deny
        page.driver.browser.switch_to.alert.deny
    end

    #check current URL
    def current_url_check(check_url)
        @get_current_url = URI.parse(current_url).request_uri
        
        if @get_current_url ==  check_url   
            puts @get_current_url 
            puts "URl correct"
        else 
            puts 'URL wrong'
            puts @get_current_url 
        end
    end

    #buttons in register user page
    def register_btn(stringre)
        if stringre == 'salvar cadastro'
            btn_save.click
        elsif stringre == 'voltar'
            btn_cancel.click
        end      
    end

    #action click checkbox radio
    def check_radio(radio_btn)
        if(radio_btn == 'checkb_pf')
            checkb_pf.click
        elsif(radio_btn == 'checkb_pj')
            checkb_pj.click
        elsif(radio_btn == 'checkb_gender_female')
            checkb_gender_female.click
        elsif(radio_btn == 'checkb_gender_male')
            checkb_gender_male.click
        elsif(radio_btn == 'checkb_atualizacao_email')
            checkb_atualizacao_email.click
        else(radio_btn == 'checkb_aviso_phone')
            checkb_aviso_phone.click
        end
    end

    #fill the fields for create a new user
    def fill_fields
            #name.set Faker::Name.name
            name.set 'Joao'
            #last_name.set Faker::Name.name
            last_name.set 'Souza'
            #mail.set Faker::Internet.email
            mail.set 'joaosouzate@gmail.com'
            ul_mail.click[1]
            #cpf.set Faker::CPF.pretty
            cpf.set '243.806.060-31'
            phone.set '1158652541'
            mobile.set '11956321478'
            birth.set '25/04/1990'
            pass.set '134679852'
            conf_pass.set '134679852'
            page_click.click
    end

end