*** Settings ***
Library    SeleniumLibrary    timeout=10s
Resource    ../../Elements/Main_Elements.resource
Variables   ../../Utils/utils.py

*** Variables ***
${email}     pedro@bola${randomNumber()}.com
${name}      pedro
*** Keywords ***
Dado que clico para fazer o cadastro
    Click Element    ${Login.BtnSignUp}
Quando preencho o formulario de cadastro
    Input Text           ${Login.NameInput}        ${name}
    Input Text           ${Login.EmailInput}       ${email}
    Input Password       ${Login.PasswordInput}    pedro123
    Click Element        ${Login.SignUp}
E preencho o login
    Input Text           ${Login.EmailInput}        ${email}
    Input Password       ${Login.PasswordInput}     pedro123
    Click Element        ${Login.BtnSignIn}

E faço o login
    Input Text           ${Login.EmailInput}        pedro@bola0.com
    Input Password       ${Login.PasswordInput}     pedro123
    Click Element        ${Login.BtnSignIn}
Entao faço login com sucesso
    Page Should Contain Element    //div[text()='Bem vindo, ${name}!']

Dado que faço o cadastro e login
    Dado que clico para fazer o cadastro
    Quando preencho o formulario de cadastro
    E preencho o login
    Entao faço login com sucesso

Dado que faço o login
    E faço o login
    Entao faço login com sucesso
