require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do

        # binding.pry

        @superheroes = []

        @team = params["team"]

        params["team"]["superhero"].each do |details|
            @superheroes << details
        end

        # binding.pry

        erb :team
    end

end
