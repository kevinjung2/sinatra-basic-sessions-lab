require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, 'cd21b83fb6baff99c921210f9456a46d7fdfca49e277c891d6f0c3229945934a143c0f86b414806236b892d3ac543ab03a6715ebd347f0dc4aa68a1bbe4219e1'
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @item = session[:item]
    erb :show
  end
end
