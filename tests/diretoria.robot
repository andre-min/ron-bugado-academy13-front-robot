*** Settings ***
Test Setup    Abrir navegador
Test Teardown    Fechar navegador

Resource         ../base.resource

*** Test Cases ***

Cadastrar diretoria com sucesso enviando nome da diretoria
    ${env}    Carregar Variaveis Ambiente   
    Acessar a pagina de "Login" Qa.Coders Academy
    Preencher os campos obrigatorios "${env["MAIL"]}" "${env["PASSWORD"]}"
    Clicar no botao "Entrar"
    Ao logar na home verificar se logo Qa.Coders Academy está visivel
    Clicar em cadastro
    Selecionar diretoria
    Clicar no botao novo cadastro
    Preencher formulario cadastro de diretoria    Nova Diretoriaaa
    Capture Page Screenshot
    Clicar botao salvar

Cadastrar diretoria com sucesso gerando nome randomico
    ${env}    Carregar Variaveis Ambiente   
    Acessar a pagina de "Login" Qa.Coders Academy
    Preencher os campos obrigatorios "${env["MAIL"]}" "${env["PASSWORD"]}"
    Clicar no botao "Entrar"
    Ao logar na home verificar se logo Qa.Coders Academy está visivel
    Clicar em cadastro
    Selecionar diretoria
    Clicar no botao novo cadastro
    Preencher formulario cadastro de diretoria
    Capture Page Screenshot
    Clicar botao salvar

Cadastrar diretoria com sucesso enviando nome da diretoria de 50 caracteres
    ${env}                  Carregar Variaveis Ambiente   
    ${letras}               Generate Random String    length=4    chars=[LETTERS]
    ${letras_minusculas}    Convert To Lower Case     ${letras}
    
    Acessar a pagina de "Login" Qa.Coders Academy
    Preencher os campos obrigatorios "${env["MAIL"]}" "${env["PASSWORD"]}"
    Clicar no botao "Entrar"
    Ao logar na home verificar se logo Qa.Coders Academy está visivel
    Clicar em cadastro
    Selecionar diretoria
    Clicar no botao novo cadastro
    Preencher formulario cadastro de diretoria    Sustentabilidade e Inovações para um Futuro Me${letras_minusculas}
    Capture Page Screenshot
    Clicar botao salvar


Cadastrar diretoria com sucesso enviando nome da diretoria de 51 caracteres
    ${env}    Carregar Variaveis Ambiente   
    Acessar a pagina de "Login" Qa.Coders Academy
    Preencher os campos obrigatorios "${env["MAIL"]}" "${env["PASSWORD"]}"
    Clicar no botao "Entrar"
    Ao logar na home verificar se logo Qa.Coders Academy está visivel
    Clicar em cadastro
    Selecionar diretoria
    Clicar no botao novo cadastro
    Preencher formulario cadastro de diretoria    Sustentabilidade e Inovações para um Futuro Melhors
    Capture Page Screenshot
    Verificar a mensagem "O campo diretoria pode ter no máximo 50 caracteres"
