class MoviesController < ApplicationController

	def index
		@movies = Movie.order(:name)
	end

	  def new
	  	@movie = Movie.new

	  end

	  def create
        create = Movie.new
	  	create.name = params['name']
	  	create.hero = params['hero']
	  	create.heroin = params['heroin']
	  	create.director = params['director']
	  	create.save
	  	redirect_to movies_path
	  end
 
   def update

        movie = Movie.find_by_id(params[:id])
   		movie.name = params['name']
	  	movie.hero = params['hero']
	  	movie.heroin = params['heroin']
	  	movie.director = params['director']
	  	movie.save
	  	redirect_to movies_path
   end

   def show

   	@movie = Movie.find_by_id(params[:id])

   end

   def destroy
   	@movies = Movie.delete(params[:id])
   	redirect_to movies_path
   end
end 