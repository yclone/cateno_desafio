Quando("eu clico no link {string}") do |link|
     first(:link, link).click
  end
  
  Quando("adiciono o item {string} ao meu carrinho") do |item|
    first(:xpath, item).click
  end

  Quando("adiciono o item {int} ao meu carrinho") do |item|
    if item == 1
      first(:xpath, "//div[@id='center_column']/ul/li/div/div[2]/div[2]/a/span").click
    elsif item == 2
      first(:xpath, "//div[@id='center_column']/ul/li[2]/div/div[2]/div[2]/a/span").click
    end
  end
  
  Quando("clico em Continue shopping") do
    find(:css, "span.continue.btn.btn-default.button.exclusive-medium > span").click
  end

  Quando("clico em Proceed to checkout na etapa {int}") do |etapa|
    if etapa == 1
      find(:css, "a.btn.btn-default.button.button-medium > span").click
    elsif etapa == 2
      find(:xpath, "//div[@id='center_column']/p[2]/a/span").click
    elsif etapa == 3
      find(:xpath, "//div[@id='center_column']/form/p/button/span").click
    elsif etapa == 4
      find(:xpath, "//form[@id='form']/p/button/span").click
    end
  end
  
  Quando("na tela de endereço de entrega eu coloco o comentario {string}") do |comentario|
    find("textarea[name=message]").send_keys comentario    
  end
  
  Quando("Aceito os termos") do
    find(:id, "uniform-cgv").set(true)
  end
  
  Quando("escolho como forma de pagamento {string}") do |string|
      click_on("Pay by bank wire (order processing will be longer)")
  end
  
  Quando("confirmo minha conpra") do
    find(:xpath, "//p[@id='cart_navigation']/button/span").click
    
  end
  
  Então("deve aparecer a mensagem {string}") do |confirm|
    expect(page).to have_content confirm
  end