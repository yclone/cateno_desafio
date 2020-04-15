#language:pt
Funcionalidade: efetuar uma compra

Contexto: acesso a pagina principal
    Dado que eu acesse a pagina principal
    Quando eu criclo em Sing in
    E digito no ALREADY REGISTERED no campo email o email 'fbsirjntojmssqtmgu@ttirv.com'
    E digito no ALREADY REGISTERED no campo senha 'santos12'
    E clico no ALREADY REGISTERED no botão Sing In

Cenario: criar usuario com email existente

    Quando eu clico no link 'Women'
    E adiciono o item 1 ao meu carrinho
    E clico em Continue shopping
    E adiciono o item 2 ao meu carrinho
    E clico em Proceed to checkout na etapa 1
    E clico em Proceed to checkout na etapa 2
    E na tela de endereço de entrega eu coloco o comentario 'teste 123' 
    E clico em Proceed to checkout na etapa 3
    E Aceito os termos
    E clico em Proceed to checkout na etapa 4
    E escolho como forma de pagamento 'cartao'
    E confirmo minha conpra
    Então deve aparecer a mensagem 'Your order on My Store is complete'
