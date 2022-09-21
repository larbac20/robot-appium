*** Settings ***
Resource    ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Cases ***

Deve Selecionar a opção Python
    Go to Radio Button
    
    ${element}=    Set Variable          xpath=//android.widget.RadioButton[contains(@text,"Python")]
        
    Click Element                        ${element}
    Wait Until Element Is Visible        ${element}
    Element Attribute Should Match       xpath=//android.widget.RadioButton[contains(@text,"Python")]    checked    true
