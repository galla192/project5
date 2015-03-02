require 'sinatra'
require 'HolidApi'

class MyWebApp < Sinatra::Base
	get '/' do
		@holidays_born=HolidApi.get(year: 1991, month: 11)
		@holidays_now=HolidApi.get(year: Time.now.year, month: Time.now.month)
		erb :index1
	end
	get '/' do
		erb :display
	end
end