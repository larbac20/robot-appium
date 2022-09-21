*** Settings ***
Resource    ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Cases ***

Deve Realizar um clique simples
    [Tags]    short

    Go to Short Click

    Click Element                id=io.qaninja.android.twp:id/short_click

    Wait Until Page Contains     Isso é um clique simples


Deve Realizar um clique Longo
    [Tags]    long

    Go to long Click

    Long Press                  id=io.qaninja.android.twp:id/long_click    1000

    Wait Until Page Contains    CLIQUE LONGO OK


