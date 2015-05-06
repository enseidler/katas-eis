Feature: Shoot

  
  Background:
    Given a board with dimensions "5" x "5"
    And a larg ship in position "3:3"

 
  Scenario: Shoot and hit
    Given I shoot to position "3:3"
    Then  I get hit

  
  Scenario: Shoot and miss
    Given I shoot to position "3:2"
    Then I get water

  
  Scenario: Shoot and sunk
    Given I shoot to position "3:4"
    Then I get hit
    And I shoot to position "3:3"
    Then I get sunk

  @wip
  Scenario: Shoot outside of board
    When I shoot to position "5:5"
    Then I get error "Out of board!"
  
