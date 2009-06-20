Feature: Twitter Daemon

  So that I can demonstrate unbroken chain to the world
  As a Twitter Daemon
  I want to be able to collate them from Twitters search API

    Scenario: One page of search results

      Given a twitter search that produces only one page of search results
      When I process the results
      Then the data should be stored
      And I should make no requests for more data

    Scenario: More than one page of search results

      Given a twitter search that produces multiple pages of search results
      When I process the results
      Then the data should be stored
      And I should request the next page of data

    Scenario: No search results

      Given a twitter search that produces no search results
      When I process the results
      Then no data should be stored
      And I should make no requests for more data
