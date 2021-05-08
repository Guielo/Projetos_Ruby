describe 'post' do
    it 'post' do
        @body = {

            "name": "GUILHERME ",
            "last-name": "GARICA",
            "email": "GUIGUISAFADODANET2@gmail.com",
            "age": 25,
            "phone": "21984759575",
            "address": "Rua DOS PIROCAS",
            "state": "JF",
            "city": "CUZAO"
        }.to_json


        #Forma simples do httparty
        #@headers ={"Accept": 'application/vnd.tasksmanager.v2',
         #   'Content-Type': 'application/json'
        #} 
            #  @request =  HTTParty.post('https://api-de-tarefas.herokuapp.com/contacts', body: @body, headers: @headers)
      #   puts @request

     @request = Contato.post('/contacts', body: @body)
     puts @request


    end
end