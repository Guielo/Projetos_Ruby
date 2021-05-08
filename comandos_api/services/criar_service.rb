module Criar    
    include HTTParty
    #Url base de contato
    base_uri CONFIG['url_padrao']
    #Opcoes do meu service
    format :json
    
end   