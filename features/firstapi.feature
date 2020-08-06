Feature:
    Test
 
    Scenario: Setting headers in GET request without Giving API key in queryparam
        Given I set User-Agent header to apickli
        When I GET /petstore
        Then response header Content-Type should be application/json
        Then response code should be 401
 
    Scenario: Setting headers in GET request with API key in queryparam
        Given I set User-Agent header to apickli
        When I GET /petstore?apikey=CQX1AzH2jS7SgBtksVJPTabl2thvWsyW
        Then response header Content-Type should be application/json
        Then response code should be 200