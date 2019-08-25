class Header < SitePrism::Page
    
    #pre-header
    element :online_help, 'a[class="ajuda-online.dropdown-toggle"]'
    element :central_atend, 'a[href="/central-atendimento"]'
    element :chat_atend, 'a[text="Chat com atendente"]' #'a', text: 'Chat com atendente'   #?????

    element :loja, 'a[href="/nossas-lojas"]'
    element :buy_whatsapp, 'a[title="Compre por Whatsapp"]'
    #dropdown
    element :dropdow_minhaconta, 'a[class="dropdown-toggle"]'
    element :dropdow_cadastrese, 'a[id="CC-loginHeader-registration"]'
    element :dropdow_identifiquese, 'a[id="CC-loginHeader-login"]'

    #navbar
    #all nav bar dropdown
    element :nav_dropdown, 'li[class="dropdown.mega-menu-fullwidth.menu-item.cc-desktop-dropdown"]'
    element :nav_dropdown_woman, 'a[id="feminino"]'
    element :nav_dropdown_lancamentos, 'a[id="lancamentos"]'
    element :nav_dropdown_masculino, 'a[id="masculino"]'
    element :nav_dropdown_infantil, 'a[id="infantil"]'
    element :nav_dropdown_compre_por_look, 'a[id="compre-por-look"]'
    element :nav_dropdown_outlet_promocoes, 'a[id="outlet-promocoes"]'
    element :nav_dropdown_verao, 'a[id="verao"]'
    element :nav_dropdown_marcas, 'a[id="marcas"]'
    element :nav_dropdown_outlet, 'a[id="outlet"]'


    #logo
    element :logo_header, 'img[alt="Passarela Logo"]'

    #cart
    element :cart_header, 'div[id="cc-cart"]'
    element :see_cart_header, 'a[id="CC-headerShoppingCart-Edit"]'
    element :finish_cart_header, 'a[id="CC-headerShoppingCart-Checkout"]'

    #search
    element :search_field, 'input[id="my-search-box"]'
    element :search_btn, 'a[class="form-control.cc-button-primary.simple-search"]'

    #check Minha Conta[my account] is visible
    def show_my_accountdp
        puts dropdow_minhaconta.visible?
    end
    def show_my_login_name
        #@show_my_login_name = page.has_text?('a', text: 'Olá')
        @show_my_login_name = page.should contain_text?('Olá')
        puts @show_my_login_name
    end

    #all dropdown of minha conta 
    def my_accountdp(smy_accountdp)
        case smy_accountdp
        when 'minha conta'
            dropdow_minhaconta.click
        when 'identifique-se'
            dropdow_identifiquese.click
        when 'cadastre-se'
            dropdow_cadastrese.click
        else
            puts ""
        end
        # if string == 'minha conta'
        #     dropdow_minhaconta.click
        # elsif string == 'identifique-se'
        #     dropdow_identifiquese.click
        # elsif string == 'cadastre-se'
        #     dropdow_cadastrese.click
        # else
        #     puts "Not indentified - my_accountdp"
        # end

    end

    #all dropdown of sacola(cart)
    def my_cartdp(smy_cartdp)
        case smy_cartdp
        when 'logo cart'
            cart_header.click
        when 'ver sacola'
            see_cart_header.click
        when 'finalizar pedido'
            finish_cart_header.click
        else
            puts ""
        end
    end

    #choice the category in navbar
    def choice_element_dropdown
        @choice_element_dropdown = page.all(:css, 'div a')[12].click
    end

    #select a iten in navbar
    def select_item_navbar(sselect_item_navbar)
        case sselect_item_navbar
        when 'new'
            nav_dropdown_lancamentos.click
        when 'woman'
            nav_dropdown_woman.click
        when 'man'
            nav_dropdown_masculino.click
        when 'kids'
            nav_dropdown_infantil.click
        when 'looks'
            nav_dropdown_compre_por_look.click
        when 'descount'
            nav_dropdown_outlet_promocoes.click
        when 'summer'
            nav_dropdown_verao.click
        when 'brand'
            nav_dropdown_marcas.click
        when 'outlet'
            nav_dropdown_outlet.click
        else
            puts ""
        end
        choice_element_dropdown
    end

    #search an item
    def search(ssearch)
        search_field.set ssearch
        search_btn.click
    end

end