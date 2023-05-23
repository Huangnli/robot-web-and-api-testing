*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}                          chrome
${URL}                              https://www.amazon.com.br
${URL_ELETRONICOS}                  https://www.amazon.com.br/gp/browse.html?node=16209062011&ref_=nav_em__electronics_all__0_2_18_2
${MENU_TODOS}                       //i[contains(@class,'hm-icon nav-sprite')]
${HEADER_ELETRONICOS_TECNOLOGIA}    //h1[contains(.,'Eletrônicos e Tecnologia')]
${INPUT_CARRINHO}                   //input[contains(@name,'submit.add-to-cart')]
${SPAN_ADD_CARRINHO}                //span[contains(.,'Adicionado ao carrinho')]
${ITEM_REMOVIDA_MSG}                //div[@class='a-section ewc-item-remove-msg']
*** Keywords *** 
Abrir o navegador
    ${MyDesiredCapabilities}   Create Dictionary   firefox_binary=C:\XXXXX\Firefox.exe
    #Para navegador permaneça aberto utilize options=add_experimental_option("detach", True)
    Open Browser    browser=${BROWSER}    options=add_experimental_option("detach", True)
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    #Versões mais recentes do chromedriver fecha sozinho o browser após a execução.
    Close Browser 

Acessar a home page do site Amazon.com.br
    Go To                                  url=${URL}
    Wait Until Element Is Visible          ${MENU_TODOS}

Entrar no menu "Eletrônicos"
    Go To                                url=${URL_ELETRONICOS}

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains             ${FRASE}
    Wait Until Element Is Visible        ${HEADER_ELETRONICOS_TECNOLOGIA}

Verificar se o título da página fica "${TITULO}"
    Title Should Be         ${TITULO}

Verificar se aparece a categoria "${CATEGORIA}"
    Element Should Be Visible    //a[contains(@aria-label,'${CATEGORIA}')]

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    twotabsearchtextbox    ${PRODUTO}

Clicar no botão de pesquisa
    Click Element    nav-search-submit-button

Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    (//span[contains(.,'${PRODUTO}')])[2]

Adicionar o produto "${PRODUTO}" no carrinho
    Click Element                    (//span[contains(.,'${PRODUTO}')])[2]
    Wait Until Element Is Visible    ${INPUT_CARRINHO}
    Click Element                    ${INPUT_CARRINHO}

Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    Wait Until Element Is Visible    ${SPAN_ADD_CARRINHO}
    Element Should Be Visible        ${SPAN_ADD_CARRINHO}

Remover o produto "Console Xbox Series S" do carrinho
    Click Element    (//input[@title='Excluir'])[1]

Verificar se o carrinho fica vazio
    Wait Until Element Is Visible    ${ITEM_REMOVIDA_MSG}
    Element Should Be Visible        ${ITEM_REMOVIDA_MSG}
