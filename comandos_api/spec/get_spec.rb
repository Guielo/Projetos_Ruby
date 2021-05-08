describe 'Fazer uma requisição' do
    it'get' do
# Se não usar o modulo se chamaria o HTTPARTY com o get assim :
#@primeira_opcao = HTTParty.get('https://api-de-tarefas.herokuapp.com/contacts/3263') #(Pode por qualquer ID do cadastro')
#puts @primeira_opcao

@melhor_opcao = Contato.get('/contacts/3262')
    puts @melhor_opcao
    end
end