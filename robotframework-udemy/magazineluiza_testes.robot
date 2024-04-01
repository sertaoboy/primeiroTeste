*** Settings ***
Documentation    Essa suite testa o site da magazineluiza.com.br 
Resource         magazineluiza_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador




*** Test Cases ***
Caso de teste #1 - Acesso ao menu "Eletrodomesticos"
    [Documentation]    Esse teste verfica o menu eletrodomesticos
    ...                e verifica a sessao ofertas do dia
    [Tags]             menus    categorias
    Acessar a home page do site magazineluiza.com.br
    Entrar no menu Eletrodomesticos
    Verificar se aparece a palavra "Eletrodomesticos"
    Verificar se aparece a frase "Eletrodomésticos | Magazine Luiza"
    Verificar se aparece a sessao "Ofertas do dia"
    

Caso de teste #2 - Pesquisa de produto
   [Documentation]    Esse teste verifica a busca de um produto
   [Tags]             busca_produtos    lista_busca
    Acessar a home page do site magazineluiza.com.br
    Digitar o nome do produto "Xbox Serie S" no campo de pesquisa
    Clicar no botao pesquisa
    #Verificar o resultado da pesquisa, se esta listando o produto pesquisado






