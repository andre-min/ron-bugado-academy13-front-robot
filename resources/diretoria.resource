*** Settings ***

Resource    ../base.resource

*** Variables ***
${field_overflow_msg}                class=css-1usv8td
${diretoria}                         id=Diretorias
${board_name}                        id=boardName

*** Keywords ***

Clicar em cadastro
    Wait Until Element Is Visible    ${LINK_CADASTRO}
    Click Element    ${LINK_CADASTRO}

Selecionar diretoria
    Wait Until Element Is Visible    ${diretoria} 
    Click Element    ${diretoria}

Clicar no botao novo cadastro
    Wait Until Element Is Visible    ${BTN_NOVO_CADASTRO}
    Click Button    ${BTN_NOVO_CADASTRO}
    Wait Until Element Is Visible    ${H5_NOVO_CADASTRO}

Preencher formulario cadastro de diretoria
    [Arguments]    ${text}=
    ${random_name}    Generate Random String        length=7    chars=[LETTERS]
    ${random_text}    convert to lower case         ${random_name}
    ${name}    Set Default If Empty    ${text}    ${random_text}
    Wait Until Element Is Visible    ${board_name}
    Input Text    ${board_name}    ${name}


Clicar botao salvar
    Wait Until Element Is Visible    ${btn_save}
    Click Button    ${btn_save}

Verificar a mensagem "${text}"
    Element Text Should Be    ${field_overflow_msg}    ${text}
    