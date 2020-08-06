Feature:
# Success scenario
        Scenario: Sending request with basic auth authentication with Invalid Client Credentials
            Given I have basic authentication credentials lOSZTPoUKzIKaaLw6PL1g5VYhWN3sbqk and tmATJA3EVMNFoTOY
            When I GET /generateaccesstoken?grant_type=client_credentials
            Then response code should be 200
 
        Scenario: Using valid access token
            Given I set headers to
                |name         |value                              |
                |Authorization|Bearer RspNKJtadGtFTCk4g3mbw1kI3jlP|
            When I GET /verifyaccesstoken
            Then response code should be 200
 
#Fail Test Scenarios
        Scenario: Sending request with basic auth authentication
            Given I have basic authentication credentials saleemaj and sQw5hdlekfdpo
            When I GET /generateaccesstoken?grant_type=client_credentials
            Then response code should be 401        
        
        Scenario: Using access token
            Given I set headers to
                |name         |value     |
                |Authorization|Bearer a|
            When I GET /verifyaccesstoken
            Then response header Content-Type should be application/json
            Then response code should be 401