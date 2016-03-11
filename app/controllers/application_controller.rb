require './config/environment'
require './app/models/tweet'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    Tweet.new("cam-newton", "shouldve won the superbowl")
    Tweet.new("chris-paul", "i should marry karla")
    Tweet.new("stephen-curry", "i love karla")
    @tweets = Tweet.all
    erb :index 
  end

end