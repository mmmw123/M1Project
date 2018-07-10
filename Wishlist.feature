Feature: Wishlist
  This is to test the wishlist on giftrete.com

  Background:
    Given I navigate to giftrete site
    When I click on wishlist link
    And I click on create Wishlist


  Scenario: Wishlist for myself
    And I checked Myself
    And I entered name
    And I entered occassion
    And I entered event date
    And I selecte the type of product I want
    And I entered the description
    And I clicked on make it private
    And I clicked on browse to upload image
    And I validated the Captcha
    And I click save
    Then I should be able to save the page


  Scenario: Wishlist for A Friend
    And I checked A Friend
    And I entered name
    And I entered occassion
    And I entered event date
    And I selected the type of product I want
    And I entered the description
    And I clicked on make it private
    And I clicked on browse to upload image
    And I validated the Captcha
    And I click save
    Then I should be able to save the page


  Scenario: Wishlist without validating captcha
    And I checked A Friend
    And I entered name
    And I entered occassion
    And I entered event date
    And I selected the type of product I want
    And I entered the description
    And I clicked on make it private
    And I clicked on browse to upload image
    And I did not validate the Captcha
    And I click save
    Then I should not be able to save the page

  Scenario: Wishlist with blank field
    And I checked A Friend
    And I ommitted all required fields
    And I selected the type of product I want
    And I entered the description
    And I clicked on make it private
    And I clicked on browse to upload image
    And I did not validate the Captcha
    And I click save
    Then I should not be able to save the page