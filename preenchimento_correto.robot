*** Settings ***
Library          SeleniumLibrary
Library          FakerLibrary    locale=pt_BR
Resource         setup_teardown.robot
Test Setup       Dado que eu acesse o Organo
Test Teardown    Fechar o navegador

*** Variables ***
${CAMPO_NOME}           id:form-nome
${CAMPO_CARGO}          id:form-cargo
${CAMPO_IMAGE}          id:form-imagem
${CAMPO_TIME}           class:lista-suspensa
${BOTAO_CARD}           id:form-botao
@{selecionar_times}     
...        //option[contains(.,'Programação')]
...        //option[contains(.,'Front-End')]
...        //option[contains(.,'Data Science')]
...        //option[contains(.,'Devops')]
...        //option[contains(.,'UX e Design')]
...        //option[contains(.,'Mobile')]
...        //option[contains(.,'Inovação e Gestão')]

*** Test Cases ***
Verificar se ao preencher os campos corretamente os dados são inseridos na lista e se um novo card é criado no time esperado
    Dado que preencha os campos do formulario
    E clique no botão criar card
    Então identificar o card no time esperado

Verificar se é possivel criar mais de um card se preenchermos os campos corretamente
    Dado que preencha os campos do formulario
    E clique no botão criar card
    Então identificar 3 cards no time esperado

verificar se é possivel criar um card para cada time disponivel se preenchermos os campos corretamente
    Dado que preencha os campos do formulario
    Então criar e identificar card em cada time disponivel

*** Keywords ***

Dado que preencha os campos do formulario
    ${Nome}          FakerLibrary.First Name
    Input Text       ${CAMPO_NOME}     ${Nome}
    ${Cargo}         FakerLibrary.Job
    Input Text       ${CAMPO_CARGO}    ${Cargo}
    ${Imagem}        FakerLibrary.Image Url    width=100    height=100
    Input Text       ${CAMPO_IMAGE}    ${Imagem}
    Click Element    ${CAMPO_TIME}
    Click Element    ${selecionar_times}[0]
    Sleep    10s

E clique no botão criar card
    Click Element    ${BOTAO_CARD}

Então identificar o card no time esperado
    Element Should Be Visible    class:colaborador
    Sleep    10s

Então identificar 3 cards no time esperado
    FOR    ${i}    IN RANGE    1    3
        Dado que preencha os campos do formulario
        E clique no botão criar card
        
    END
    Sleep    10s

Então criar e identificar card em cada time disponivel
    FOR    ${indice}    ${time}    IN ENUMERATE    @{selecionar_times}
        Dado que preencha os campos do formulario
        Click Element    ${time}
        E clique no botão criar card
        
    END
    Sleep    10s

    

