get '/' do
  # render home page
  @users = User.all
  erb :index
end

post '/json' do
  @result = JSON.parse(open("http://www.divvybikes.com/stations/json").read)
end
