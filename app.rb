require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # get '/search?' do
  #   "search page"
  #   params['q']
  # end

  # Code your final two routes here:

  get '/goodbye/:name' do
    "Goodbye, #{params[:name]}."
  end

  get '/multiply/:num1/:num2' do
    "The proudct of #{params[:num1]} and #{params[:num2]} is #{params[:num1].to_i*params[:num2].to_i}"
  end

end
