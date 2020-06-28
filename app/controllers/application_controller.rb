require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        
        #view
        erb :form
    end

    post '/teams' do
        
    end

end
