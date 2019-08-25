@user_login_register
Feature: register an user

@pessoa_fisica
Scenario: Register an existent user Pessoa Fisica with success-Step by step
Given I am not logged in 
When I open the website
And I click in "minha conta"
And I click in "cadastre-se"
Then I check the register page is opening
When I select Pessoa Fisica 
And I fill all the fields 
And I select the checkbox
And I click in "salvar cadastro" 
Then I check that the register was not created 