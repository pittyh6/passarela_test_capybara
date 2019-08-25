class Footer < SitePrism::Page
    
    #newsletter
    #category
    element :news_category, 'div[id="content-categorias"]'
    element :news_category_content, 'div[id="content"]'
    element :news_category_content_checkbox_woman, 'input[id="select-mulher"]'
    element :news_category_content_checkbox_man, 'input[id="select-homem"]'
    element :news_category_content_checkbox_woman, 'input[id="select-kids"]'
    #gender
    element :news_gender, 'select[id="genero"]'
    element :news_gender_female, 'option[value="F"]'
    element :news_gender_male, 'option[value="M"]'
    #email
    element :news_mail, 'input[id="email"]'
    #button send
    element :news_btn, 'input[id="submit"]'

    #footer options link
    #all coluns there the same name
    element :foot_option, 'div[class="col-lg-2 col-md-2 col-sm-2 col-xs-4"]'
    element :foot_option_ul, 'ul[class="ulFooter"]'
    element :foot_option_ul_li, 'a[href="#{foot_opton_link}"]' #?????

    #options to pay
    element :foot_payment_card, 'img[id="cc-payment-cartoes"]'
    element :foot_payment_boleto, 'img[id="cc-payment-boleto"]'
    element :foot_payment_debit, 'img[id="cc-payment-safety"]'

    #segurity_certify
    element :foot_certify_ra, 'img[alt="certificado ra 1000"]'
    element :foot_certify_lojaconf, 'img[alt="Loja Confiável"'
    element :foot_certify_siteseguro, 'img[alt="certificado SiteSeguro certisign"]'
    element :foot_certify_adyen, 'img[alt="certificado Adyen"]'
    element :foot_certify_ebit, 'a[title="Avaliado pelos consumidores"]'

    #buy by phone footer
    element :foot_buy_phone, 'a[title="Compre por Whatsapp"]'
end