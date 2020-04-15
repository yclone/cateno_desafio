Dado("que eu acesse a pagina principal") do
    visit 'http://automationpractice.com/index.php?'
  end
  
  Quando("eu criclo em Sing in") do
    find(:link, 'Sign in').click

  end
  
  Quando("digito no campo email do Create Acount o email {string} e clico em Create an account") do |email|
    find(:id, 'email_create').set email     
    find(:id, 'SubmitCreate').click
  end
  
  Então("deve aparecer a mensagem de erro {string}") do |erro|
    expect(page).to have_content erro
  end
  
  Quando("digito no ALREADY REGISTERED no campo email o email {string}") do |email|
    @email = email
    login = Login.new
    login.digita_email(email)
  end
  
  Quando("digito no ALREADY REGISTERED no campo senha {string}") do |senha|
    Login.new.digita_senhal(senha)
  end
  
  Quando("clico no ALREADY REGISTERED no botão Sing In") do
    click_button 'SubmitLogin'
  end
  
  Então("eu devo verificar o login {string}") do |login|
    expect(page).to have_content login
  end
  