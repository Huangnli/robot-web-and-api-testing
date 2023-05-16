*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                    https://www.amazon.com.br
${MENU_ELETRONICOS}       //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]

*** Keywords *** 
Abrir o navegador
    #Para navegador permaneça aberto utilize options=add_experimental_option("detach", True)
    Open Browser    browser=chrome    options=add_experimental_option("detach", True)
    Maximize Browser Window

Fechar o navegador
    #Versões mais recentes do chromedriver fecha sozinho o browser após a execução.
    Close Browser 

Acessar a home page do site Amazon.com.br
    Go To                            url=${URL}
    Wait Until Element Is Visible    ${MENU_ELETRONICOS}