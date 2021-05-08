describe 'fazer requisicao' do
    it 'delete' do
        # Modo complicado HTTPart.delete('https://api-de-tarefas.herokuapp.com/contacts/2580')
        
        #modulo simples
        Contato.delete('/contacts/2580')
    end

  
end