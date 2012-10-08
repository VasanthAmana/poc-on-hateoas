Feature: Expose Meta Information
  In order to help consumers interpret the information
  As a RESTful service 
  I want to provide meta information about services hosted by me
  
  Scenario: Service Information
    Given I have resources named "account" and "user"
    When I go to home page
    Then I should see a service representing "account"
    And I should see a service representing "user"