require 'sinatra'

class App < Sinatra::Base

    get '/' do
        '<h2>Hello <em>World</em>!</h2>'
    end

    get '/dice' do
        dice_roll = rand(1..6)
        { dice: dice_roll}.to_json
    end
end

run App
