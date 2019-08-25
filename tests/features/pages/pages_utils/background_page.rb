class BackGround < SitePrism::Page

       
    
    def login
        @login ||= Login.new
    end
    #login backgroun
    def logged_in_background
        login.fill_login_default_box
        login.btn_login_box('entrar')
    end

    #add product in cart
    def add_product_in_cart_background
        product.list_sort_by(string)
        product.choice_product_element
        product.choice_product_details
        product.btn_click('adicionar a sacola')
        header.my_cartdp('ver sacola')
    end

    
end