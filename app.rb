require 'sinatra'
require 'sinatra/content_for'
require 'holidapi'

class MyWebApp < Sinatra::Base
	helpers Sinatra::ContentFor
	time = Time.new

	get '/' do
		@holidays = HolidApi.get(country: 'us', year: time.year, month: time.month)
		@holidays_bday = HolidApi.get(country: 'us', year: 1992, month: 1)
		erb :index
	end
end