# app.rb
require 'sinatra'

class MyWebApp < Sinatra::Base
	get '/' do
		"Oh hey I'm starting to use Sinatra. Seems pretty useful so far."
	end
end