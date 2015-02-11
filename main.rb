require "sinatra"

helpers do 
  def welcome(name)
    "<h1>Welcome to my site, #{name}.</h1>"
  end
end

before do 
  @user_name = "Andrew"
end
  
get "/testing" do
  @user_name
  erb :welcome, :layout => :boilerplate
end