module Contato
    include HTTParty

    #Url base de contato
    base_uri CONFIG['url_padrao']

    #Opcoes do meu service
    format :json
    headers  Accept: 'application/vnd.tasksmanager.v2',
                     'Content-Type': 'application/json'

end

#Toda vez que eu chamar este modulo a URL PADRAO dele será :
#'https://api-de-tarefas.herokuapp.com'
# E ele terá os headers com as opções :
#Accept: 'application/vnd.tasksmanager.v2',
#'Content-Type': 'application/json
# E será do formato json