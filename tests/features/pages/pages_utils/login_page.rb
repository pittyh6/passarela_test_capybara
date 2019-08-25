class Login < SitePrism::Page  

    set_url 'login'
        
    #fields
    element :login_email, 'input[id="CC-login-input"]'
    element :login_password, 'input[id="CC-login-password-input"]'

    #btn logn box
    element :btn_login_submit, 'button[id="CC-userLoginSubmit"]'
    element :btn_login_cancel_submit, 'button[id="CC-userLoginCancel"]'
    element :btn_login_forgot_password, 'a[id="CC-linkForgotPasswd"]'
    element :btn_login_register, 'a[id="CC-loginHeader-createAccount"]'

    #frame login
    element :login_frame, 'div[id="CC-loginUserPane"]'

    #btn_box_login


    #pattern user
    # @name_p = 'Julia'
    # @last_name_p = 'Souza'
    # @mail_p = 'juliasouzate@gmail.com'
    # @cpf_p = '424.447.710-10'
    # @phone_p = '1189652541'
    # @mobile_p = '11985631475'
    # @birth_p = '14/11/1984'
    # @pass_p = '134679'
    # @conf_pass_p = '134679'

   
    def header
        @header ||= Header.new
    end  

    #check the user is not log in wepsite
    def check_not_login
        header.show_my_accountdp    
    end
    #check the user is logged in wepsite
    def check_user_logged
        header.show_my_login_name
    end

    #fill the fields of log in box
    def fill_login_default_box
        login_email.set 'juliasouzate@gmail.com'
        login_password.set '134679'
    end

    #all buttons in log in box
    def btn_login_box(sbtn_login_box)
        if sbtn_login_box == 'entrar'
            btn_login_submit.click
        elsif sbtn_login_box == 'cancelar'
            btn_login_cancel_submit.click
        else
            puts ""
        end
    end

    #put focus in login frame
    def login_swich_frame
        @login_swich_frame = switch_to.frame find_element(:css, 'div[id="CC-loginUserPane"]')
    end

end