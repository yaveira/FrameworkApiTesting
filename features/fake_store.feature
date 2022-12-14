# Created by yaveira at 25/08/2022

Feature: Product manager

Background: Background name
    Given que eu acesso a API de Produtos

@test
Scenario Outline: Consultar produtos
    When eu consulto todos os produtos
    Then devo visualizar o status code <status_code>
        | status_code |
        | 200         |
    And validar a quantidade de produtos igual a <quantidade_produto>
        | quantidade_produto |
        | 20                 |
    And validar o produto "<nome_produto>" com o valor "<valor_produto>"

    Examples:
        | nome_produto                                          | valor_produto |
        | SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/s   | 109           |


@test @wip
Scenario Outline: Criar produto
    When eu realizo o cadastro de um produto
    Then devo visualizar o status code <status_code>
        | status_code |
        | 200         |
    And validar o dado do produto cadastro
        | title   |
        | <title> |
    And validar o dado do produto cadastro
        | price   |
        | <price> |
    And validar o dado do produto cadastro
        | description   |
        | <description> |
    And validar o dado do produto cadastro
        | image   |
        | <image> |
    And validar o dado do produto cadastro
        | category   |
        | <category> |
    And validar o id do produto

    Examples:
        | title          | price  | description              | image                  | category  |
        | carro          | 8000.8 | carro palio              | teste                  | veiculos  |
        | iphone 12 64GB | 5000.5 | Iphone 12 64GB cor preto | https: //i.pravatar.cc | celulares |