*** Settings ***

Resource    ../../base.resource

*** Keywords ***

Abrir navegador
    Open Browser    browser=${BROWSER}    #options=add_argument("--headless")
    Maximize Browser Window

Fechar navegador
    Close All Browsers

Set Default If Empty
    [Arguments]    ${var}    ${default}
    ${result}=    Run Keyword If    '${var}' == ""    Set Variable    ${default}
    ...    ELSE    Set Variable    ${var}
    RETURN    ${result}
