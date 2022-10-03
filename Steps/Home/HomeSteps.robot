*** Settings ***
Library    SeleniumLibrary    timeout=10s
Resource    ../../Elements/Main_Elements.resource

*** Keywords ***
Quando clico para cadastrar uma nova conta
    Click Element    ${Home.Bills}
    Click Element    ${Home.AddBill}
Dado clico para cadastrar uma nova conta
    Click Element    ${Home.Bills}
    Click Element    ${Home.AddBill}