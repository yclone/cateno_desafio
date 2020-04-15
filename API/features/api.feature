#language:pt
Funcionalidade: validação de CEP por httParty

@api
Cenario: validação da cahamada da API
    Dado que eu faca uma request para o CEP '04384-032'
    Quando realizo uma requisição 200
    Entao os dados são retornados com sucesso

Cenario: validação da cahamada da API
    Dado que eu faca uma request para o CEP '04384-030'
    Quando realizo uma requisição 404
    Entao deve ser retornado 404