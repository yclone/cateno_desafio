#language:pt
Funcionalidade: testes referentes ao login

Contexto: acesso a pagina
    Dado que eu acesse a pagina principal

Cenario: criar usuario com email existente

    Quando eu criclo em Sing in
    E digito no campo email do Create Acount o email 'teste@teste.com' e clico em Create an account
    Então deve aparecer a mensagem de erro 'An account using this email address has already been registered. Please enter a valid password or request a new one.'

@logout
Cenario: logar no sistema com usuario e senha validos

    Quando eu criclo em Sing in
    E digito no ALREADY REGISTERED no campo email o email 'fbsirjntojmssqtmgu@ttirv.com'
    E digito no ALREADY REGISTERED no campo senha 'santos12'
    E clico no ALREADY REGISTERED no botão Sing In
    Então eu devo verificar o login 'gesdsfsd SANTOSsdfdsfsd'


Esquema do Cenario: Tentativa de login

    Quando eu criclo em Sing in
    E digito no ALREADY REGISTERED no campo email o email '<email>'
    E digito no ALREADY REGISTERED no campo senha '<senha>'
    E clico no ALREADY REGISTERED no botão Sing In
    Então eu devo verificar o login '<resposta>'

Exemplos:
    |email                          |senha  |resposta               |
    |234223424                      |       |Invalid email address. |
    |fbsirjntojmssqtmgu@ttirv.com   |123    |Invalid password.      |