*** Settings ***
Resource    ../base.resource
Resource    variavel.resource


*** Keywords ***
# Abrir navegador
#     Open Browser    ${BASE_URL}    browser=${BROWSER}    #options=add_argument("--headless")
#     Maximize Browser Window

# Fechar o navegador
#     Close Browser

Selecionar entidade
    [Documentation]    Acessar tela de listagem de entidade
    [Arguments]    ${entidade}
    Click Element                    ${link_cadastro}
    Wait Until Element Is Visible    xpath=// * [@href="/${entidade}"]
    Click Element                    xpath=// * [@href="/${entidade}"]
    Sleep    1s

    ${current_url}    Get Location
    Should Be Equal    ${current_url}    ${BASE_URL}/${entidade}
    
Cadastrar entidade
    [Documentation]    Cadastro de entidade: [Empresa, Cliente, Usuários, Diretorias, Centro de custo, Departamento]
    [Arguments]    
    ${letras}    Generate Random String    length=2    chars=[LETTERS]
    ${letras_minusculas}    Convert To Lower Case    ${letras}
    

New register company
    [Documentation]    Keyword utilizado para cadastro de uma nova empresa
    [Arguments]    
    ...    ${companyName}=    
    ...    ${companyFantasyName}=    
    ...    ${companyMail}=    
    ...    ${companyCNPJ}=    
    ...    ${companyTelephone}=    
    ...    ${companySericeDescription}=    
    ...    ${companyFullNameResponsible}=
    ...    ${companyZipCode}=
    ...    ${companyCountry}=
    ...    ${companyCity}=
    ...    ${companyState}=
    ...    ${companyDistrict}=
    ...    ${companyStreet}=
    ...    ${companyNumber}=
    ...    ${companyComplement}=
    
    ${company_faker}    Get Fake Company
    Wait Until Element Is Visible        ${btn_novo_cadastro}
    Click Button                         ${btn_novo_cadastro}
    Wait Until Page Contains    text=Dados da Empresa
    Input Text    locator=${company_name}                           text=${company_faker}[nome_empresa]
    Input Text    locator=${company_fantasy_name}                   text=${company_faker}[nome_empresa]
    Input Text    locator=${company_mail}                           text=${company_faker}[email]
    Input Text    locator=${company_cnpj}                           text=${company_faker}[cnpj]
    Input Text    locator=${company_Telephone}                      text=${company_faker}[telefone]
    Input Text    locator=${company_service_description}            text=${company_faker}[descricao]
    Input Text    locator=${company_fullName_responsible}           text=${company_faker}[responsavel]
    Input Text    locator=${zipCode}                                text=${company_faker}[zipCode]
    Input Text    locator=${country}                                text=${company_faker}[country]
    Input Text    locator=${city}                                   text=${company_faker}[city]
    Input Text    locator=${state}                                  text=${company_faker}[state]
    Input Text    locator=${district}                               text=${company_faker}[district]
    Input Text    locator=${street}                                 text=${company_faker}[street]
    Input Text    locator=${number}                                 text=${company_faker}[number]
    Input Text    locator=${complement}                             text=Qualquer coisa

    Click Button    ${btn_save}

New register client
    [Documentation]    Keyword utilizado para cadastro de cliente
    ${person}     Get Fake Person
    ${company}    Get Fake Company
    Wait Until Element Is Visible        ${btn_novo_cadastro}
    Click Button                         ${btn_novo_cadastro}






Buscar Elemento Por Texto E Extrair Atributos
    [Arguments]    ${texto}

    ${elementos}=    Get WebElements    xpath=//*[contains(text(), "${texto}")]
    Should Be True    ${elementos}    Nenhum elemento com texto "${texto}" encontrado.
 
    ${element}=    Set Variable    ${elementos[0]}

    ${id}=         Get Element Attribute    ${element}    id
    ${name}=       Get Element Attribute    ${element}    name
    ${class}=      Get Element Attribute    ${element}    class
    ${tag}=        Get Element Attribute    ${element}    tag
    ${xpath}=      Get Element Attribute    ${element}    xpath
    ${css}=        Get Element Attribute    ${element}    css
    

    Log To Console    -------------------------
    Log To Console    ID: ${id}
    Log To Console    NAME: ${name}
    Log To Console    CLASS: ${class}
    Log To Console    TAG: ${tag}
    Log To Console    XPATH: ${xpath}
    Log To Console    CSS: ${css}
    Log To Console    -------------------------


