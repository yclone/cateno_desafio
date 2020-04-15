Dado("que eu faca uma request para o CEP {string}") do |cep|
  @response = HTTParty.get('https://api.postmon.com.br/v1/cep/' + cep)
  puts "response code: #{@response.code}"
  #puts response.code, reponse.headers, response.body
end

Quando("realizo uma requisição {int}") do |codResp|
  expect(@response.code).to eq(codResp)
end

Entao("os dados são retornados com sucesso") do
  expect(@response.body).to match_json_schema('CEP')
end

Entao("deve ser retornado {int}") do |retorno|
  expect(@response.code).to eq(retorno)
end