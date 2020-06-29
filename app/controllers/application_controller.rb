require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        
        #view
        erb :super_hero
    end

    post '/teams' do
        #binding.pry
        team_name = params[:team][:name]
        team_motto = params[:team][:motto]
        @team = Team.new(team_name, team_motto)

        params[:team][:members].each do |details|
            Hero.new(details[:name], details[:power], details[:bio])
        end
        @heroes = Hero.all

        #view
        erb :team
    end

end
