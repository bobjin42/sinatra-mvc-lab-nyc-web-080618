require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    status 200
    erb:user_input
  end

  post '/piglatinize' do
    status 200
    sentence = params[:user_phrase]
    pig_instance = PigLatinizer.new
    pig_instance.piglatinize(sentence)
  end
end
