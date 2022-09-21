*** Settings ***
Resource    ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Variables ***

${BTN_REMOVE}=    id=io.qaninja.android.twp:id/btnRemove

*** Test Cases ***
Deve Remover o Capitão américa
   Go To Avenger List

    Swipe By Percent                 88.88    18.22    47.22    18.22
    Sleep    5
    Wait Until Element Is Visible    ${BTN_REMOVE}
    Click Element                    ${BTN_REMOVE}
    Sleep    5
  