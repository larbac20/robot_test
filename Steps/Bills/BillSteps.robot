*** Settings ***
Library    SeleniumLibrary    timeout=10s
Resource    ../Main_Steps.resource
Resource    ../../Elements/Main_Elements.resource
Variables   ../../Utils/utils.py

*** Variables ***
*** Keywords ***
E cadastro uma nova conta
    Input Text        ${Login.NameInput}  Conta ${randomNumber()}
    Click Element     ${Bill.SaveButton}

Quando cadastro uma nova conta
    Input Text        ${Login.NameInput}  Conta ${randomNumber()}
    Click Element     ${Bill.SaveButton}
Entao a conta deve ser cadastrada
    Page Should Contain Element    ${Bill.BillCreateMsg}

E crio uma nova conta
    Quando clico para cadastrar uma nova conta
    E cadastro uma nova conta
    Entao a conta deve ser cadastrada

Dado crio uma nova conta
    Quando clico para cadastrar uma nova conta
    E cadastro uma nova conta
    Entao a conta deve ser cadastrada
Quando deleto a conta
    Click Element    ${Bill.DeleteBill}
Entao a conta é deletada
    Page Should Contain Element    ${Bill.BillDeleteMsg}
Quando edito a conta
    Click Element    ${Bill.EditBill}
    Input Text       ${Login.NameInput}    TestEdit
    Click Element    ${Bill.SaveButton}
Entao a conta e editada
    Page Should Contain Element    ${Bill.BillEditMsg}
E excluo a conta editada
    Click Element    ${Bill.DeleteEditBill}
    Page Should Contain Element    ${Bill.BillDeleteMsg}
E excluo a conta
    Click Element    ${Bill.DeleteBill}
    Page Should Contain Element    ${Bill.BillDeleteMsg}