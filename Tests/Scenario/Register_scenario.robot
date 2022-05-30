*** Settings ***
Resource        ${EXECDIR}/Tests/Step/Register_step.robot
Resource        ${EXECDIR}/Resources/Common/Android_config.robot

Test Teardown   Teardown test
Test Setup      Android_config.Open the Apps   

Force Tags      testReg

*** Test Cases ***
User successfull register app
  [Tags]    test_case_id=2   critical standard
  Given User open app
  When User fill username,password and re-password
  Then User sucessfull register