class Confirmation < SitePrism::Page

    #btn
    element :btn_copy_code_boleto, 'button[id="copy-code"]'
    element :btn_copy_print_boleto, 'button[id="btn-imprimir"]'
    element :btn_acompanhe_pedido, 'a[href="/orderHistory"]'
    element :btn_vote_send, 'input[id="pesquisa-button-enviar"]'

    #voto ... 0->10
    element :btn_vote, 'div[id="nota"]'

    #code boleto
    element :field_number_boleto, 'input[id="codigo-boleto"]'

    #verify the current url in confirmation page
    def validade_confirmation_page
        @current_confirmation_page = URI.parse(current_url).request_uri
        puts @current_confirmation_page
        if @current_confirmation_page.include?('/confirmation/')
            puts puts "Same URL"
        else
            puts "Wrong URL #{@current_confirmation_page}"
        end
    end

    #check the boleto number was created
    def validade_field_boleto
        puts field_number_boleto.text
        if field_number_boleto.include?('03399')
            puts "Boleto OK"
        else
            puts "Boleto invalid"
        end
    end
end