class TheatersController < ApplicationController

	def index#this is called method
		@theaters = Theater.order (:name)
	end

	def new
	  	@theater = Theater.new

	 end

	def create
	  	create = Theater.new
	  	create.name = params['name']
	  	create.city = params['city']
	  	create.state = params['state']
	  	create.country = params['country']
	  	create.save
	  	redirect_to theaters_path
	 end

	def show
    	@theater = Theater.find_by_id(params[:id])   
 	end
 
   def update
   	
   		theater = Theater.find_by_id(params[:id])
   		theater.name = params['name']
	  	theater.city = params['city']
	  	theater.state = params['state']
	  	theater.country = params['country']
	  	theater.save
	  	redirect_to theaters_path
   end


   	def destroy
   		@theaters = Theater.delete(params[:id])
   	 	redirect_to theaters_path
   	end 
end 