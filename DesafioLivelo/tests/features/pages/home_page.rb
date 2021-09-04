class PaginaInicial < SitePrism::Page

    set_url '/'
    element :campo_ferramentas, "a[data-gtm-event-label='ferramentas']"
    element :jogo_de_ferramentas, '#CC-product-list-name-LVL183282-06'
    element :btn_adicionar_carrinho, '#cc-prodDetails-addToCart'
    element :btn_adicionar, :xpath, "//*[@id='cc-cart-item-0']/div[2]/div/span[3]"
    element :btn_remover, :xpath, "//*[@id='cc-cart-item-0']/div[2]/a"
    element :campo_quantidade, :xpath, "//*[@id='cc-cart-item-0']/div[2]/div/span[2]"
end