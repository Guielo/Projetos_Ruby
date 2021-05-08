describe 'Cadastrar' do
        def login(field_email, field_password)
             @body = {
                 session:{
                     email: field_email,
                     password: field_password
                 }
                }.to_json
                @login = Login.post('/sessions', body: @body)
                puts @login.body
            end
            
    context 'tarefas' do
        before { login('guilherme.5545@gmail.com', '123456') }

        it 'com sucesso' do
            @header = {
                'Content-Type': 'application/json',
                Accept: 'application/vnd.tasksmanager.v2',
                Authorization: @login.parsed_response
            }
            
        @body = {
            task: {
                title: 'Tarefa Criada',
                description: 'Descrição da tarefa Tarefa Criada com Sucesso',
                deadline: '2021-04-22 03:00:00',
                done: true 
            }
        }.to_json
           
       @tarefas = Cadastrar.post('/tasks', body: @body, headers: @header)
       puts @tarefas
        end
    end
end    