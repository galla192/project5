require 'sinatra'
require 'HolidApi'

class MyWebApp < Sinatra::Base
  get '/' do
  	@holidays = HolidApi.get(year: params['year'], month: params['month'], day: params['day'])
    erb :index
  end
end