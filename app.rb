require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
  get '/' do
  	if params['year'] != nil && params['year'] != ""
  		if params['month'] != nil && params['month'] != ""
  			if params['day'] != nil && params['day'] != ""
  				@holidays = HolidApi.get(year: params['year'], month: params['month'], day: params['day'])
  			else
  				@holidays = HolidApi.get(year: params['year'], month: params['month'])
  			end
  		else
  			@holidays = HolidApi.get(year: params['year'])
  		end
    else
    	@holidays = HolidApi.get(year: (Date.today.strftime('%Y')).to_i)
    end
    erb :index1
  end
end