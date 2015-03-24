# get '/' do
#   @aunty = params[:aunty]
#   puts @aunty
#   # Look in app/views/index.erb
#   erb :index
# end

# post '/aunty' do
#   speech = params[:user_input]
#   redirect to("/?aunty=#{speech}")
# end

get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :get_cool_url
end

post '/cool_url' do
	byebug
 @options_array = []
 @options_array << params[:option1]
 @options_array << params[:option2]
 @options_array << params[:option3]
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :post_cool_url
end