Feature: Registration
  This is to test the registration page of giftrete.com

  Background:
    Given that I navigate to giftrete.com
    When I click on Register


  Scenario: Valid Registration
    And I entered my first name
    And I entered my last name
    And I entered my email address
    And I created my password
    And I re-entered password into the confirm password field
    And I checked the captcha to validate
    And I clicked on sign up button
    Then I should be able to sign up


  @invalid
  Scenario: Registration with blank required field
    And I omitted my first name
    And I ommitted my last name
    And I omitted my email address
    And I created my password
    And I re-entered password into the confirm password field
    And I checked the captcha to validate
    And I clicked on sign up button
    Then I should not be able to sign up


  @invalid
  Scenario: Registration using invalid email
    And I entered my first name
    And I entered my last name
    And I entered invalid email address
    And I created my password
    And I re-entered password into the confirm password field
    And I checked the captcha to validate
    And I clicked on sign up button
    Then I should not be able to sign up


  @invalid
  Scenario: Registration with password mis-match
    And I entered my first name
    And I entered my last name
    And I entered my email address
    And I created my password
    And I entered a different password into the confirm password field
    And I checked the captcha to validate
    And I clicked on sign up button
    Then I should not be able to sign up

