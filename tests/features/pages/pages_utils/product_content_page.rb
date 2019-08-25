class Product < SitePrism::Page

    #btn
    element :btn_add_cart, 'button[id="cc-prodDetailsAddToCart"]'
    element :btn_fast_buy, 'button[id="btnCompraRapida"]'
    element :btn_write_review, 'button[id="yv-writereview"]'

    #select order products
    # element :select_list_sort,'select[id="CC-product-listing-sortby"]'
    # element :select_list_sort_lancamento, 'option[value="Lançamento novo a antigo"]'
    # element :select_list_sort_menor, 'option[value="Preço: do menor para o maior"]'
    # element :select_list_sort_maoir, 'option[value="Preço: do maior para o menor"]'
    # element :select_list_sort_promocao, 'option[value="Promoções"]'


    
    #choice a product in grid
    def choice_product_element
        #[0]first element [1]second element [2].....
        @choice_product_element = page.all(:css,'div[class="cc-item-imagem"]')[1].hover.click
    end

    #check the current page
    def validade_product_page
        @current_product_page = URI.parse(current_url).request_uri
        puts @current_product_page.to_s
        if @current_product_page.include?('produto/sandalia-salto-vizzano/')
            puts "Same URL"
        else
            puts "Wrong URL #{@current_product_page}"
        end
    end

    #select the product details
    def choice_product_details
        #choice color 
        @choice_product_details_color = page.all(:css, 'a[class="a-img-position-bottom"]')[0].click
        #choice size
        @choice_product_details_size = page.all(:css, 'a[class="btn btn-default btn-xs"]')[0].click
    end

    #all button in product page
    def btn_click(sbtn_click)
        case sbtn_click
        when 'adicionar a sacola'
            btn_add_cart.click
        when 'compra rapida'
            btn_fast_buy.click
        when 'escrever avaliação'
            btn_write_review.click
        else
            puts ""
        end
    end

    def list_sort_by(slist_sort_by)
        case slist_sort_by
        when 'lancamento'
            @select_list_sort_lancamento = find('#CC-product-listing-sortby-controls option:nth-child(1)').select_option
        when 'menor'
            @select_list_sort_lancamento = find('#CC-product-listing-sortby-controls option:nth-child(2)').select_option
        when 'maior'
            @select_list_sort_lancamento = find('#CC-product-listing-sortby-controls option:nth-child(3)').select_option
        when 'promocao'
            @select_list_sort_lancamento = find('#CC-product-listing-sortby-controls option:nth-child(4)').select_option
        else
            puts ""
        end
    end

    def mans_boot_page
        visit 'https://www.passarela.com.br/calcados-masculinos-bota'
    end
end
