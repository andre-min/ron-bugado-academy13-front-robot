*** Settings ***
Test Setup    Abrir navegador
Test Teardown    Fechar navegador

Resource    ../base.resource

*** Test Cases ***
Link centro de custo
    ${env}    Carregar Variaveis Ambiente   
    Acessar a pagina de "Login" Qa.Coders Academy
    Preencher os campos obrigatorios "${env["MAIL"]}" "${env["PASSWORD"]}"
    Clicar no botao "Entrar"
    Ao logar na home verificar se logo Qa.Coders Academy está visivel
    Clicar em cadastro
    Verificar link Centro de custo