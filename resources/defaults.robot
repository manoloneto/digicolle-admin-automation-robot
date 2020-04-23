*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Abrir a pagina "${pagina}"
    Open Browser    http://digicolle-dsv.hillstech.co/admin${pagina}    chrome

Fechar o navegador
    Close Browser