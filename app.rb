require 'sinatra'
require 'sinatra/activerecord'
require './lib/shipsahoy'
require './app/models/user'
require './config/environments'

module ShipsAhoy
    class App < Sinatra::Base
        register Sinatra::ActiveRecordExtension

        get '/' do
            erb :index
        end

        post '/submit' do
            @user = User.new(params[:user])
            if @user.save
                redirect '/users'
            else
                "Sorry, there was an error!"
            end
        end
    end
end

