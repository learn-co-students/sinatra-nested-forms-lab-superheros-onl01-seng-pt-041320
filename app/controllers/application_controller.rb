require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
       erb :super_hero 
    end

    post '/teams' do
        @squadname = params[:team][:name]
        @squadmotto = params[:team][:motto]
        #binding.pry



       erb :team
    end

end
