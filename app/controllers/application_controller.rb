require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

     get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])
      Heroes.new(params[:team][:heroes][0])
      Heroes.new(params[:team][:heroes][1])
      Heroes.new(params[:team][:heroes][2])
      @heroes = Heroes.all


      erb :team
    end
end
