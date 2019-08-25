@freight_free
Feature: validate freight for sul and suldeste

Background:
Given I am logged in 

#-------------SUL--------------------
@freight_sul_pay
Scenario: freight for product price < 99.99
Given I am in product page 
When I select an item "menor" 99,99
Then I check the "cart" page is opening
#rio grande doo sul
When I put in delivery code a sul code 
And I click "calcular" in cart
Then I check the delivery price for sul is 38,43 for item less 99,99

@freight_sul_pay
Scenario: freight for product price = 99.99
Given Does not have an item in cart
And I am in product page 
When I select an item "maior" 99,99
Then I check the "cart" page is opening
#rio grande doo sul
When I put in delivery code a sul code 
And I click "calcular" in cart
Then I check the delivery price for sul is 41,27 for item equal 99,99

@freight_sul_free
Scenario: freight for product price > 99.99
Given Does not have an item in cart
And I am in mans boot product page 
When I select an item "maior" 99,99
Then I check the "cart" page is opening
#rio grande doo sul
When I put in delivery code a sul code 
And I click "calcular" in cart
Then I check the delivery price for sul is 44,27 for item maior 99,99
And I check the delivery economyc price for sul is 0,00 for item maior 99,99

#-------------SUDESTE--------------------
@freight_suldest_pay
Scenario: freight for product price < 99.99
Given Does not have an item in cart
And I am in product page 
When I select an item "menor" 99,99
Then I check the "cart" page is opening
#sao paulo/capital
When I put in delivery code a sudeste code 
And I click "calcular" in cart
Then I check the delivery price is 8,36 for item less 99,99

@freight_suldest_pay
Scenario: freight for product price = 99.99
Given Does not have an item in cart
And I am in product page 
When I select an item "maior" 99,99
Then I check the "cart" page is opening
#sao paulo/capital
When I put in delivery code a sudeste code 
And I click "calcular" in cart
Then I check the delivery price is 10,85 for item equal 99,99

@freight_suldest_free
Scenario: freight for product price > 99.99
Given Does not have an item in cart
And I am in mans boot product page 
When I select an item "maior" 99,99
Then I check the "cart" page is opening
#sao paulo/capital
When I put in delivery code a sudeste code 
And I click "calcular" in cart
Then I check the delivery price is 0,00 for item maior 99,99

