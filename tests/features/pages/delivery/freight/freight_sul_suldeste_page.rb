class FreightSulSuldeste < SitePrism::Page
    set_url 'login'

    def open_prod_page
        visit 'https://www.passarela.com.br/barbie'
    end
   
    def fill_post_code_sudeste
        @post_code = "05844-150"
        @delivery_value = find(:css, 'input[id="CC-cartShippingDetails-szipcode"]')
        @delivery_value.set @post_code
    end
    def fill_post_code_sul
        @post_code = "96210-260"
        @delivery_value = find(:css, 'input[id="CC-cartShippingDetails-szipcode"]')
        @delivery_value.set @post_code
    end

    
end