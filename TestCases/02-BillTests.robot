*** Settings ***
Resource    ../Steps/Main_Steps.resource
Test Setup       First Setup
Test Teardown    Fechar o navegador

*** Test Cases ***
1 - Cadastrar nova conta
    Dado clico para cadastrar uma nova conta
    Quando cadastro uma nova conta
    Entao a conta deve ser cadastrada
    E excluo a conta
    
2 - Deletar uma conta
    Dado crio uma nova conta
    Quando deleto a conta
    Entao a conta é deletada

3 - Editar uma conta
    Dado crio uma nova conta
    Quando edito a conta
    Entao a conta e editada
    E excluo a conta editada