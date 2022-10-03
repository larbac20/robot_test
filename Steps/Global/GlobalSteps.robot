*** Settings ***

Library     SeleniumLibrary    timeout=10s
Resource    ../../Elements/Main_Elements.resource
Resource    ../Main_Steps.resource

*** Variables ***
${BROWSER}=    chrome

*** Keywords ***
Dado que entro no site usando o navegador ${BROWSER}
    Open Browser    https://seubarriga.wcaquino.me/login    ${BROWSER}
    Maximize Browser Window
Fechar o navegador
    Close Browser
First Setup
    Open Browser    https://seubarriga.wcaquino.me/login    ${BROWSER}
    Maximize Browser Window
    Dado que faço o login