*** Settings ***

Resource    ../base.resource

Test Setup    Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
CT01 - Login de Sucesso
    ${env}    Carregar Variaveis Ambiente   

    Acessar a pagina de "Login" Qa.Coders Academy
    Preencher os campos obrigatorios "${env["MAIL"]}" "${env["PASSWORD"]}"
    Clicar no botao "Entrar"
    Ao logar na home verificar se logo Qa.Coders Academy está visivel
    Capture Page Screenshot
  
    
CT02 - Login com email inválido e senha válida
    ${env}    Carregar Variaveis Ambiente  
    Acessar a pagina de "Login" Qa.Coders Academy
    Preencher os campos obrigatorios "emailInvalidoParaTeste@gmail.com.br" "${env["PASSWORD"]}"
    Clicar no botao "Entrar"
    Verificar se a mensagem: "E-mail ou senha informados são inválidos."
    Capture Page Screenshot

CT03 - Login com email válido e senha inválida
    ${env}    Carregar Variaveis Ambiente  
    Acessar a pagina de "Login" Qa.Coders Academy
    Preencher os campos obrigatorios "${env["MAIL"]}" "123456789@Test"
    Clicar no botao "Entrar"
    Verificar se a mensagem: "E-mail ou senha informados são inválidos."
    Capture Page Screenshot
    
CT04 - Login com email em branco e senha válida
    ${env}    Carregar Variaveis Ambiente  
    Acessar a pagina de "Login" Qa.Coders Academy
    Preencher os campos obrigatorios "" "${env["PASSWORD"]}"
    Clicar no botao "Entrar"
    Verificar se está apresentando mensagem de campo obrigatorio "O email é obrigatório"
    Capture Page Screenshot

CT05 - Login com email válido e senha em branco
    ${env}    Carregar Variaveis Ambiente  
    Acessar a pagina de "Login" Qa.Coders Academy
    Preencher os campos obrigatorios "${env["MAIL"]}" ""
    Clicar no botao "Entrar"
    Verificar se está apresentando mensagem de campo obrigatorio "A senha é obrigatória"
    Capture Page Screenshot

CT06 - Login com email em branco e senha em branco
    ${env}    Carregar Variaveis Ambiente  
    Acessar a pagina de "Login" Qa.Coders Academy
    Preencher os campos obrigatorios "" ""
    Clicar no botao "Entrar"
    Verificar se está apresentando mensagem de campo obrigatorio "O email é obrigatório"
    Verificar se está apresentando mensagem de campo obrigatorio "A senha é obrigatória"
    Capture Page Screenshot