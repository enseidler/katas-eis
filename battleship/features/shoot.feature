Feature: Shoot

  
  Background:
    Given a board with dimensions "5" x "5"
    And a larg ship in position "3:3"


  @wip
  Scenario: Shoot and hit
    Given I shoot to position "3:3"
    Then  I get hit