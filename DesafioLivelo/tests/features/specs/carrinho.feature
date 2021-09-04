# language: pt

Funcionalidade: Carrinho de compras
    Eu como usuario 
    Quero um carrinho de compras
    Para adicionar itens dentro

Cenario: Adicionar ferramentas ao carrinho 
    Dado que acesso o site da Livelo
    Quando clico na categoria Ferramentas
    E seleciono um produto
    E clico no botão Adicionar ao carrinho
    Entao visualizo a tela Seu carrinho

Cenario: Remover item do carrinho
    Dado Adicionar ferramentas ao carrinho
    Quando clico no botão Remover de algum item do carrinho
    Entao o produto deve ser excluido do carrinho

Cenario: Aumentar quantidade de itens do mesmo produto
    Dado Adicionar ferramentas ao carrinho
    Quando clico no botão + de algum item do carrinho
    Entao o produto deve adicionar mais um na sua quantidade atual