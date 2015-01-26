# app.rb
require 'sinatra'

class MyWebApp < Sinatra::Base
	get '/' do
		send_file 'views/'
	end
end