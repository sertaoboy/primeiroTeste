*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.magazineluiza.com.br/
${MENU_ELETRODOMESTICO}    (//a[@data-testid='link'][contains(.,'Eletrodomésticos')])[2]
${HEADER_ELETRODOMESTICO}    //h1[@data-testid='main-title'][contains(.,'Eletrodomésticos')]
#${TEXTO_HEADER_ELETRODOMESTICO}    Eletrodomesticos
#${TITULO}    Eletrodomésticos | Magazine Luiza

*** Keywords ***

Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window
Fechar o navegador
    Close Browser    

Acessar a home page do site magazineluiza.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRODOMESTICO}

Entrar no menu Eletrodomesticos
    Click Element    locator=${MENU_ELETRODOMESTICO}

Verificar se aparece a palavra "Eletrodomesticos"
    #Wait Until Page Contains    text=${TEXTO_HEADER_ELETRODOMESTICO}
    Wait Until Element Is Visible   locator=${HEADER_ELETRODOMESTICO}

Verificar se aparece a frase "Eletrodomésticos | Magazine Luiza"
    Title Should Be    title=Eletrodomésticos | Magazine Luiza

Verificar se aparece a sessao "Ofertas do dia"
    Element Should Be Visible    locator=//a[@data-testid='link'][contains(.,'Ofertas do Dia')]

Digitar o nome do produto "Xbox Serie S" no campo de pesquisa
    Input Text    locator=//input[contains(@type,'search')]    text=Xbox Serie S

Clicar no botao pesquisa
    Press Key    locator=//svg[contains(@data-testid,'search-submit')]    key=return
#Verificar o resultado da pesquisa, se esta listando o produto pesquisado
    #Element Should Be Visible    locator=//img[contains(@alt,'Console Microsoft Xbox Series S 512GB Standard Branco')]
    

    