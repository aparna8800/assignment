Feature: google search
	@search
    Scenario: search duck in google
    When I open google website
    And I search duck in google page
    Then I verify duck search results on google page