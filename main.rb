require "sinatra"

helpers do 
  def welcome(name)
    "Welcome to my site, #{name}"
  end
end

before do 
  @user_name = "Andrew"
end
  
get "/testing" do
  @user_name
  erb :welcome, :layout => :boilerplate
end