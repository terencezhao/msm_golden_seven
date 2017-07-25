class MoviesController < ApplicationController
    
    def new_form
        render("movies_templates/new_form_template.html.erb")   
    end
    
    def create_row
        new_movie = Movie.new
        new_movie.title = params["title"]
        new_movie.year = params["year"]
        new_movie.duration = params["duration"]
        new_movie.description = params["description"]
        new_movie.image_url = params["image_url"]
        new_movie.save
        @movies_count = Movie.all.count
        redirect_to("/movies")
        # render("pictures_templates/create_row_template.html.erb")    
    end
    
    def index
        @movies = Movie.all
        render("movies_templates/index_template.html.erb")    
    end
    
    def show
        @movie = Movie.find(params["id"])
        render("movies_templates/show_template.html.erb")    
    end

    def edit_form
        @movie = Movie.find(params["id"])
        render("movies_templates/edit_form_template.html.erb")    
    end    
    def update_row
        @movie = Movie.find(params["id"])
        @movie.title = params["title"]
        @movie.year = params["year"]
        @movie.duration = params["duration"]
        @movie.description = params["description"]
        @movie.image_url = params["image_url"]
        @movie.save
        redirect_to("/movies/" + params["id"])
        # render("pictures_templates/update_row_template.html.erb")    
    end
    
    def destroy_row
        Movie.find(params["id"]).destroy
        @movie_count = Movie.all.count
        redirect_to("/movies")
        # render("pictures_templates/destroy_row_template.html.erb")    
    end    

    
end