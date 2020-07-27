require 'sinatra/base'

class BookmarkManager < Sinatra::Base

  get '/test' do
    "hello world"
  end

  get '/' do
    erb :index
  end

end
