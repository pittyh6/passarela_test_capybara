#Background
Given("I am logged in") do
    freightSulSuldeste.load
    background.logged_in_background
    sleep(5)
end

#steps

Given("Does not have an item in cart") do
    cart.validate_item_cart_remove
end
Given("I am in product page") do
    freightSulSuldeste.open_prod_page
end
Given("I am in mans boot product page") do
    product.mans_boot_page
end

When("I select an item {string} 99,99") do |string|
    product.list_sort_by(string)
    product.choice_product_element
    product.choice_product_details
    product.btn_click('adicionar a sacola')
    header.my_cartdp('ver sacola')
end
When("I put in delivery code a sudeste code") do 
    freightSulSuldeste.fill_post_code_sudeste
end
When("I put in delivery code a sul code") do
    freightSulSuldeste.fill_post_code_sul
end

Then("I check the delivery price for sul is {int},{int} for item less {int},{int}") do |int, int2, int3, int4|
    @delivery_value = find(:css, 'span[id="CC-cartShippingDetails-shippingOptionPrice-Expresso|2"]')
    expect(@delivery_value.text).to eql "R$38,43"
end

Then("I check the delivery price for sul is {int},{int} for item equal {int},{int}") do |int, int2, int3, int4|
    @delivery_value = find(:css, 'span[id="CC-cartShippingDetails-shippingOptionPrice-Expresso|2"]')
    expect(@delivery_value.text).to eql "R$41,27"
end

Then("I check the delivery price for sul is {int},{int} for item maior {int},{int}") do |int, int2, int3, int4|
    @delivery_value = find(:css, 'span[id="CC-cartShippingDetails-shippingOptionPrice-Expresso|2"]')
    expect(@delivery_value.text).to eql "R$44,27"
end
Then("I check the delivery economyc price for sul is {int},{int} for item maior {int},{int}") do |int, int2, int3, int4|
    @delivery_value = find(:css, 'span[id="CC-cartShippingDetails-shippingOptionPrice-Econômico|1"]')
    expect(@delivery_value.text).to eql "R$0,00"
end


Then("I check the delivery price is {int},{int} for item less {int},{int}") do |int, int2, int3, int4|
    @delivery_value = find(:css, 'span[id="CC-cartShippingDetails-shippingOptionPrice-Expresso|2"]')
    expect(@delivery_value.text).to eql "R$8,36"
end
Then("I check the delivery price is {int},{int} for item equal {int},{int}") do |int, int2, int3, int4|
    @delivery_value = find(:css, 'span[id="CC-cartShippingDetails-shippingOptionPrice-Expresso|2"]')
    expect(@delivery_value.text).to eql "R$10,85"
end
Then("I check the delivery price is {int},{int} for item maior {int},{int}") do |int, int2, int3, int4|
    @delivery_value = find(:css, 'span[id="CC-cartShippingDetails-shippingOptionPrice-Expresso|2"]')
    expect(@delivery_value.text).to eql "R$0,00"
end