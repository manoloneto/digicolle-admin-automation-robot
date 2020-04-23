*** Settings ***

Library     SeleniumLibrary
Resource    ../steps/login.robot

*** Test Cases ***

Login com credenciais corretas
    Dado que eu acesso a página de login
    Quando utilizo as credenciais corretas
    Entao devo ser levado ao dashboard

Login com credenciais incorretas
    Dado que eu acesso a página de login
    Quando utilizo as credenciais incorretas
    Entao devo ver a mensagem "Usuário ou senha inválidos"