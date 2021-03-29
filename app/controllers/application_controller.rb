require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :super_hero
    end

    post('/teams') do
        @t = params['team']
        h = params['team']['members']
        @h1 = h[0]
        @h2 = h[1]
        @h3 = h[2]
        erb :team
end
end
