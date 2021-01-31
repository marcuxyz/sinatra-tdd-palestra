require 'sinatra'
require 'erb'


class Application < Sinatra::Base
  get '/' do
    erb :form
  end

  get '/usuarios' do
    @users = [{name: 'Marcus'}, {name: 'Goufix'}, {name: 'Tomkiel'}, {name: 'Lucas'}]
    erb :users
  end

  post '/resultado' do
    "Olá #{params[:name]} seus dados foram coletados com sucesso!"
  end
end
