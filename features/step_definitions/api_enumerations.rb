Dado('realizo chamada na api enumerations') do
    @get_enumerations = HTTParty.get (@uri + '/api-web/comum/enumerations/VRPAT')
    @body = @get_enumerations.parsed_response
end

Entao('devo ver que api retorna status code {int}') do |int|
    expect(@get_enumerations.code).to eq 200
end

Então('devo ver que api retorna key, name e label com sucesso') do
    @length = @body['typeOfEstablishment'].length - 1
    @index = Random.rand(0..@length)
    expect(@body['typeOfEstablishment'][@index]['key']).to be_a(String)
    expect(@body['typeOfEstablishment'][@index]['name']).to be_a(String)
    expect(@body['typeOfEstablishment'][@index]['label']).to be_a(String)
    puts 'Chave do estabelecimento ' + @body['typeOfEstablishment'][@index]['key']
    puts 'Nome do estabelecimento ' + @body['typeOfEstablishment'][@index]['name']
    puts 'Etiqueta do estabelecimento ' + @body['typeOfEstablishment'][@index]['label']
end