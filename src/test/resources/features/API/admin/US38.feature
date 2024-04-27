#Reporter : Murat Koparan
#US Priority : MEDIUM
  Feature: As an administrator, I should be able to access detailed information of the countries with the specified id number via API connection.

    Scenario: Detailed information of the country data with valid authorization credentials should be accessible via the API connection.
      * The api user constructs the base url with the "admin" token.
      * The api user sets "api/profile/countryStates" path parameters
      * The api user prepares a GETBODY request containing the id = 223 and records the response.
      * The api user verifies that the status code is 200
      * The api user verifies that the message information in the response body is "success"
      * The api user verifies the content of the data "Ankara" in the response body.

    Scenario Outline: The response of the customer data with invalid id  should indicate that there is no such customer.
      * The api user constructs the base url with the "<api>" token.
      * The api user sets "api/profile/countryStates" path parameters
      * The api user prepares a GETBODY request containing the id = <id> and records the response.
      * The api user verifies that the status code is <code>
      * The api user verifies that the message information in the response body is "<message>"
      Examples:
        |api    |id    |code|message         |
        |admin  |324235|404 |user not found  |
        |invalid|2     |401 |Unauthenticated.|