*** Settings ***

Library     SeleniumLibrary
Resource    ../steps/login.robot

*** Test Cases ***

Login com sucesso
    Dado que eu acesso a página de login
    Quando utilizo as credenciais corretas
    Entao devo ser levado ao dashboard