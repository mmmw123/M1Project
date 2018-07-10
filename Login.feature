Feature: Login
  This is to test the login page of giftrete.com

  Background:
    Given that I navigate to giftrete.com
    When I click on login


  Scenario: Valid Login
    And I entered valid email
    And I entered correct password
    And I click on secure sign in button
    Then I should be logged in


  Scenario: Login with facebook
    And I clicked on sign in with facebook
    And I entered valid email
    And I entered correct password
    And I click on login button
    Then I should be logged in


  Scenario: Login with Google
    And I clicked on sign in with google
    And I entered valid email
    And I entered correct password
    And I click on login button
    Then I should be logged in


  Scenario: Login with invalid email
    And I entered invalid email
    And I entered the password
    And I click on secure sign in button
    Then I should not be logged in


  Scenario: Login with invalid password
    And I entered valid email
    And I entered invalid password
    And I click on secure sign in button
    Then I should not be logged in


  Scenario: Login with blank field
    And I omitted the email field
    And I entered the password
    And I click on secure sign in button
    Then I should not be logged in


  Scenario: Invalid Login with Parameters
    And I entered the username "kolausersXXXX"
    And I entered the password "kolapasswordXXXX"
    And I click on the login button
    Then I should not be logged in



