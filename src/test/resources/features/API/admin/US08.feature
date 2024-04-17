#Reporter : Reyyan Mert
  Feature: As an administrator, I should be able to access detailed information about the holiday with the specified id number via
    API connection.
    @wip
  Scenario Outline: When a GET request containing valid authorization credentials and the holiday id data for the desired
  detailed information is sent to the /api/holidayDetails endpoint, the expected status code returned should be 200,
  and the message in the response body should confirm: "success".


    * The api user constructs the base url with the "admin" token.
    * The api user sets "api/holidayDetails" path parameters
    * The api user prepares a GET request containing the holiday <id> for which details are to be accessed, to send to the api holidayDetails endpoint.
    * The api user sends a GET request and saves the response returned from the api holidayDetails endpoint.
    * The api user verifies that the status code is 200
    * The api user verifies that the message information in the response body is "success"
    * The api user verifies the content of the data <id>, "<year>", "<name>", <type>, "<date>","<created_at>","<updated_at>" in the response body.

    Examples:
     |id | id | year   |               name                      |type| date     | created_at                | updated_at                |
     | 0 | 3  | 2023   |23 Nisan Ulusal Egemenlik ve Çocuk Bayram| 0  |2023-04-23|2024-03-12T15:32:29.000000Z|2024-03-12T15:32:29.000000Z|