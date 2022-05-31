*** Settings ***
Resource        ${EXECDIR}/Tests/Step/Login_step.robot
Resource        ${EXECDIR}/Resources/Common/Android_config.robot

Test Teardown   Teardown test
Test Setup      Android_config.Open the Apps   



*** Test Cases ***
User successfull login app
  [Documentation]    Autotest documentation
  [Tags]    test_case_id=1   results
  Given User open app
  When User fill username and password
  Then User sucessfull login