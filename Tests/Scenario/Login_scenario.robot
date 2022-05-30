*** Settings ***
Resource        ${EXECDIR}/Tests/Step/Login_step.robot
Resource        ${EXECDIR}/Resources/Common/Android_config.robot
Library         TestRailAPIClient    https://dummylinka.testrail.io    ivanlinkajatest@gmail.com    lks390qsenlpFf0u88So    1

Test Teardown   Teardown test
Test Setup      Android_config.Open the Apps   

Force Tags      test



*** Test Cases ***
User successfull login app
  [Tags]    test_case_id=1   critical standard
  Given User open app
  When User fill username and password
  Then User sucessfull login