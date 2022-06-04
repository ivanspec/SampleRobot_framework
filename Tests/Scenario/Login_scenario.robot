*** Settings ***
Resource        ${EXECDIR}/Tests/Step/Login_step.robot
Resource        ${EXECDIR}/Resources/Common/Android_config.robot

Test Teardown   Teardown test
Test Setup      Android_config.Open the Apps   

Force Tags      test

*** Variables ***
@{id}      test1@    
...     test2@dispostable.com
...     test3@dispostable.com   

*** Test Cases ***     
User successfull login app
  Given User open app
  FOR    ${userID}     IN       @{id}
    TRY
      When User fill username and password      ${userID}
      Then User sucessfull login
    EXCEPT
      LOG    TestCase ${userID} ini error gan       WARN
    END
  END

