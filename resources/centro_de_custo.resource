*** Settings ***
Resource    ../base.resource
Resource    variavel.resource


*** Keywords ***
Verificar link Centro de custo
    Wait Until Element Is Visible    id=Centro de Custo
    Click Element                     id=Centro de Custo