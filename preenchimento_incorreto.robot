*** Settings ***

Library          SeleniumLibrary
Resource         setup_teardown.robot
Test Setup       Dado que eu acesse o Organo
Test Teardown    Fechar o navegador

*** Variables ***
${BOTAO_CARD}           id:form-botao
${OPCAO_PROGRAMACAO}    //option[contains(.,'Programação')]
${OPCAO_FRONT}          //option[contains(.,'Front-End')]
${OPCAO_DADOS}          //option[contains(.,'Data Science')]
${OPCAO_DEVOPS}         //option[contains(.,'Devops')]
${OPCAO_UX}             //option[contains(.,'UX e Design')]
${OPCAO_MOBILE}         //option[contains(.,'MOBILE')]
${OPCAO_INOVACAO}       //option[contains(.,'Inovação e Gestão')]

*** Test Cases ***
Verificar se quando um campo obrigatorio não for preenchido corretamente o sistema exibe uma mensagem de campo obrigatorio
    Dado que eu clique no botão criar card
    Então sistema deve apresentar mensagem de campo obrigatorio


*** Keywords ***

Dado que eu clique no botão criar card

    Click Element    ${BOTAO_CARD}

Então sistema deve apresentar mensagem de campo obrigatorio

    Element Should Be Visible    id:form-nome-erro
    Element Should Be Visible    id:form-cargo-erro
    Element Should Be Visible    id:form-times-erro