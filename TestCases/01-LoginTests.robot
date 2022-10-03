*** Settings ***
Resource    ../Steps/Main_Steps.resource
Test Setup       Dado que entro no site usando o navegador chrome
Test Teardown    Fechar o navegador

*** Test Cases ***
1 - Criar conta e fazer login
    Dado que clico para fazer o cadastro
    Quando preencho o formulario de cadastro
    E preencho o login
    Entao faço login com sucesso

