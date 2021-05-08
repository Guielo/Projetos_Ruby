describe 'usando' do
      it 'token' do
        #Gera um email aleatório
        @email = Faker::Internet.email 

        @body = {
            user: {
                email:@email,
                password:'123456',
                password_confirmation:'123456'
            }
        }.to_json   

        @header ={
            Accept: 'application/vnd.taskmanager.v2',
            'Content-Type': 'application/json'
        } 
       
        @criar = Criar.post('/users', body: @body, headers: @header)
        puts @criar.body
        puts @criar.parsed_response['data']['attributes']['auth-token']

        @body_one ={
              session: {
                  email: @email,
                  password: 123456
              }     
            }.to_json


        @header_one = {
            Accept: 'application/vnd.taskmanager.v2',
            'Content-Type': 'application/json',
            #para token aleatório
            Authorization: "#{@criar.parsed_response['data']['attributes']['auth-token']}"
            
            #Caso queira fornecer um token ÚNICO QUE VOCê SAIBA QUE SERÁ ÚNICO, PODERÁ USAR ESTE COMANDO
            # Authorization "GUIMENLO243249I49MSFNI_56"
        }
          



        @login = Criar.post('/sessions', body: @body_one, headers: @header_one)
        puts @login.body



    end
end    