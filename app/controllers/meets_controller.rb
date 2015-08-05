class MeetsController < ApplicationController
	
	def index

		params = { category: '34',
		      state: 'California',
		      country: 'USA',
		      status: 'upcoming',
		      format: 'json',
		      page: '100'}

		meetup_api = MeetupApi.new
	    @results = meetup_api.open_events(params)
	    @events = @results['results']

	end

	def show

		id = params[:id]
		params = { id: id }
		meetup_api = MeetupApi.new
	    @results = meetup_api.open_events(params)
	    @event = @results['results']

	end

end
