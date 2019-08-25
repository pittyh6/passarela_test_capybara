class Cart < SitePrism::Page
    
    #btn
    element :btn_more_products, 'a[id="btn-btn-md"]'
    element :btn_finish_buy_top, 'button[id="btn-pull-right"]'
    element :btn_more_less, 'class="btn"'
    element :btn_descount_code, 'span[id="CC-promotion-applyCodeButton"]'
    element :btn_post_code, 'span[id="CC-calcular-text"]'
    element :btn_finish_buy_middle, 'a[id="handleValidateCart-orderSummary"]' 
    element :btn_fast_buy, 'button[id="btnCompraRapida"]'

    #remove_btn
    element :remove_btn, '.cart-item-options:nth-child(1)'

    #verify current url in cart page
    def validade_cart_page
        @current_cart_page = URI.parse(current_url).request_uri
        puts @current_cart_page
        if @current_cart_page == '/cart'
            puts puts "Same URL"
        else
            puts "Wrong URL #{@current_product_page}"
        end
    end

    #all buttons in cart page and action click 
    def btn_cart_click(sbtn_cart_click)
        if sbtn_cart_click == 'escolher mais produtos'
            btn_more_products.click
        elsif sbtn_cart_click == 'finalizar compra topo'
            btn_finish_buy_top.click
        elsif (sbtn_cart_click == 'mais') || (sbtn_cart_click == 'menos')
            btn_more_less.click
        elsif sbtn_cart_click == 'inserir'
            btn_descount_code.click
        elsif sbtn_cart_click == 'calcular'
            btn_post_code.click
        elsif sbtn_cart_click == 'finalizar compra'      
            btn_finish_buy_middle.click
        elsif sbtn_cart_click == 'compra rapida' 
            btn_fast_buy.click
        else
            puts ""
        end              
    end

    # def fill_fields_cart(sfill_fields_cart, sfill_fields_cart_value)
    #     case sfill_fields_cart
    #     when 'delivery code'
    #         btn_post_code.set(sfill_fields_cart_value)
    #     when 'descount code'
    #         btn_descount_code.set(sfill_fields_cart_value)
    #     else
    #         puts ""
    #     end
    # end
    def validate_item_cart_remove

        visit 'https://www.passarela.com.br/cart'
        #@remove_btn = find(:css, '.cart-item-options:nth-child(1)')
        #@remove_btn.click        
        if remove_btn.visible? 
            sleep(2)
            puts "if"
            remove_btn.click
           
        else
            puts "no itens in cart"
        end
           
    end
end