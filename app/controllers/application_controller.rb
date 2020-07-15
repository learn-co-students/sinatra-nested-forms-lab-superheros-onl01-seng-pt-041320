require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :super_hero
    end

    post '/teams' do
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]

        @team = Team.new(@team_name, @team_motto)

        params[:team][:name].each do |member|
            Member.new(member[:name], member[:power], member[:bio])
        end

        erb :team
    end


end
