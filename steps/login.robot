*** Settings ***

Library     SeleniumLibrary
Resource    ../global.robot

*** Keywords ***

Dado que eu acesso a página de login
    Abrir a pagina "/login"

Quando utilizo as credenciais corretas
    Input Text      name:username     Jorel
    Input Text      name:password     @Tauros9171
    Click Element   class:btn

Quando utilizo as credenciais incorretas
    Input Text      name:username     Abel
    Input Text      name:password     @Agumon2020
    Click Element   class:btn

Entao devo ver a mensagem "${mensagem}"
    Ver a mensagem "${mensagem}"
    Fechar o navegador

Entao devo ser levado ao dashboard
    Wait Until Page Contains    Logout
    Fechar o navegador
