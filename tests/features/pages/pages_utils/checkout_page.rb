class Checkout < SitePrism::Page

    element :checkout_new_address, 'button[id="cc-customer-profile-shipping-address-add"]'

    #fields
    element :checkout_first_name, 'input[id="CC-customerProfile-sfirstname"]'
    element :checkout_last_name, 'input[id="CC-customerProfile-slastname"]'
    element :checkout_post_code, 'input[id="CC-customerProfile-szipcode"]'
    element :checkout_number, 'input[id="CC-customerProfile-snumero"]'
    element :checkout_complement_number, 'input[id="CC-customerProfile-scomplemento"]'
    element :checkout_reference, 'input[id="CC-customerProfile-sreferencia"]'
    element :checkout_phone, 'input[id="CC-customerProfile-sphone"]'

    #btn checkout
    element :btn_checkout_save, 'button[id="CC-customerProfile-save"]'
    element :btn_checkout_cancel, 'button[id="CC-customerProfile-cancel"]'
    element :btn_checkout_continue, 'button[id="cc-boton-continuar-envios"]'
    element :btn_checkout_finish, 'button[id="cc-boton-finalizar"]'

    #link
    element :link_checkout_post_code, ('a[href="http://www.buscacep.correios.com.br/servicos/dnec/index.do"]')

    #nav tabs payment
    element :nav_payment_cc, 'li[id="cc-tabCreditCard"]'
    element :nav_payment_boleto, 'li[id="cc-tabBoleto"]'
    element :nav_payment_transf_banc, 'li[id="cc-tabSafetyPay"]'

    #fill the field for delivery
    def fill_checkout_delivery
        checkout_post_code.set '04854-190'
        checkout_first_name.set 'Julia'
        checkout_last_name.set Faker::Name.name
        checkout_number.set Faker::Number.within(range: 1..999)
        checkout_complement_number.set 'A'
        checkout_reference.set 'Crunch Gym'
        checkout_phone.set '923456877'
    end    

    #all buttons in checkout page and the action click
    def btn_checkou_click(sbtn_checkout_click)
        case sbtn_checkout_click
        when 'salvar'
            btn_checkout_save.click
        when 'cancelar'
            btn_checkout_cancel.click
        when'continuar'
            btn_checkout_continue.click
        when 'finalizar'
            btn_checkout_finish.click
        when 'novo endereco'
            checkout_new_address.click
        else
            puts ""
        end
    end
    
    #all choice of payment in checkout page
    def nav_payment_method_checkout_click(snav_payment_checkout_click)
        case snav_payment_checkout_click
        when 'cartao de credito'
            nav_payment_cc.click
        when 'boleto bancario'
            puts "foi boleto"
            nav_payment_boleto.click
        when'transferencia bancaria online'
            nav_payment_transf_banc.click
        else
            puts ""
        end
    end
end