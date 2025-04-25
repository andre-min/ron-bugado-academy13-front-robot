*** Settings ***

Resource    resources/utils/customKeywords.resource
Resource    resources/centro_de_custo.resource
Resource    resources/login.resource
Resource    resources/diretoria.resource


Library    SeleniumLibrary
Library    String
Library    load_env.py
Library    libs/data_faker.py
*** Variables ***

${BASE_URL}              https://ron-bugado-front.qacoders.dev.br
${BROWSER}               chrome
 
${LINK_CADASTRO}                       id=Cadastros
${BTN_NOVO_CADASTRO}                   id=Novo Cadastro        
${H5_NOVO_CADASTRO}                    //h5[@class='css-np5g2k']