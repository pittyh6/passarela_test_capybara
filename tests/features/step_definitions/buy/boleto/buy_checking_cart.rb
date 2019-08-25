When("I select {string} in navbar") do |string|
  header.select_item_navbar(string)
end

When("I select an item") do
  product.choice_product_element
  product.validade_product_page
  product.choice_product_details
end

When("I click {string}") do |string|
  product.btn_click(string)
end

When("I click {string} in product") do |string|
  header.my_cartdp(string)
end

Then("I check the {string} page is opening") do |string|
  cart.validade_cart_page
end

When("I click {string} in cart") do |string|
  cart.btn_cart_click(string)
end

When("I fill all the {string} in cart") do |string|  
  login.fill_login_default_box
  login.btn_login_box('entrar')
end

When("I fill all the {string} in checkout correctly") do |string|
  checkout.fill_checkout_delivery 
end

Then("I click {string} new address in checkout") do |string|
  checkout.btn_checkou_click(string)
end

Then("I click {string} in checkout") do |string|
  checkout.btn_checkou_click(string)
end
When("I select {string} as payment method in checkout") do |string|
  checkout.nav_payment_method_checkout_click(string)
end  

Then("I check that the purchase was successfully completed") do
  confirmation.validade_confirmation_page
end
