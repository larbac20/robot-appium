*** Settings ***

Resource    ../resources/base.robot

*** Test Cases ***

Deve abrir a tela principal
    Open Application    http://localhost:4723/wd/hub    automationName=UiAutomator2    platformName=Android    deviceName=emulator    app=${EXECDIR}/app/twp.apk   udid=emulator-5554
    Wait Until Page Contains    Training Wheels Protocol    5
    Wait Until Page Contains    Mobile Version
    Close Application

                    
   
