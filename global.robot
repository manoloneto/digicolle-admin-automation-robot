*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Abrir a pagina "${pagina}"
    Open Browser    http://digicolle-dsv.hillstech.co/admin${pagina}    chrome

Ver a mensagem "${mensagem}"
    Wait Until Page Contains    ${mensagem}

Fechar o navegador
    Close Browser