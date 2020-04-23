*** Settings ***

Library     SeleniumLibrary
Resource    ../resources/defaults.robot

*** Keywords ***

Dado que eu acesso a página de login
    Abrir a pagina "/login"

Quando utilizo as credenciais corretas
    Input Text      name:username     Jorel
    Input Text      name:password     @Tauros9171
    Click Element   class:btn

Entao devo ser levado ao dashboard
    Wait Until Page Contains    Logout
    Fechar o navegador
