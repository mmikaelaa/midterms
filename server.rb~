require 'sinatra'
require './expense'

expenses = []

get '/' do
	str = '<ol>'
	expenses.each do |expense|
		str += "<li>#{expense}</li>"
	end
	str += '</ol>'
	erb :index
end

get '/new' do
	erb :new
end

post '/save' do
	Expense.add params[:item], params[:amount]
	redirect to '/'
end

get '/show/:id' do
	erb :show
end


