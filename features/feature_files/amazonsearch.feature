Feature: Amazon Search functionality

    Scenario Outline: searching on Amazon
        Given a user goes to Amazon home page
        When user searches for <search_keyword>
        Then site should return result for <search_keyword>

    Examples:
    | search_keyword |
    | "mobile phones"|
    | "macbook" |