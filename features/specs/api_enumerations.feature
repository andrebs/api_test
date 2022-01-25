#language: pt

Funcionalidade: Aprendendo o verbo GET

Como usuário
Quero acessar a api enumerations 
Para que nos retorne uma série de informações sobre nossos produtos e estabelecimentos

Contexto: Acessar funcionalidade Pra você
    Dado realizo chamada na api enumerations

@executa_get
Cenario: Valida se retorna contrato com sucesso
    Entao devo ver que api retorna status code 200

Cenario: Valida se retorna dados em typeOfEstablishment
    Então devo ver que api retorna key, name e label com sucesso
