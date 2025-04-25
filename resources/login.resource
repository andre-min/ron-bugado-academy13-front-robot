*** Settings ***

Resource    ../base.resource

*** Keywords ***

Verificar se a mensagem: "${text}"
    [Documentation]    Validar mensagem de error
    Wait Until Element Is Visible    ${msg_error}    timeout=2s
    Element Text Should Be           ${msg_error}    ${text}

Acessar a pagina de "${text}" Qa.Coders Academy
    [Documentation]    Acessa a tela de login
    Go To    url=${BASE_URL}
    Wait Until Page Contains    text=${text}    timeout=5s

Preencher os campos obrigatorios "${email}" "${senha}"
    [Documentation]    Preenche os campo obrigatórios  
    Wait Until Element Is Visible          ${input_mail}    timeout=2s
    Input Password    ${input_mail}        ${Email}       
    Wait Until Element Is Visible          ${input_password}
    Input Password    ${input_password}    ${senha}

Clicar no botao "${text}"
    Wait Until Element Is Visible    //button[contains(text(), '${text}')]    timeout=2s
    Click Button    //button[contains(text(), '${text}')]

Ao logar na home verificar se logo Qa.Coders Academy está visivel
    [Documentation]    Verificar logo está visivel
    Wait Until Element Is Visible    ${LOGO_HOME}    timeout=2s

Verificar se está apresentando mensagem de campo obrigatorio "${text}"
    Wait Until Element Is Visible    //p[contains(., '${text}')]    timeout=2s
    Element Text Should Be    //p[contains(., '${text}')]    ${text}

