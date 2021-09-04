Dado('que acesso o site da Livelo') do
    home.load
end
  
Quando('clico na categoria Ferramentas') do 
    home.campo_ferramentas.click
end
  
Quando('seleciono um produto') do
    home.jogo_de_ferramentas.click
end
  
Quando('clico no botão Adicionar ao carrinho') do 
    home.btn_adicionar_carrinho.click
end
  
Então('visualizo a tela Seu carrinho') do 
    @texto = find('.cart-list__header')
    expect(@texto.text).to eql 'Seu carrinho'
    sleep(4)
end


Dado('Adicionar ferramentas ao carrinho') do
    home.load
    home.campo_ferramentas.click
    home.jogo_de_ferramentas.click
    home.btn_adicionar_carrinho.click
end

Quando('clico no botão Remover de algum item do carrinho') do 
    home.btn_remover.click
end
  
Então('o produto deve ser excluido do carrinho') do
    @texto = find('.h3')
    expect(@texto.text).to eql 'Ainda não existem itens no seu carrinho'
end
  

Quando('clico no botão + de algum item do carrinho') do
    home.btn_adicionar.click
    sleep(2)
end

Então('o produto deve adicionar mais um na sua quantidade atual') do
    expect(home.campo_quantidade.text).to eql '2'
end