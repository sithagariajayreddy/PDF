Feature: PDF Reader
  As a user
  I want to
  Read my pdf and later perform some actions


  Scenario: Read the pdf
    Given I have my pdf document
    When I read my pdf bdd-in-action
    Then the content should contains So what is this BDD thing?

  Scenario: Read the ruby cheat sheet pdf
    Given I have my pdf document
    When I read my pdf RubyCheat
    Then the content should have Ruby

  Scenario: Read and Compare the pdf
    Given I have my pdf document
    When I read my pdf something
    And I want to read something1
    Then the content should be same

  Scenario: Read and Compare the 2 non similar pdf
    Given I have my pdf document
    When I read my pdf something
    And I want to read something4
    Then the content should not be same

  Scenario: Read the pdf
    Given I have my pdf document
    When I read my pdf LT email
    Then I should see the pdf name