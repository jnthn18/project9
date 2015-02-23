require 'sinatra'
require 'sinatra/content_for'
require 'holidapi'

class MyWebApp < Sinatra::Base
	helpers Sinatra::ContentFor

	get '/' do
		puts params
		@holidays = HolidApi.get(params)
		erb :index
	end
end