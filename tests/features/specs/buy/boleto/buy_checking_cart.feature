@buy
Feature: Buy an item

Scenario: buy item with login in cart
Given I am not logged in 
When I select "woman" in navbar
And I select an item
And I click "adicionar a sacola"
And I click "ver sacola" in product
Then I check the "cart" page is opening
When I click "finalizar compra" in cart
And I fill all the "login fields" in cart
And I click "entrar" in cart
#Then I check I am logged 
When I click "finalizar compra" in cart
When I click "novo endereco" in checkout
And I fill all the "delivery fields" in checkout correctly
And I click "salvar" new address in checkout
And I click "continuar" in checkout
When I select "boleto bancario" as payment method in checkout
And I click "finalizar" in checkout
Then I check that the purchase was successfully completed
