*** Settings ***
Library  AppiumLibrary
Library  BuiltIn

*** Variable ***
${APPIUM_SERVER}=  http://127.0.0.1:4723/wd/hub
${ANDROID_PLAT_NAME}=  Android
${ANDROID_DEV_NAME}=  10.100.85.213:5555
${ANDROID_udid}=  10.100.85.213:5555
${ANDROID_PLAT_VER}=  11
${ANDROID_APP_PACKAGE}=  com.wdiodemoapp
${ANDROID_APP_ACTIVITY}=  com.wdiodemoapp.MainActivity
${ANDROID_APP}=  ${CURDIR}/../App/Android-NativeDemoApp-0.4.0.apk

*** Keywords ***
Open the Apps
  Log To Console  '    '
  Log To Console  Server  = ${APPIUM_SERVER}
  Log To Console  Device = ${ANDROID_DEV_NAME}
  Log To Console  OS_Device = ${ANDROID_PLAT_VER}
  Log To Console  PackageID = ${ANDROID_APP_PACKAGE}
  Log To Console  ActivityID = ${ANDROID_APP_ACTIVITY}
  Set Global Variable  ${ANDROID_DEV_NAME}


    open application
    ...   ${APPIUM_SERVER}
    ...   platformName=${ANDROID_PLAT_NAME}
    ...   appPackage=${ANDROID_APP_PACKAGE}
    ...   appActivity=${ANDROID_APP_ACTIVITY}
    ...   noReset=false
    ...   udid=${ANDROID_DEV_NAME}
    ...   automationName=uiautomator2

Teardown Test
  Close Application

Teardown Continue on failure
  Run Keyword And Continue On Failure       FAIL        SampleTest
  Log           Ini adalah test failure  
