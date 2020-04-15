# Desafio Cateno

Feito a criação de um modulo WEB e um teste de API

## Versões e padrões

versão do chrome: Versão 81.0.4044.92 (Versão oficial) 64 bits

versão do ChromeDriver:  81.0.4044.69

WEB: padrão de projetos pageObjects com cucumber e Capybara

API: HTTParty com o Cucumber utilizando de padrões e boas práticas

```bash
Capybara, Cucumber, Rspec, HTTParty, JsonSchema
```

## Observações

No código WEB fiz alguns cenários referentes ao login e criação de nova conta com email existente, utilizei padrão de projeto PageObjects. Foi realizado também um teste de compra, inserindo mais de um item no carrinho e validando a compra final, no arquivo compra.rb, eu utilizei diversos tipos para leitura de campos, foi proposital para mostrar diversas maneiras de utilização.

nos testes de API foi realizado a validação dos campos utilizando JsonSchema, com retorno de erro e sucesso.

