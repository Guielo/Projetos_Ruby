describe 'fazer requisicao' do
    context 'para alterar dados com' do
      it 'put' do
          @body_put = {
              "id": 2609,
            "name": "GUILHERME28 ",
            "last-name": "GARICAdoido",
            "email": "GUIGUISAFADODANET28@gmail.com",
            "age": 25,
            "phone": "21984759575",
            "address": "Rua DOS PIROCAS",
            "state": "JF",
            "city": "CUZAO"

          }.to_json
         @requisicao_put = Contato.put('/contacts/2609', body: @body_put)
         puts @requisicao_put
        end

       it 'patch' do
           @body_patch = {
               "id": 2610,
            "name": "GUILHERME 10",
            "last-name": "GARICApiroca",
            "email": "GUIGUISAFADODANET10@gmail.com",  
        }.to_json
         @requisicao_patch = Contato.patch('/contacts/2610', body: @body_patch)
         puts @requisicao_patch
      end
  end
end